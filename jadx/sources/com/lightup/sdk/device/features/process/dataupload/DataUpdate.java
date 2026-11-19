package com.lightup.sdk.device.features.process.dataupload;

import com.lightup.sdk.device.devicemanagement.BLEDevice;
import com.lightup.sdk.device.enums.DeviceState;
import com.lightup.sdk.device.messages.MessageInfo;
import com.lightup.sdk.device.model.device.BLEDeviceStateListener;
import com.lightup.sdk.device.model.device.DeviceMessage;
import com.lightup.sdk.device.utils.communication.ByteUtils;
import com.lightup.sdk.device.utils.communication.Scheduling;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
class DataUpdate extends Thread {
    private static final boolean DEBUG = false;
    private static final String TAG = "DataUpdate";
    private final int STEP_TIMEOUT;
    private byte[] ackPayload;
    private int currentPageId;
    private final DataUpdateProcessListener dataUpdateProcessListener;
    private final double numberOfPages;
    private final int pageSize;
    private final byte[] payload;
    private State state = State.NOT_STARTED;
    private final Condition stateChange;
    private final Lock stateLock;
    private final MessageInfo updateAckMessageInfo;
    private final MessageInfo updateDataMessageInfo;
    private final MessageInfo updateStatusMessageInfo;

    /* JADX INFO: renamed from: com.lightup.sdk.device.features.process.dataupload.DataUpdate$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f35989a;

        static {
            int[] iArr = new int[State.values().length];
            f35989a = iArr;
            try {
                iArr[State.TRANSFERRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f35989a[State.VALIDATING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f35989a[State.KO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f35989a[State.DONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static class Ack {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f35990a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f35991b;

        public Ack(byte[] bArr, int i2) throws BadAckException {
            if (bArr == null || bArr.length < 7) {
                throw new BadAckException();
            }
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 1, 3);
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(2);
            byteBufferAllocate.put(bArrCopyOfRange, 0, 2);
            byteBufferAllocate.flip();
            this.f35990a = byteBufferAllocate.getShort();
            long jB = ByteUtils.b(Arrays.copyOfRange(bArr, 3, 7));
            this.f35991b = jB - ((long) Scheduling.a()) > ((long) i2) ? Scheduling.a() + i2 : (int) jB;
        }
    }

    public static class BadAckException extends Exception {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Errors {
        private static final /* synthetic */ Errors[] $VALUES;
        public static final Errors ERROR_CODE_BAD_ACK;
        public static final Errors ERROR_CODE_INTERRUPTED;
        public static final Errors ERROR_CODE_KO;
        public static final Errors ERROR_CODE_LINK_BROKEN;
        public static final Errors ERROR_CODE_TIMEOUT;

        static {
            Errors errors = new Errors("ERROR_CODE_INTERRUPTED", 0);
            ERROR_CODE_INTERRUPTED = errors;
            Errors errors2 = new Errors("ERROR_CODE_KO", 1);
            ERROR_CODE_KO = errors2;
            Errors errors3 = new Errors("ERROR_CODE_TIMEOUT", 2);
            ERROR_CODE_TIMEOUT = errors3;
            Errors errors4 = new Errors("ERROR_CODE_LINK_BROKEN", 3);
            ERROR_CODE_LINK_BROKEN = errors4;
            Errors errors5 = new Errors("ERROR_CODE_BAD_ACK", 4);
            ERROR_CODE_BAD_ACK = errors5;
            $VALUES = new Errors[]{errors, errors2, errors3, errors4, errors5};
        }

        public static Errors valueOf(String str) {
            return (Errors) Enum.valueOf(Errors.class, str);
        }

        public static Errors[] values() {
            return (Errors[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class State {
        private static final /* synthetic */ State[] $VALUES;
        public static final State DONE;
        public static final State KO;
        public static final State LINK_BROKEN;
        public static final State NOT_STARTED;
        public static final State TRANSFERRING;
        public static final State VALIDATING;

        static {
            State state = new State("NOT_STARTED", 0);
            NOT_STARTED = state;
            State state2 = new State("TRANSFERRING", 1);
            TRANSFERRING = state2;
            State state3 = new State("LINK_BROKEN", 2);
            LINK_BROKEN = state3;
            State state4 = new State("KO", 3);
            KO = state4;
            State state5 = new State("VALIDATING", 4);
            VALIDATING = state5;
            State state6 = new State("DONE", 5);
            DONE = state6;
            $VALUES = new State[]{state, state2, state3, state4, state5, state6};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }
    }

    public DataUpdate(MessageInfo messageInfo, MessageInfo messageInfo2, MessageInfo messageInfo3, byte[] bArr, int i2, DataUpdateProcessListener dataUpdateProcessListener, int i3) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.stateLock = reentrantLock;
        this.stateChange = reentrantLock.newCondition();
        this.currentPageId = -1;
        this.payload = bArr;
        this.pageSize = i2;
        this.updateDataMessageInfo = messageInfo;
        this.updateAckMessageInfo = messageInfo2;
        this.updateStatusMessageInfo = messageInfo3;
        this.dataUpdateProcessListener = dataUpdateProcessListener;
        this.STEP_TIMEOUT = i3;
        this.numberOfPages = Math.ceil(bArr.length / i2);
    }

    private void completed() {
        this.dataUpdateProcessListener.onCompleted();
    }

    private void error(Errors errors) {
        Objects.toString(errors);
        this.dataUpdateProcessListener.onError();
    }

    private void handleAck(Ack ack) throws BadAckException {
        int i2 = ack.f35990a;
        if (i2 > this.currentPageId) {
            this.dataUpdateProcessListener.onProgress(((double) i2) / this.numberOfPages);
        }
        int i3 = ack.f35990a;
        this.currentPageId = i3;
        if (i3 > this.numberOfPages - 1.0d) {
            throw new BadAckException();
        }
        byte[] bArr = this.payload;
        int i4 = this.pageSize;
        int i5 = i3 * i4;
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i5, Math.min(i4 + i5, bArr.length));
        ByteUtils.ByteBuilder byteBuilder = new ByteUtils.ByteBuilder(this.pageSize + 3);
        byteBuilder.a(this.updateDataMessageInfo.b());
        byteBuilder.c(this.currentPageId, 2);
        byteBuilder.b(bArrCopyOfRange);
        this.dataUpdateProcessListener.c(new DeviceMessage(byteBuilder.f36034a));
    }

    private void putStatusDone() {
        putUpdateStatus((byte) 2);
    }

    private void putStatusKo() {
        putUpdateStatus((byte) 1);
    }

    private void putStatusValidating() {
        putUpdateStatus((byte) 3);
    }

    private void putUpdateStatus(byte b2) {
        byte[] bArr = new byte[this.updateStatusMessageInfo.d()];
        bArr[0] = this.updateStatusMessageInfo.b();
        bArr[1] = b2;
        this.dataUpdateProcessListener.c(new DeviceMessage(bArr));
    }

    private void startDataTransfer(byte[] bArr) {
        this.dataUpdateProcessListener.c(new DeviceMessage(bArr));
        this.currentPageId = -1;
    }

    public void handleBLEDeviceStateChange(BLEDeviceStateListener.StateChangeType stateChangeType, BLEDevice.DeviceStateBundle deviceStateBundle) {
        if (stateChangeType == BLEDeviceStateListener.StateChangeType.BLE_DEVICE_STATE) {
            this.stateLock.lock();
            if (deviceStateBundle.bleDeviceState == DeviceState.REGISTERING && this.state != State.DONE) {
                this.state = State.LINK_BROKEN;
                this.stateChange.signal();
            }
            this.stateLock.unlock();
        }
    }

    public void handleNewMessage(byte b2, byte[] bArr) {
        State state;
        if (b2 == this.updateAckMessageInfo.b()) {
            this.stateLock.lock();
            byte b3 = bArr[0];
            if (b3 == 0) {
                if (this.state == State.TRANSFERRING) {
                    this.ackPayload = bArr;
                    this.stateChange.signal();
                }
            } else if (b3 == 1) {
                State state2 = this.state;
                if (state2 == State.TRANSFERRING || state2 == State.VALIDATING || state2 == State.KO) {
                    this.state = State.KO;
                    this.ackPayload = bArr;
                    this.stateChange.signal();
                }
            } else if (b3 == 3) {
                State state3 = this.state;
                if (state3 == State.TRANSFERRING || state3 == State.VALIDATING) {
                    this.state = State.VALIDATING;
                    this.ackPayload = bArr;
                    this.stateChange.signal();
                }
            } else if (b3 == 2 && ((state = this.state) == State.TRANSFERRING || state == State.VALIDATING || state == State.DONE)) {
                this.state = State.DONE;
                this.ackPayload = bArr;
                this.stateChange.signal();
            }
            this.stateLock.unlock();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Ack ack;
        this.stateLock.lock();
        startDataTransfer(this.dataUpdateProcessListener.a());
        int iA = Scheduling.a() + this.STEP_TIMEOUT;
        this.state = State.TRANSFERRING;
        boolean z = false;
        while (!Thread.currentThread().isInterrupted()) {
            try {
                try {
                    if (this.stateChange.await(iA - Scheduling.a(), TimeUnit.MILLISECONDS)) {
                        State state = this.state;
                        if (state == State.LINK_BROKEN) {
                            error(Errors.ERROR_CODE_LINK_BROKEN);
                        } else {
                            try {
                                int i2 = AnonymousClass1.f35989a[state.ordinal()];
                                if (i2 == 1) {
                                    ack = new Ack(this.ackPayload, this.STEP_TIMEOUT);
                                    handleAck(ack);
                                } else if (i2 == 2) {
                                    ack = new Ack(this.ackPayload, 120000);
                                    putStatusValidating();
                                } else if (i2 == 3) {
                                    ack = new Ack(this.ackPayload, this.STEP_TIMEOUT);
                                    putStatusKo();
                                } else {
                                    if (i2 != 4) {
                                        throw new IllegalStateException("dis should not happen");
                                    }
                                    ack = new Ack(this.ackPayload, this.STEP_TIMEOUT);
                                    putStatusDone();
                                    if (!z) {
                                        this.dataUpdateProcessListener.b();
                                        z = true;
                                    }
                                }
                                iA = ack.f35991b;
                            } catch (BadAckException unused) {
                                error(Errors.ERROR_CODE_BAD_ACK);
                            }
                        }
                    } else {
                        int i3 = AnonymousClass1.f35989a[this.state.ordinal()];
                        if (i3 == 3) {
                            error(Errors.ERROR_CODE_KO);
                        } else if (i3 != 4) {
                            error(Errors.ERROR_CODE_TIMEOUT);
                        } else {
                            completed();
                        }
                    }
                } catch (InterruptedException unused2) {
                    error(Errors.ERROR_CODE_INTERRUPTED);
                    Thread.currentThread().interrupt();
                }
                this.stateLock.unlock();
            } catch (Throwable th) {
                this.stateLock.unlock();
                throw th;
            }
        }
        error(Errors.ERROR_CODE_INTERRUPTED);
        this.stateLock.unlock();
    }
}
