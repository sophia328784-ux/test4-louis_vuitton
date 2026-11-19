package com.lightup.sdk.device.features.process.dataupload;

import com.lightup.sdk.device.devicemanagement.BLEDevice;
import com.lightup.sdk.device.devicemanagement.BLEDevicesManager;
import com.lightup.sdk.device.enums.DeviceState;
import com.lightup.sdk.device.features.process.ProcessFeature;
import com.lightup.sdk.device.messages.MessageInfo;
import com.lightup.sdk.device.model.device.BLEDeviceStateListener;
import com.lightup.sdk.device.model.device.DeviceMessage;
import com.lightup.sdk.device.utils.communication.ByteUtils;
import com.lightup.sdk.device.utils.firmware.BLEDeviceFirmwareBundle;
import com.lightup.sdk.device.utils.firmware.UnsupportedDeviceException;
import defpackage.md;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.CRC32;
import org.squirrelframework.foundation.fsm.StateMachine;
import org.squirrelframework.foundation.fsm.StateMachineBuilderFactory;

/* JADX INFO: loaded from: classes2.dex */
public class FirmwareUpdate extends ProcessFeature {
    protected static final boolean DEBUG = false;
    private static final String TAG = "FirmwareUpdate";
    private final BLEDevice bleDevice;
    private final BLEDeviceFirmwareBundle bleDeviceFirmwareBundle;
    private DataUpdate currentDataUpdate;
    private int currentStep;
    private final DataUpdateProcessListener dataUpdateProcessListener;
    private final BlockingQueue<Event> eventQueue;
    private final FirmwareUpdateListener firmwareUpdateListener;
    private final FirmwareUpdateStateMachine fsm;
    private final FirmwareUpdateStateMachine.FsmContext fsmContext;
    private int totalNumberOfSteps;
    private TransferType transferType;

    /* JADX INFO: renamed from: com.lightup.sdk.device.features.process.dataupload.FirmwareUpdate$2, reason: invalid class name */
    public class AnonymousClass2 extends FirmwareUpdateStateMachine.FsmContext {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ BLEDevicesManager f35994h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ BLEDevice f35995i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ int f35996j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final /* synthetic */ int f35997k;

        public AnonymousClass2(BLEDevicesManager bLEDevicesManager, BLEDevice bLEDevice, int i2, int i3) {
            this.f35994h = bLEDevicesManager;
            this.f35995i = bLEDevice;
            this.f35996j = i2;
            this.f35997k = i3;
            this.f36007a = 0;
            this.f36008b = 0;
            this.f36009c = false;
            this.d = false;
            this.f36011f = new AtomicBoolean(false);
        }
    }

    /* JADX INFO: renamed from: com.lightup.sdk.device.features.process.dataupload.FirmwareUpdate$9, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass9 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f35999a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f36000b;

        static {
            int[] iArr = new int[FsmStatus.values().length];
            f36000b = iArr;
            try {
                iArr[FsmStatus.DONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f36000b[FsmStatus.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[TransferType.values().length];
            f35999a = iArr2;
            try {
                iArr2[TransferType.FIRMWARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f35999a[TransferType.BOOTLOADER_UPDATER.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f35999a[TransferType.BOOTLOADER.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class FsmStatus {
        private static final /* synthetic */ FsmStatus[] $VALUES;
        public static final FsmStatus DONE;
        public static final FsmStatus ERROR;

        static {
            FsmStatus fsmStatus = new FsmStatus("DONE", 0);
            DONE = fsmStatus;
            FsmStatus fsmStatus2 = new FsmStatus("ERROR", 1);
            ERROR = fsmStatus2;
            $VALUES = new FsmStatus[]{fsmStatus, fsmStatus2};
        }

        public static FsmStatus valueOf(String str) {
            return (FsmStatus) Enum.valueOf(FsmStatus.class, str);
        }

        public static FsmStatus[] values() {
            return (FsmStatus[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class TransferType {
        private static final /* synthetic */ TransferType[] $VALUES;
        public static final TransferType BOOTLOADER;
        public static final TransferType BOOTLOADER_UPDATER;
        public static final TransferType FIRMWARE;

        static {
            TransferType transferType = new TransferType("FIRMWARE", 0);
            FIRMWARE = transferType;
            TransferType transferType2 = new TransferType("BOOTLOADER", 1);
            BOOTLOADER = transferType2;
            TransferType transferType3 = new TransferType("BOOTLOADER_UPDATER", 2);
            BOOTLOADER_UPDATER = transferType3;
            $VALUES = new TransferType[]{transferType, transferType2, transferType3};
        }

        public static TransferType valueOf(String str) {
            return (TransferType) Enum.valueOf(TransferType.class, str);
        }

        public static TransferType[] values() {
            return (TransferType[]) $VALUES.clone();
        }
    }

    public FirmwareUpdate(BLEDevicesManager<? extends BLEDevice> bLEDevicesManager, BLEDevice bLEDevice, FirmwareUpdateListener firmwareUpdateListener, final int i2, int i3) throws UnsupportedDeviceException {
        super(bLEDevice);
        this.eventQueue = new LinkedBlockingQueue();
        this.totalNumberOfSteps = 0;
        this.currentStep = 0;
        this.bleDevice = bLEDevice;
        this.firmwareUpdateListener = firmwareUpdateListener;
        this.bleDeviceFirmwareBundle = bLEDevicesManager.getFirmwareManager(bLEDevice.getDeviceId()).c(bLEDevice.getDeviceId());
        registerForNewMessages();
        registerForBLEDeviceStateChange();
        this.fsm = (FirmwareUpdateStateMachine) StateMachineBuilderFactory.create(FirmwareUpdateStateMachine.class, FirmwareUpdateStateMachine.FsmState.class, FirmwareUpdateStateMachine.FsmEvent.class, FirmwareUpdateStateMachine.FsmContext.class).newStateMachine(FirmwareUpdateStateMachine.FsmState.START);
        this.dataUpdateProcessListener = new DataUpdateProcessListener() { // from class: com.lightup.sdk.device.features.process.dataupload.FirmwareUpdate.1
            @Override // com.lightup.sdk.device.features.process.dataupload.DataUpdateProcessListener
            public final byte[] a() {
                byte[] bArr;
                int i4;
                int[] iArr = AnonymousClass9.f35999a;
                FirmwareUpdate firmwareUpdate = FirmwareUpdate.this;
                int i5 = iArr[firmwareUpdate.transferType.ordinal()];
                if (i5 == 1) {
                    bArr = firmwareUpdate.bleDeviceFirmwareBundle.f36040b;
                    i4 = firmwareUpdate.bleDeviceFirmwareBundle.f36041c;
                } else if (i5 == 2) {
                    bArr = firmwareUpdate.bleDeviceFirmwareBundle.f36047k;
                    i4 = firmwareUpdate.bleDeviceFirmwareBundle.l;
                } else {
                    if (i5 != 3) {
                        md.k("this should not happen");
                        return null;
                    }
                    bArr = firmwareUpdate.bleDeviceFirmwareBundle.f36044h;
                    i4 = firmwareUpdate.bleDeviceFirmwareBundle.f36045i;
                }
                int length = bArr.length;
                CRC32 crc32 = new CRC32();
                crc32.update(bArr, 0, length);
                int value = (int) crc32.getValue();
                MessageInfo messageInfo = MessageInfo.SMARTPHONE_TO_DEVICE_PROGRAM_DOWNLOAD_START;
                ByteUtils.ByteBuilder byteBuilder = new ByteUtils.ByteBuilder(messageInfo.d());
                byteBuilder.c(messageInfo.b(), 1);
                byteBuilder.c(length, 4);
                byteBuilder.c(i2, 2);
                byteBuilder.c(value, 4);
                byteBuilder.c(i4, 4);
                return byteBuilder.f36034a;
            }

            @Override // com.lightup.sdk.device.features.process.dataupload.DataUpdateProcessListener
            public final void b() {
                FirmwareUpdate.this.registerEvent(FirmwareUpdateStateMachine.FsmEvent.TRANSFER_SUCCESS);
            }

            @Override // com.lightup.sdk.device.features.process.dataupload.DataUpdateProcessListener
            public final void c(DeviceMessage deviceMessage) {
                FirmwareUpdate.this.putMessage(deviceMessage);
            }

            @Override // com.lightup.sdk.device.features.process.dataupload.DataUpdateListener
            public final void onCompleted() {
            }

            @Override // com.lightup.sdk.device.features.process.dataupload.DataUpdateListener
            public final void onError() {
                FirmwareUpdate.this.registerEvent(FirmwareUpdateStateMachine.FsmEvent.TRANSFER_FAILURE);
            }

            @Override // com.lightup.sdk.device.features.process.dataupload.DataUpdateListener
            public final void onProgress(double d) {
                FirmwareUpdate.this.progress(d);
            }
        };
        this.fsmContext = new AnonymousClass2(bLEDevicesManager, bLEDevice, i2, i3);
    }

    private void done() {
        String str = this.bleDeviceFirmwareBundle.f36039a;
        new Thread(new Runnable() { // from class: com.lightup.sdk.device.features.process.dataupload.FirmwareUpdate.6
            @Override // java.lang.Runnable
            public void run() {
                FirmwareUpdate.this.firmwareUpdateListener.onCompleted();
            }
        }).start();
    }

    private void error(final FirmwareUpdateError firmwareUpdateError) {
        this.bleDevice.getShortId();
        Objects.toString(firmwareUpdateError);
        new Thread(new Runnable() { // from class: com.lightup.sdk.device.features.process.dataupload.FirmwareUpdate.7
            @Override // java.lang.Runnable
            public void run() {
                FirmwareUpdate.this.firmwareUpdateListener.onError(firmwareUpdateError);
            }
        }).start();
    }

    private void fireFsmEvent(FirmwareUpdateStateMachine.FsmEvent fsmEvent) {
        if (this.fsm.isTerminated() || this.fsm.isError()) {
            this.bleDevice.getShortId();
            Objects.toString(fsmEvent);
            Objects.toString(this.fsm.getCurrentState());
            Objects.toString(this.fsmContext);
            return;
        }
        if (this.fsm.canAccept(fsmEvent)) {
            try {
                this.fsm.fire(fsmEvent, this.fsmContext);
            } catch (IllegalStateException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void linkBackUp() {
        new Thread(new Runnable() { // from class: com.lightup.sdk.device.features.process.dataupload.FirmwareUpdate.5
            @Override // java.lang.Runnable
            public void run() {
                FirmwareUpdate.this.firmwareUpdateListener.onLinkBackUp();
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void linkBroken() {
        new Thread(new Runnable() { // from class: com.lightup.sdk.device.features.process.dataupload.FirmwareUpdate.4
            @Override // java.lang.Runnable
            public void run() {
                FirmwareUpdate.this.firmwareUpdateListener.onLinkBroken();
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void progress(final double d) {
        new Thread(new Runnable() { // from class: com.lightup.sdk.device.features.process.dataupload.FirmwareUpdate.3
            @Override // java.lang.Runnable
            public void run() {
                FirmwareUpdate.this.firmwareUpdateListener.onProgress(new FirmwareUpdateListener.Progress(d, FirmwareUpdate.this.currentStep, FirmwareUpdate.this.totalNumberOfSteps));
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerEvent(FirmwareUpdateStateMachine.FsmEvent fsmEvent) {
        if (this.eventQueue.offer(new Event(fsmEvent))) {
            return;
        }
        this.bleDevice.getShortId();
        Objects.toString(fsmEvent);
    }

    @Override // com.lightup.sdk.device.features.Feature
    public void handleBLEDeviceStateChange(BLEDeviceStateListener.StateChangeType stateChangeType, BLEDevice.DeviceStateBundle deviceStateBundle) {
        if (stateChangeType != BLEDeviceStateListener.StateChangeType.BLE_DEVICE_STATE) {
            return;
        }
        DeviceState deviceState = deviceStateBundle.bleDeviceState;
        if (deviceState == DeviceState.IN_BOOTLOADER) {
            registerEvent(FirmwareUpdateStateMachine.FsmEvent.LINK_UP_IN_BOOTLOADER);
            return;
        }
        if (deviceState == DeviceState.REGISTERED || deviceState == DeviceState.REGISTERED_REQUIRES_UPDATE) {
            this.fsmContext.d = deviceState == DeviceState.REGISTERED_REQUIRES_UPDATE;
            registerEvent(FirmwareUpdateStateMachine.FsmEvent.LINK_UP_IN_FIRMWARE);
        } else if (deviceState == DeviceState.REGISTERING) {
            registerEvent(FirmwareUpdateStateMachine.FsmEvent.LINK_DOWN);
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0017  */
    @Override // com.lightup.sdk.device.features.Feature
    public void handleNewMessage(BLEDevice bLEDevice, byte b2, byte[] bArr) {
        TransferType transferType;
        if (b2 != MessageInfo.DEVICE_TO_SMARTPHONE_PROGRAM_DOWNLOAD_REQUEST.b()) {
            if (this.fsm.getCurrentState() == FirmwareUpdateStateMachine.FsmState.TRANSFERRING_FIRMWARE) {
                this.currentDataUpdate.handleNewMessage(b2, bArr);
                return;
            }
            return;
        }
        if (bArr.length == 1) {
            byte b3 = bArr[0];
            if (b3 == 0) {
                transferType = TransferType.FIRMWARE;
            } else if (b3 == 1) {
                transferType = TransferType.BOOTLOADER_UPDATER;
            } else if (b3 != 2) {
                transferType = null;
            } else {
                transferType = TransferType.BOOTLOADER;
            }
        } else {
            transferType = null;
        }
        if (transferType == null) {
            bLEDevice.getShortId();
            ByteUtils.g(bArr.length, bArr, true);
        } else {
            this.transferType = transferType;
            registerEvent(FirmwareUpdateStateMachine.FsmEvent.DOWNLOAD_REQUEST);
        }
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        FsmStatus fsmStatus;
        this.bleDevice.setUpdating(true);
        this.fsm.addTerminateListener(new StateMachine.TerminateListener<FirmwareUpdateStateMachine, FirmwareUpdateStateMachine.FsmState, FirmwareUpdateStateMachine.FsmEvent, FirmwareUpdateStateMachine.FsmContext>() { // from class: com.lightup.sdk.device.features.process.dataupload.FirmwareUpdate.8
            /* JADX WARN: Multi-variable type inference failed */
            @Override // org.squirrelframework.foundation.fsm.StateMachine.TerminateListener
            public final void terminated(StateMachine.TerminateEvent terminateEvent) {
                FirmwareUpdateStateMachine.FsmState currentState = ((FirmwareUpdateStateMachine) terminateEvent.getStateMachine()).getCurrentState();
                FirmwareUpdateStateMachine.FsmState fsmState = FirmwareUpdateStateMachine.FsmState.DONE;
                FirmwareUpdate firmwareUpdate = FirmwareUpdate.this;
                if (currentState == fsmState) {
                    firmwareUpdate.registerEvent(FsmStatus.DONE);
                } else if (((FirmwareUpdateStateMachine) terminateEvent.getStateMachine()).getCurrentState() == FirmwareUpdateStateMachine.FsmState.ERROR) {
                    firmwareUpdate.registerEvent(FsmStatus.ERROR);
                } else {
                    firmwareUpdate.bleDevice.getShortId();
                    Objects.toString(((FirmwareUpdateStateMachine) terminateEvent.getStateMachine()).getCurrentState());
                }
            }
        });
        if (this.bleDevice.isInBootloader()) {
            fireFsmEvent(FirmwareUpdateStateMachine.FsmEvent.LINK_UP_IN_BOOTLOADER);
        } else if (this.bleDevice.isRegistered()) {
            this.fsmContext.d = false;
            fireFsmEvent(FirmwareUpdateStateMachine.FsmEvent.LINK_UP_IN_FIRMWARE);
        } else if (this.bleDevice.isRegisteredRequiresUpdate()) {
            this.fsmContext.d = true;
            fireFsmEvent(FirmwareUpdateStateMachine.FsmEvent.LINK_UP_IN_FIRMWARE);
        } else {
            fireFsmEvent(FirmwareUpdateStateMachine.FsmEvent.LINK_DOWN);
        }
        while (true) {
            try {
                Event eventTake = this.eventQueue.take();
                fsmStatus = eventTake.f36002b;
                if (fsmStatus != null) {
                    break;
                } else {
                    fireFsmEvent(eventTake.f36001a);
                }
            } catch (InterruptedException unused) {
                FirmwareUpdateStateMachine.FsmContext fsmContext = this.fsmContext;
                synchronized (fsmContext) {
                    Thread thread = fsmContext.g;
                    if (thread != null) {
                        thread.interrupt();
                    }
                    FirmwareUpdate firmwareUpdate = FirmwareUpdate.this;
                    if (firmwareUpdate.currentDataUpdate != null && firmwareUpdate.currentDataUpdate.isAlive()) {
                        firmwareUpdate.currentDataUpdate.interrupt();
                    }
                    this.fsmContext.a();
                    this.fsm.terminate(this.fsmContext);
                    if (isDeviceUnbinding()) {
                        error(FirmwareUpdateError.CONNECTION_LOST);
                    } else {
                        error(FirmwareUpdateError.INTERRUPTED);
                    }
                    Thread.currentThread().interrupt();
                }
            }
        }
        int i2 = AnonymousClass9.f36000b[fsmStatus.ordinal()];
        if (i2 == 1) {
            done();
        } else {
            if (i2 != 2) {
                md.k("dis should not happen");
                return;
            }
            error();
        }
        this.bleDevice.setUpdating(false);
    }

    public static class Event {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FirmwareUpdateStateMachine.FsmEvent f36001a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final FsmStatus f36002b;

        public Event(FirmwareUpdateStateMachine.FsmEvent fsmEvent) {
            this.f36001a = fsmEvent;
            this.f36002b = null;
        }

        public Event(FsmStatus fsmStatus) {
            this.f36001a = null;
            this.f36002b = fsmStatus;
        }
    }

    private void error() {
        FirmwareUpdateError firmwareUpdateError = this.fsmContext.f36010e;
        if (firmwareUpdateError == null) {
            firmwareUpdateError = FirmwareUpdateError.UNEXPECTED_ERROR;
        }
        error(firmwareUpdateError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerEvent(FsmStatus fsmStatus) {
        if (this.eventQueue.offer(new Event(fsmStatus))) {
            return;
        }
        this.bleDevice.getShortId();
        Objects.toString(fsmStatus);
    }
}
