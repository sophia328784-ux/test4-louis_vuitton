package net.rtccloud.sdk;

import android.os.Handler;
import android.util.Base64;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Queue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import net.rtccloud.sdk.event.datachannel.DataChannelAckEvent;
import net.rtccloud.sdk.event.datachannel.DataChannelInBandEvent;
import net.rtccloud.sdk.event.datachannel.DataChannelOutOfBandEvent;
import net.rtccloud.sdk.internal.Preconditions;
import net.rtccloud.sdk.internal.RtccExceptions;
import net.rtccloud.sdk.internal.util.Utils;
import net.rtccloud.sdk.util.Input;
import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes4.dex */
public class DataChannelModule {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int MAX_SIZE_DATA_CHANNEL = 1536;
    private final Native nativeInterface;
    private final Rtcc rtcc;
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.DATA_CHANNEL);
    private static final byte[] EMPTY_ARRAY = new byte[0];
    private Queue<Object> unsentMessages = new LinkedList();
    private Handler messageConsumerHandler = new Handler();
    final Runnable messageConsumer = new AnonymousClass1();

    /* JADX INFO: renamed from: net.rtccloud.sdk.DataChannelModule$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!DataChannelModule.this.hasUnsentMessage()) {
                DataChannelModule.this.messageConsumerHandler.removeCallbacks(new Runnable() { // from class: net.rtccloud.sdk.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f76510b.run();
                    }
                });
                return;
            }
            boolean zEnforceRtccStatus = Preconditions.enforceRtccStatus(DataChannelModule.log, DataChannelModule.this.rtcc, Rtcc.Status.CONNECTED);
            DataChannelModule dataChannelModule = DataChannelModule.this;
            if (!zEnforceRtccStatus) {
                dataChannelModule.unsentMessages.clear();
                return;
            }
            Call call = dataChannelModule.rtcc.call().get();
            if (!Preconditions.enforceCall(DataChannelModule.log, DataChannelModule.this.rtcc)) {
                DataChannelModule.this.unsentMessages.clear();
                return;
            }
            boolean zEnforceCallStatus = Preconditions.enforceCallStatus(DataChannelModule.log, call, Call.Status.ACTIVE);
            DataChannelModule dataChannelModule2 = DataChannelModule.this;
            if (!zEnforceCallStatus) {
                dataChannelModule2.messageConsumerHandler.postDelayed(this, 100L);
                return;
            }
            Object objPollUnsentMessage = dataChannelModule2.pollUnsentMessage();
            if (objPollUnsentMessage != null) {
                DataChannelModule.this.sendInBand(objPollUnsentMessage);
            }
        }
    }

    public interface Native {
        public static final Native JNI = new Native() { // from class: net.rtccloud.sdk.DataChannelModule.Native.1
            private final ExecutorService executorService = Executors.newSingleThreadExecutor();

            @Override // net.rtccloud.sdk.DataChannelModule.Native
            public boolean ack(final String str, final int i2, final int i3) {
                this.executorService.execute(new Runnable() { // from class: net.rtccloud.sdk.DataChannelModule.Native.1.5
                    @Override // java.lang.Runnable
                    public void run() {
                        Jni.nDataChannelAck(str, i2, i3);
                    }
                });
                return true;
            }

            @Override // net.rtccloud.sdk.DataChannelModule.Native
            public boolean send(final byte[] bArr, final long j2, final String str) {
                this.executorService.execute(new Runnable() { // from class: net.rtccloud.sdk.DataChannelModule.Native.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Jni.nDataChannelSendOutOfBand(bArr, j2, str);
                    }
                });
                return true;
            }

            @Override // net.rtccloud.sdk.DataChannelModule.Native
            public boolean sendInBand(final byte[] bArr) {
                this.executorService.execute(new Runnable() { // from class: net.rtccloud.sdk.DataChannelModule.Native.1.4
                    @Override // java.lang.Runnable
                    public void run() {
                        Jni.nDataChannelSendInBand(bArr);
                    }
                });
                return true;
            }

            @Override // net.rtccloud.sdk.DataChannelModule.Native
            public boolean sendMpi(final String str, final long j2, final byte[] bArr) {
                this.executorService.execute(new Runnable() { // from class: net.rtccloud.sdk.DataChannelModule.Native.1.3
                    @Override // java.lang.Runnable
                    public void run() {
                        Jni.nSendDCMessageMPI(str, j2, bArr);
                    }
                });
                return true;
            }

            @Override // net.rtccloud.sdk.DataChannelModule.Native
            public boolean send(final byte[] bArr, final long j2, final String[] strArr) {
                this.executorService.execute(new Runnable() { // from class: net.rtccloud.sdk.DataChannelModule.Native.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Jni.nDataChannelSendOutOfBandMulti(bArr, j2, strArr);
                    }
                });
                return true;
            }
        };

        boolean ack(String str, int i2, int i3);

        boolean send(byte[] bArr, long j2, String str);

        boolean send(byte[] bArr, long j2, String[] strArr);

        boolean sendInBand(byte[] bArr);

        boolean sendMpi(String str, long j2, byte[] bArr);
    }

    public DataChannelModule(Rtcc rtcc, Native r3) {
        this.rtcc = rtcc;
        this.nativeInterface = r3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean hasUnsentMessage() {
        return !this.unsentMessages.isEmpty();
    }

    private static boolean isValidMessageType(Object obj) {
        return (obj instanceof String) || (obj instanceof byte[]);
    }

    public static byte[] payloadToByteArray(Object obj) {
        if (obj instanceof String) {
            return ((String) obj).getBytes();
        }
        return obj instanceof byte[] ? (byte[]) obj : EMPTY_ARRAY;
    }

    public static String payloadToString(Object obj) {
        if (obj == null) {
            return null;
        }
        return obj instanceof byte[] ? new String((byte[]) obj) : String.valueOf(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized Object pollUnsentMessage() {
        return this.unsentMessages.poll();
    }

    private synchronized void stackInBandMessage(Object obj) {
        this.unsentMessages.add(obj);
        this.messageConsumerHandler.postDelayed(this.messageConsumer, 100L);
    }

    public boolean ack(String str, int i2, int i3) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("ack(uid=%s, id=%d, flag=%d)", str, Integer.valueOf(i2), Integer.valueOf(i3));
        }
        if (str == null) {
            throw RtccExceptions.newNullPointerException("[uid] must not be null");
        }
        Input input = Input.UID;
        if (!input.isValid(str)) {
            throw RtccExceptions.newIllegalArgumentException("[uid] must be [" + input + "] but is [" + str + "]");
        }
        if (i3 <= 255 && i3 >= 0) {
            if (Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceUserStatus(oldLogger, this.rtcc.user(), User.Status.REGISTERED)) {
                return this.nativeInterface.ack(str, i2, i3);
            }
            return false;
        }
        Locale locale = Locale.ENGLISH;
        throw RtccExceptions.newIllegalArgumentException("[flag] must be in range [0 - 255] but is [" + i3 + "]");
    }

    public synchronized void handleAck(int i2, int i3, String str) {
        this.rtcc.bus.post(new DataChannelAckEvent(this, i2, i3, str));
        this.rtcc.sendMeetingCallBack("{\"evt\": \"ackmessage\",\"uid\": \"" + str + "\",\"id\":" + i2 + "\"status\": " + i3 + " }");
    }

    public synchronized void handleInBand(byte[] bArr) {
        this.rtcc.sendMeetingDataChannelInBandEvent(bArr);
        this.rtcc.bus.post(new DataChannelInBandEvent(this, bArr));
    }

    public synchronized void handleOutBand(int i2, String str, byte[] bArr) {
        this.rtcc.bus.post(new DataChannelOutOfBandEvent(this, i2, str, bArr));
        this.rtcc.sendMeetingCallBack("{\"evt\":\"dcmessage\",\"uid\": \"" + str + "\",\"id\":" + i2 + ",\"msg\": \"" + Base64.encodeToString(bArr, 2) + "\"}");
    }

    public Rtcc rtcc() {
        return this.rtcc;
    }

    public boolean send(Object obj, long j2, String str) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("send(payload=%s, id=%d, uid=%s)", payloadToString(obj), Long.valueOf(j2), str);
        }
        if (obj == null) {
            throw RtccExceptions.newNullPointerException("[payload] must not be null");
        }
        if (!isValidMessageType(obj)) {
            throw RtccExceptions.newIllegalArgumentException("[payload] type must be String or String[]");
        }
        byte[] bArrPayloadToByteArray = payloadToByteArray(obj);
        if (bArrPayloadToByteArray.length > 1536) {
            Locale locale = Locale.US;
            throw RtccExceptions.newIllegalArgumentException("[payload] length must be in range [0 - 1536] but is [" + bArrPayloadToByteArray.length + "]");
        }
        if (str == null) {
            throw RtccExceptions.newNullPointerException("[uid] must not be null");
        }
        Input input = Input.UID;
        if (input.isValid(str)) {
            if (Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceUserStatus(oldLogger, this.rtcc.user(), User.Status.REGISTERED)) {
                return this.nativeInterface.send(bArrPayloadToByteArray, j2, str);
            }
            return false;
        }
        throw RtccExceptions.newIllegalArgumentException("[uid] must be [" + input + "] but is [" + str + "]");
    }

    public boolean sendInBand(Object obj) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("sendInBand(payload=%s)", payloadToString(obj));
        }
        if (obj == null) {
            throw RtccExceptions.newNullPointerException("[payload] must not be null");
        }
        if (!isValidMessageType(obj)) {
            throw RtccExceptions.newIllegalArgumentException("[payload] type must be String or String[]");
        }
        byte[] bArrPayloadToByteArray = payloadToByteArray(obj);
        if (bArrPayloadToByteArray.length > 1536) {
            Locale locale = Locale.US;
            throw RtccExceptions.newIllegalArgumentException("[payload] length must be in range [0 - 1536] but is [" + bArrPayloadToByteArray.length + "]");
        }
        if (!Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED)) {
            return false;
        }
        Call call = this.rtcc.call().get();
        if (!Preconditions.enforceCall(oldLogger, this.rtcc)) {
            return false;
        }
        if (Preconditions.enforceCallStatus(oldLogger, call, Call.Status.ACTIVE)) {
            return this.nativeInterface.sendInBand(bArrPayloadToByteArray);
        }
        stackInBandMessage(obj);
        return false;
    }

    public boolean sendMpi(String str, long j2, String str2) {
        return this.nativeInterface.sendMpi(str, j2, payloadToByteArray(str2));
    }

    public boolean sendMulti(Object obj, long j2, String[] strArr) {
        return send(obj, j2, strArr);
    }

    public boolean send(Object obj, long j2, String... strArr) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("send(payload=%s, id=%d, uids=%s)", payloadToString(obj), Long.valueOf(j2), Arrays.toString(strArr));
        }
        if (obj != null) {
            byte[] bArrPayloadToByteArray = payloadToByteArray(obj);
            String[] strArrConsolidateUidInput = Utils.consolidateUidInput(strArr, oldLogger);
            if (Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceUserStatus(oldLogger, this.rtcc.user(), User.Status.REGISTERED)) {
                return this.nativeInterface.send(bArrPayloadToByteArray, j2, strArrConsolidateUidInput);
            }
            return false;
        }
        throw RtccExceptions.newNullPointerException("[payload] must not be null");
    }
}
