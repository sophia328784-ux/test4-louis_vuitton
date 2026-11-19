package net.rtccloud.sdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import android.util.Base64;
import com.dynatrace.android.callback.OkCallback;
import com.sightcall.analytics.AnalyticsRepository;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.pratik.utils.SdkUtilsKt;
import defpackage.aa;
import defpackage.ct0;
import defpackage.jb;
import defpackage.md;
import defpackage.n00;
import defpackage.r81;
import defpackage.wt0;
import defpackage.xn0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Optional;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import javax.inject.Inject;
import kotlin.Unit;
import net.rtccloud.sdk.di.InjectorKt;
import net.rtccloud.sdk.event.EventBus;
import net.rtccloud.sdk.event.call.CallEvent;
import net.rtccloud.sdk.event.call.ProgressivexEvent;
import net.rtccloud.sdk.event.call.ProgressivexStopEvent;
import net.rtccloud.sdk.event.call.StatusEvent;
import net.rtccloud.sdk.internal.Constants;
import net.rtccloud.sdk.internal.Preconditions;
import net.rtccloud.sdk.internal.util.Utils;
import net.rtccloud.sdk.util.OldLogger;
import net.rtccloud.sdk.util.Permission;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.connection.RealCall;
import okhttp3.logging.HttpLoggingInterceptor;

/* JADX INFO: loaded from: classes4.dex */
public final class Rtcc {
    private static final String HAP_DEFAULT = "https://hap1.rtccloud.net/v4/";
    private static final String HAP_PATTERN = "{#}";
    private static final String HAP_US_PPR = "/usppr";
    private static final String HAP_US_PROD = "/usprod";
    private static final int MAX_CONNECTION_RETRY_COUNT = 100;
    private static final int MAX_JPEG_SIZE = 1000000;
    private static final Pattern PATTERN_IP;
    public static final Permission[] REQUIRED_PERMISSIONS = {Permission.INTERNET};
    public static int VERSION_CODE = BuildConfig.VERSION_CODE;
    public static String VERSION_NAME = "7.10.2 Build 800120953";
    private static volatile Rtcc instance;
    private static final OldLogger log;
    private final AcdModule acdModule;

    @Inject
    AnalyticsRepository analyticsRepository;
    private String analyticsUploadToken;
    private String analyticsUploadUrl;
    final EventBus bus;
    private final CallModule callModule;
    private int connectionRetryCount;
    final Context context;
    private final DataChannelModule dataChannelModule;
    private final MeetingPointModule meetingPointModule;
    private final Native nativeInterface;
    private Error pendingDisconnectionReason;
    private final PresenceModule presenceModule;
    private final RosterModule rosterModule;
    private final StatsModule statsModule;
    User user;
    private final UtilsModule utilsModule;
    private RtccMeetingCallBack rtccMeetingCallBack = null;
    private String mpid = null;
    private String callDirection = "in";
    volatile Status status = Status.IDLE;
    private final Bundle extras = new Bundle();
    private String rtccJwt = null;
    private final UUID analyticsUuid = UUID.randomUUID();
    boolean isTesting = false;

    /* JADX INFO: renamed from: net.rtccloud.sdk.Rtcc$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$Rtcc$Status;

        static {
            int[] iArr = new int[Status.values().length];
            $SwitchMap$net$rtccloud$sdk$Rtcc$Status = iArr;
            try {
                iArr[Status.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Status[Status.CONNECTING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Status[Status.CONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Status[Status.NETWORK_LOST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Status[Status.DISCONNECTING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public enum Error {
        NETWORK_ERROR("Could not connect to server"),
        BAD_CREDENTIALS("Wrong credentials"),
        NETWORK_LOST("Device lost network connection"),
        DISCONNECTED("Manual disconnection");

        public final String description;

        Error(String str) {
            this.description = str;
        }
    }

    public interface Native {
        public static final Native JNI = new Native() { // from class: net.rtccloud.sdk.Rtcc.Native.1
            @Override // net.rtccloud.sdk.Rtcc.Native
            public void brutalDisconnect() {
                Jni.nBrutalDisconnect();
            }

            @Override // net.rtccloud.sdk.Rtcc.Native
            public void connect(Rtcc rtcc, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i5) {
                Jni.nConnect(rtcc, i2, i3, i4, z, z2, z3, z4, str, str2, str3, str4, str5, str6, str7, str8, str9, i5);
            }

            @Override // net.rtccloud.sdk.Rtcc.Native
            public void connectMeeting(int i2, int i3, int i4, int i5, String str, String str2, String str3, String str4, int i6, String str5, String str6, String str7, int i7, String str8, int i8, boolean z) {
                Rtcc.instance.sendMeetingCallBack("{\"evt\":\"connectevent\",\"id\":2,\"desc\":\"MUCL Init\"}");
                Jni.nConnectMeeting(Rtcc.instance, i3, i4, i5, str, str2, str3, str4, i2, i6, str5, str6, str7, i7, str8, i8, z);
            }

            @Override // net.rtccloud.sdk.Rtcc.Native
            public void disconnect() {
                Jni.nDisconnect();
            }

            @Override // net.rtccloud.sdk.Rtcc.Native
            public void disconnectEnd() {
                Jni.nDisconnectEnd();
            }

            @Override // net.rtccloud.sdk.Rtcc.Native
            public int getAllMyChatRooms() {
                return Jni.nGetAllMyChatRooms();
            }

            @Override // net.rtccloud.sdk.Rtcc.Native
            public int getChatRoomForMID(String str) {
                return Jni.nGetChatRoomForMID(str);
            }

            @Override // net.rtccloud.sdk.Rtcc.Native
            public int getChatRooms(String[] strArr, int i2) {
                return Jni.nGetChatRooms(strArr, i2);
            }

            @Override // net.rtccloud.sdk.Rtcc.Native
            public int getHistory(String str, int i2, int i3) {
                return Jni.nGetHistory(str, i2, i3);
            }

            @Override // net.rtccloud.sdk.Rtcc.Native
            public int getVersion() {
                return Jni.nGetVersion();
            }

            @Override // net.rtccloud.sdk.Rtcc.Native
            public void nRegisterForTests() {
                Jni.nRegisterForTests();
            }

            @Override // net.rtccloud.sdk.Rtcc.Native
            public int registerJWT(String str) {
                return Jni.nRegisterJWT(str);
            }

            @Override // net.rtccloud.sdk.Rtcc.Native
            public void resetFastMode() {
                Jni.nResetFastMode();
            }

            @Override // net.rtccloud.sdk.Rtcc.Native
            public void sendAvatar(String str, int i2, byte[] bArr) {
                Jni.nSendAvatar(str, i2, bArr);
            }

            @Override // net.rtccloud.sdk.Rtcc.Native
            public int sendChat(String str, byte[] bArr, int i2) {
                return Jni.nSendChat(str, bArr, i2);
            }

            @Override // net.rtccloud.sdk.Rtcc.Native
            public void setJsVersion(String str, String str2) {
                Jni.nSetJsVersion(str, str2);
            }

            @Override // net.rtccloud.sdk.Rtcc.Native
            public void setLoggerLevel(int i2) {
                Jni.nSetLoggerLevel(i2);
            }

            @Override // net.rtccloud.sdk.Rtcc.Native
            public void setSamplingRate(int i2) {
                Jni.nAudioSetSamplingRate(i2);
            }

            @Override // net.rtccloud.sdk.Rtcc.Native
            public void setUrlReferer(String str) {
                Jni.nSetUrlReferer(str);
            }

            @Override // net.rtccloud.sdk.Rtcc.Native
            public void setVersion(String str, String str2, String str3) {
                Jni.nSetVersionOverride(str, str2, str3);
            }

            @Override // net.rtccloud.sdk.Rtcc.Native
            public int updateMetadata(String str, byte[] bArr, int i2) {
                return Jni.nUpdateMetadata(str, bArr, i2);
            }

            @Override // net.rtccloud.sdk.Rtcc.Native
            public int updateTS(String str, int i2) {
                return Jni.nUpdateTS(str, i2);
            }
        };

        void brutalDisconnect();

        void connect(Rtcc rtcc, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i5);

        void connectMeeting(int i2, int i3, int i4, int i5, String str, String str2, String str3, String str4, int i6, String str5, String str6, String str7, int i7, String str8, int i8, boolean z);

        void disconnect();

        void disconnectEnd();

        int getAllMyChatRooms();

        int getChatRoomForMID(String str);

        int getChatRooms(String[] strArr, int i2);

        int getHistory(String str, int i2, int i3);

        int getVersion();

        void nRegisterForTests();

        int registerJWT(String str);

        void resetFastMode();

        void sendAvatar(String str, int i2, byte[] bArr);

        int sendChat(String str, byte[] bArr, int i2);

        void setJsVersion(String str, String str2);

        void setLoggerLevel(int i2);

        void setSamplingRate(int i2);

        void setUrlReferer(String str);

        void setVersion(String str, String str2, String str3);

        int updateMetadata(String str, byte[] bArr, int i2);

        int updateTS(String str, int i2);
    }

    public enum Status {
        IDLE,
        CONNECTING,
        CONNECTED,
        NETWORK_LOST,
        DISCONNECTING
    }

    static {
        Logger.INSTANCE.i(String.format("Version:%s, Code:%d, Date:%s, Git:#%s, Mucl:%d, Type:%s", n00.r(VERSION_NAME, " (120952)", new StringBuilder()), Integer.valueOf(VERSION_CODE), "2026-09-07 08:49:28 UTC", "84e19ba2", 24225376, "release"), null);
        log = OldLogger.get(OldLogger.Internal.ENGINE);
        PATTERN_IP = Pattern.compile("<local.+addr=\"(.+?)\".*/>");
    }

    public Rtcc(Context context, Native r4, EventBus eventBus) throws RuntimeException {
        InjectorKt.getRtccComponent().inject(this);
        this.context = context.getApplicationContext();
        this.nativeInterface = r4;
        this.bus = eventBus;
        Preconditions.enforcePermissions(log, context, "Rtcc", REQUIRED_PERMISSIONS);
        loadLibrary();
        this.rosterModule = new RosterModule(this, RosterModule.Native.JNI);
        this.presenceModule = new PresenceModule(this, PresenceModule.Native.JNI);
        this.dataChannelModule = new DataChannelModule(this, DataChannelModule.Native.JNI);
        this.meetingPointModule = new MeetingPointModule(this);
        this.statsModule = new StatsModule(this, StatsModule.Native.JNI);
        this.utilsModule = new UtilsModule(UtilsModule.Native.JNI);
        this.acdModule = new AcdModule(this, AcdModule.Native.JNI);
        this.callModule = new CallModule(this, CallModule.Native.JNI);
        OldLogger.Internal internal = OldLogger.Internal.NATIVE;
        OldLogger.get(internal).addListener(new OldLogger.Listener() { // from class: vt0
            @Override // net.rtccloud.sdk.util.OldLogger.Listener
            public final void onLoggerLevelChanged(OldLogger oldLogger, int i2) {
                this.f80655a.lambda$new$0(oldLogger, i2);
            }
        });
        r4.setLoggerLevel(OldLogger.get(internal).getLevel());
    }

    private static byte[] YUV420toNV21(byte[] bArr, byte[] bArr2, int i2, int i3) {
        if (bArr2 == null) {
            bArr2 = new byte[bArr.length];
        }
        int i4 = i2 * i3;
        int i5 = (i4 / 4) + i4;
        System.arraycopy(bArr, 0, bArr2, 0, i4);
        int i6 = i4;
        int i7 = i5;
        while (i4 < i5) {
            bArr2[i6] = bArr[i7];
            bArr2[i6 + 1] = bArr[i4];
            i4++;
            i7++;
            i6 += 2;
        }
        return bArr2;
    }

    private static byte[] compressYuvToJpeg(YuvImage yuvImage, int i2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int size = i2;
        for (int i3 = 80; i3 > 5 && size >= i2; i3 -= 10) {
            try {
                byteArrayOutputStream.flush();
                byteArrayOutputStream.reset();
            } catch (IOException unused) {
                log.e("[yuvimage] error compressing to jpeg");
            }
            yuvImage.compressToJpeg(new Rect(0, 0, yuvImage.getWidth(), yuvImage.getHeight()), i3, byteArrayOutputStream);
            size = byteArrayOutputStream.size();
        }
        return byteArrayOutputStream.toByteArray();
    }

    private static String detectIpAddress(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Matcher matcher = PATTERN_IP.matcher(str.replaceAll("\n", " "));
        if (!matcher.find()) {
            return null;
        }
        try {
            String strGroup = matcher.group(1);
            User user = instance().user();
            if (user != null) {
                user.ip(strGroup);
            }
            return strGroup;
        } catch (IllegalStateException unused) {
            return null;
        }
    }

    public static void disconnectIfNeeded() {
        if (instance != null) {
            instance.disconnect();
        } else {
            log.d("disconnect: no instance found");
        }
    }

    private static String generateHapFromUserInput(String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return HAP_DEFAULT;
        }
        if (i2 == 1) {
            str = str.contains("ppr") ? HAP_US_PPR : HAP_US_PROD;
        }
        return HAP_DEFAULT + str.replaceAll("^/+", "");
    }

    private String getJsUserAgent() {
        return String.format("AndroidWebView %d.%d.%d", 7, 10, 2);
    }

    public static void init(Context context) {
        if (context == null) {
            r81.d("[context] parameter must not be null");
            return;
        }
        if (instance == null) {
            synchronized (Rtcc.class) {
                try {
                    if (instance == null) {
                        instance = new Rtcc(context, Native.JNI, new EventBus(Looper.getMainLooper()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static Rtcc instance() {
        if (instance != null) {
            return instance;
        }
        md.h("Rtcc.init(Context) must be called before!");
        return null;
    }

    public static byte[] jni_convertYuvToJpeg(byte[] bArr, int i2, int i3, int i4) {
        byte[] bArr2 = new byte[((i4 * i3) * 3) / 2];
        YUV420toNV21(bArr, bArr2, i2, i3);
        new ByteArrayOutputStream();
        return compressYuvToJpeg(new YuvImage(bArr2, 17, i2, i3, null), MAX_JPEG_SIZE);
    }

    public static String jni_getHap(int i2) {
        User user = instance().user();
        if (user == null) {
            return null;
        }
        instance.sendMeetingCallBack("{\"evt\":\"connectevent\",\"id\":1,\"desc\":\"Getting HAP file\"}");
        String strGenerateHapFromUserInput = generateHapFromUserInput(user.hap(), user.environment());
        try {
            Jni.nLogHapEventBegin();
            HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor();
            HttpLoggingInterceptor.Level level = log.d() ? HttpLoggingInterceptor.Level.BODY : HttpLoggingInterceptor.Level.BASIC;
            level.getClass();
            httpLoggingInterceptor.d = level;
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            builder.f76962c.add(httpLoggingInterceptor);
            OkHttpClient okHttpClient = new OkHttpClient(builder);
            Request.Builder builder2 = new Request.Builder();
            builder2.e(strGenerateHapFromUserInput);
            Response responseB = OkCallback.b(new RealCall(okHttpClient, new Request(builder2), false));
            if (responseB.r) {
                String strString = responseB.f76988h.string();
                responseB.f76988h.close();
                detectIpAddress(strString);
                return strString;
            }
            instance.sendMeetingCallBack("{\"evt\":\"connectevent\",\"id\":10,\"desc\":\"No answer from HAP\"}");
            Jni.nLogHapEventError("response code: " + responseB.f76986e + "resonse Body: " + responseB.f76988h);
            return null;
        } catch (IOException e2) {
            instance.sendMeetingCallBack("{\"evt\":\"connectevent\",\"id\":10,\"desc\":\"No answer from HAP\"}");
            Jni.nLogHapEventError("an exception occurred " + e2.getMessage());
            e2.printStackTrace();
            log.e("Error getHap(%s) %s", strGenerateHapFromUserInput, e2.getLocalizedMessage());
            return null;
        }
    }

    public static String jni_getLocalIp() {
        return Utils.getLocalIp(log);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$jni_participantsCB$4(Participant participant) {
        StringBuilder sb = new StringBuilder("{ \"id\": ");
        sb.append(participant.id);
        sb.append(", \"uid\": \"");
        sb.append(participant.uid());
        sb.append("\", \"displayName\": \"");
        return n00.r(participant.displayName, "\"}", sb);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$jni_participantsCB$5(Participant participant) {
        return "{ \"id\": " + participant.id + ", \"mute\": " + participant.isMuted + ", \"deaf\":" + participant.isDeafened + ", \"video\": " + participant.isSendingVideo + ", \"lockas\": " + participant.isLocked() + "}";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadLibrary$1() {
        Utils.detectMissingNativeLibsFromAbi(this.context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(OldLogger oldLogger, int i2) {
        this.nativeInterface.setLoggerLevel(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$sendErrorReason$2() {
        teardown(Error.NETWORK_ERROR);
        RtccHelper.INSTANCE.setOnAnalyticsSentListener(null);
        return null;
    }

    private void loadLibrary() {
        try {
            log.i("Loading Rtcc native library [libRtcc.so] for process pid=%d", Integer.valueOf(Process.myPid()));
            System.loadLibrary("Rtcc");
            AsyncTask.execute(new wt0(this, 0));
        } catch (UnsatisfiedLinkError e2) {
            throw Utils.throwAbiIncompatibilityError(this.context, e2);
        }
    }

    private void sendErrorReason() {
        RtccHelper.INSTANCE.setOnAnalyticsSentListener(new xn0(this, 20));
        Jni.nBuildStartupLog();
    }

    private void sendMeetingProgressiveXEvent(ProgressivexEvent progressivexEvent) {
        if (isMeeting()) {
            this.rtccMeetingCallBack.handleProgressiveXEvent(progressivexEvent);
        }
    }

    private void sendMeetingShareCallback(int i2, int i3) {
        if (isMeeting()) {
            this.rtccMeetingCallBack.handleShareStartStop(i2, i3);
        }
    }

    private void sendTranslationEvent(int i2, int i3, int i4, String str) {
        if (isMeeting() && i2 == 29187) {
            RtccMeetingCallBack rtccMeetingCallBack = this.rtccMeetingCallBack;
            rtccMeetingCallBack.newTranslationSentence(str, (i4 >> 8) & 15, i4 & 15);
        }
    }

    private void teardown() {
        updateStatus(Status.DISCONNECTING);
        new Thread(new wt0(this, 1)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: teardownInternal, reason: merged with bridge method [inline-methods] */
    public synchronized void lambda$teardown$3() {
        try {
            Error error = this.pendingDisconnectionReason;
            Status status = this.status;
            Status status2 = Status.IDLE;
            if (status == status2) {
                return;
            }
            this.nativeInterface.disconnectEnd();
            User user = this.user;
            if (user != null) {
                user.onUnbind();
                this.user = null;
            }
            Call call = this.callModule.call;
            if (call != null) {
                call.end();
            }
            this.meetingPointModule.teardown();
            this.acdModule.clear();
            EventBus eventBus = this.bus;
            if (error == null) {
                error = Error.DISCONNECTED;
            }
            eventBus.post(error);
            this.pendingDisconnectionReason = null;
            updateStatus(status2);
        } catch (Throwable th) {
            throw th;
        }
    }

    private void updateStatus(Status status) {
        if (this.status != status) {
            this.status = status;
            if (AnonymousClass1.$SwitchMap$net$rtccloud$sdk$Rtcc$Status[this.status.ordinal()] == 4) {
                this.acdModule.clear();
            }
            this.bus.post(status);
        }
    }

    public AcdModule acd() {
        return this.acdModule;
    }

    public void attendMeetingPoint(String str, String str2) {
        this.mpid = str;
        MeetingPointModule meetingPointModule = this.meetingPointModule;
        if (str2 == null) {
            meetingPointModule.asAttendee(str).join();
        } else {
            meetingPointModule.asHost(str).joinMeeting(str2);
        }
    }

    public void authenticate() {
        Utils.installId(this.context);
        this.user.appid();
        this.user.environment();
        if (this.isTesting) {
            this.nativeInterface.nRegisterForTests();
            return;
        }
        String str = this.rtccJwt;
        if (str != null) {
            this.nativeInterface.registerJWT(str);
        } else {
            log.e("authenticate() error: rtccJwt is null");
        }
    }

    public void brutalDisconnect() {
        log.d("brutalDisconnect()");
        this.nativeInterface.brutalDisconnect();
    }

    public EventBus bus() {
        return this.bus;
    }

    public CallModule call() {
        return this.callModule;
    }

    public <U extends User> U connect(User.Builder<U, ?> builder, String str) {
        this.isTesting = false;
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("connect(%s)", builder);
        }
        if (builder == null) {
            r81.d("[builder] must not be null");
            return null;
        }
        Status status = Status.IDLE;
        if (!Preconditions.enforceRtccStatus(oldLogger, this, status)) {
            ct0.o(status.name(), "Cannot connect a user if not ");
            return null;
        }
        U u = (U) User.with(builder);
        updateStatus(Status.CONNECTING);
        this.user = u;
        this.connectionRetryCount = 0;
        String str2 = Utils.networkType(this.context).value;
        String strNetworkCarrier = Utils.networkCarrier(this.context);
        int iFindDeviceType = Utils.findDeviceType(this.context);
        oldLogger.i("updateNetworkInfo(type:%s, carrier:%s)", str2, strNetworkCarrier);
        this.nativeInterface.connect(instance, 7, 10, 2, this.user.usapTurnDisabled(), this.user.localUdpDisabled(), this.user.attendeeSslPlugin(), this.user.advancedAnnotations(), this.user.liveTranslationLanguage(), String.valueOf(SdkUtilsKt.sdkVersion()), Utils.hardware(this.context), net.rtccloud.sdk.util.Utils.version(this.context), net.rtccloud.sdk.util.Utils.packageName(this.context), this.user.hap(), str2, strNetworkCarrier, str, iFindDeviceType);
        return u;
    }

    public <U extends User> U connectForTests(User.Builder<U, ?> builder) {
        U u = (U) connect(builder, null);
        this.isTesting = true;
        return u;
    }

    public void connectMeeting(int i2, int i3, String str, String str2, int i4, String str3, boolean z) {
        updateStatus(Status.CONNECTING);
        this.user = User.with(User.external("", "").hap(str));
        if (str3 != null) {
            provideRtccJWT(str3);
        }
        this.nativeInterface.connectMeeting(i2, 7, 10, 2, net.rtccloud.sdk.util.Utils.version(this.context), String.valueOf(SdkUtilsKt.sdkVersion()), Utils.hardware(this.context), net.rtccloud.sdk.util.Utils.packageName(this.context), i3, str, str2, getJsUserAgent(), i4, str3, Utils.findDeviceType(this.context), z);
    }

    public Context context() {
        return this.context;
    }

    public void createCall(String str, String str2, String str3) {
        this.callDirection = "out";
        switch (str3.hashCode()) {
            case -1820761141:
                str3.equals("external");
                break;
            case -1298024376:
                str3.equals("sixdigits");
                break;
            case 3208616:
                if (str3.equals("host")) {
                    this.meetingPointModule.asHost(str).call();
                }
                break;
            case 542756026:
                if (str3.equals("attendee")) {
                    this.meetingPointModule.asAttendee(str).call();
                }
                break;
            case 1745467601:
                if (str3.equals("mirrortest")) {
                    this.meetingPointModule.rtcc().call().mirroring(new Call.Parameters().audio(false).video(true).videoProfile(VideoModule.Profile.VGA));
                }
                break;
        }
    }

    public DataChannelModule dataChannel() {
        return this.dataChannelModule;
    }

    public void disableTestingMode() {
        this.isTesting = false;
    }

    public void disconnect() {
        OldLogger oldLogger = log;
        oldLogger.d("disconnect()");
        if (Preconditions.enforceRtccStatus(oldLogger, this, Status.CONNECTING, Status.CONNECTED, Status.NETWORK_LOST, Status.DISCONNECTING)) {
            int i2 = AnonymousClass1.$SwitchMap$net$rtccloud$sdk$Rtcc$Status[this.status.ordinal()];
            if (i2 == 2) {
                if (this.user.rtcc() != null) {
                    disconnect(Error.DISCONNECTED);
                    return;
                } else {
                    teardown(Error.DISCONNECTED);
                    return;
                }
            }
            if (i2 == 3) {
                if (Preconditions.enforceNoCall(oldLogger, this)) {
                    disconnect(Error.DISCONNECTED);
                }
            } else if (i2 != 4) {
                if (i2 != 5) {
                    return;
                }
                teardown(Error.DISCONNECTED);
            } else {
                Preconditions.enforceNoCall(oldLogger, this);
                Error error = Error.DISCONNECTED;
                disconnect(error);
                teardown(error);
            }
        }
    }

    public Bundle extras() {
        return this.extras;
    }

    public int getAllMyChatRooms() {
        return this.nativeInterface.getAllMyChatRooms();
    }

    public int getChatRoomForMID(String str) {
        return this.nativeInterface.getChatRoomForMID(str);
    }

    public int getChatRooms(String[] strArr, int i2) {
        return this.nativeInterface.getChatRooms(strArr, i2);
    }

    public int getHistory(String str, int i2, int i3) {
        return this.nativeInterface.getHistory(str, i2, i3);
    }

    public boolean getPresence(String[] strArr) {
        return this.presenceModule.request(strArr);
    }

    public String getSid() {
        return this.user.sid();
    }

    public String getUid() {
        return this.user.uidLocal();
    }

    public int getVersion() {
        return this.nativeInterface.getVersion();
    }

    public boolean isMeeting() {
        return this.rtccMeetingCallBack != null;
    }

    public synchronized void jni_acdCanceledCB(String str) {
        log.d("jni_acdCanceledCB(uid=%s)", str);
        this.acdModule.handleAcdCanceled(str);
    }

    public synchronized void jni_acdQueueCB(int i2, int i3) {
        log.d("acdPositionCB(index=%d, length=%d)", Integer.valueOf(i2), Integer.valueOf(i3));
        this.acdModule.handleQueue(i2, i3);
    }

    public synchronized void jni_acdReadyCB(String str) {
        log.d("acdReadyCB(uid=%s)", str);
        this.acdModule.handleReady(str);
    }

    public synchronized void jni_acdRequestedCB(String str) {
        log.d("jni_acdRequestedCB(uid=%s)", str);
        this.acdModule.handleAcdRequested(str);
    }

    public synchronized void jni_acdUserListCB(int i2, int i3, String str, long j2) {
        log.d("jni_acdUserListCB(index=%d, length=%d, uid=%s, presence=%X)", Integer.valueOf(i2), Integer.valueOf(i3), str, Long.valueOf(j2));
        this.acdModule.handleUserList(i2, i3, str, j2);
    }

    public synchronized void jni_acdWaitingListCB(int i2, int i3, String str, long j2, long j3) {
        log.d("jni_acdWaitingListCB(index=%d, length=%d, uid=%s, presence=%X, mask=%X)", Integer.valueOf(i2), Integer.valueOf(i3), str, Long.valueOf(j2), Long.valueOf(j3));
        this.acdModule.handleWaitingList(i2, i3, str, j2, j3);
    }

    public synchronized void jni_audioCB(boolean z) {
        OldLogger oldLogger = log;
        oldLogger.d("audioCB(start=%b)", Boolean.valueOf(z));
        if (Preconditions.enforceCall(oldLogger, this.callModule.call)) {
            this.callModule.handleAudio(z);
        }
    }

    public synchronized void jni_audioErrorCB(int i2, int i3) {
        log.e("audioErrorCB(from=%d ,errorCode=%d)", Integer.valueOf(i2), Integer.valueOf(i3));
        this.callModule.get().audioModule.restart();
    }

    public synchronized void jni_audioFrameLengthCB(int i2) {
        log.d("audioFrameLengthCB(frameLength=%d)", Integer.valueOf(i2));
        this.callModule.handleAudioFrameLength(i2);
    }

    public synchronized void jni_audioFrequencyCB(int i2) {
        log.d("audioFrequencyCB(frequency=%d)", Integer.valueOf(i2));
        this.callModule.handleAudioFrequency(i2);
    }

    public synchronized void jni_audioSupportedSamplingCB(int i2, int i3) {
        log.d("AndroidAudioEngine jni_audioSupportedSamplingCB(sampleRate=%d ,frameLen=%d)", Integer.valueOf(i2), Integer.valueOf(i3));
        this.nativeInterface.setSamplingRate(i2);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00fc A[Catch: all -> 0x00a3, TryCatch #0 {all -> 0x00a3, blocks: (B:22:0x0066, B:23:0x008a, B:26:0x00a6, B:27:0x00ca, B:28:0x00de, B:29:0x00fc, B:30:0x0106, B:46:0x0140, B:47:0x0143, B:48:0x0146, B:52:0x0153, B:51:0x014f, B:53:0x0179, B:54:0x0197, B:56:0x01be, B:59:0x01c5, B:62:0x0208, B:66:0x0212, B:60:0x01ea, B:67:0x022d, B:68:0x024b, B:69:0x026b, B:70:0x02a1, B:71:0x02d3, B:72:0x0305, B:73:0x032c, B:75:0x0352, B:76:0x035e, B:77:0x038f), top: B:82:0x0041 }] */
    public synchronized void jni_callCB(int i2, int i3, int i4, String str) {
        try {
            if (i2 == 24832) {
                log.d("callCB(cmd=%s, callId=%d, param=%s, string=%s)", Constants.Call.valueOf(i2), Integer.valueOf(i3), Constants.CallType.valueOf(i4), str);
                this.callModule.handle(i2, i3, i4, str);
                sendMeetingCallBack("{\"evt\": \"callcreated\", \"id\": \"" + i3 + "\",\"sipcallid\":  \"\" ,\"direction\": \"" + this.callDirection + "\" ,\"displayname\": \"" + str + "\" }");
            } else if (i2 == 28928) {
                log.d("callCB(cmd=%s, callId=%d, param=%x, string=%s)", Constants.Call.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), str);
                this.callModule.handle(i2, i3, i4, str);
                String str2 = str == null ? "" : str;
                if (i4 == 28977 || i4 == 28978) {
                    sendMeetingCallBack("{\"evt\": \"callstatus\", \"id\": " + i3 + ",\"sipcallid\": \"" + str2 + "\",\"type\": \"datachannel\",\"status\": \"ok\" }");
                    sendMeetingCallEvent(new StatusEvent(call().get(), Call.Status.ACTIVE));
                } else if (i4 == 29040) {
                    sendMeetingCallBack("{\"evt\": \"callstatus\", \"id\": " + i3 + ",\"sipcallid\": \"" + str2 + "\",\"type\": \"call\",\"status\": \"joiningmvs\" }");
                    Call call = this.callModule.get();
                    if (call != null) {
                        call.type = Call.Type.CONFERENCE_ATTENDEE;
                        call.audioModule.muteRecorder(false, true);
                    }
                } else if (i4 == 29104) {
                    sendMeetingCallBack("{\"evt\": \"callstatus\", \"id\": " + i3 + ",\"sipcallid\": \"" + str2 + "\",\"type\": \"record\",\"status\": \"stop\",\"reason\": \"stop request\" }");
                    this.rtccMeetingCallBack.handleRecordingStatus(RecordingModule.Status.STOPPED);
                } else if (i4 == 29120) {
                    sendMeetingCallBack("{\"evt\": \"callstatus\", \"id\": " + i3 + ",\"sipCallId\": \"" + call().get().sipId + "\",\"type\": \"call\",\"status\": \"peerdisconnected\",\"uid\": \"" + str + "\"}");
                } else if (i4 != 29121) {
                    switch (i4) {
                        case Constants.CallStatus.ENDED /* 28992 */:
                            sendMeetingCallBack("{\"status\":\"terminated\",\"type\":\"call\",\"reason\":\"remoteHangup\",\"sipCallId\":\"" + str2 + "\",\"evt\":\"callstatus\",\"id\":" + i3 + "}");
                            sendMeetingCallEvent(new StatusEvent(call().get(), Call.Status.ENDED));
                            this.callDirection = "in";
                            break;
                        case Constants.CallStatus.LOCAL_ENDED /* 28993 */:
                            sendMeetingCallBack("{\"status\":\"terminated\",\"type\":\"call\",\"reason\":\"localHangup\",\"sipCallId\":\"" + str2 + "\",\"evt\":\"callstatus\",\"id\":" + i3 + "}");
                            break;
                        case Constants.CallStatus.DEAD_PARTY /* 28994 */:
                            sendMeetingCallBack("{\"status\":\"terminated\",\"type\":\"call\",\"reason\":\"networkError\",\"sipCallId\":\"" + str2 + "\",\"evt\":\"callstatus\",\"id\":" + i3 + "}");
                            break;
                        default:
                            switch (i4) {
                                case Constants.CallStatus.RECORD_STARTED /* 29088 */:
                                    if (str == null || str.isEmpty()) {
                                        sendMeetingCallBack("{\"evt\": \"callstatus\", \"id\": " + i3 + ",\"sipcallid\": \"" + str2 + "\",\"type\": \"record\",\"status\": \"start\" }");
                                    } else {
                                        sendMeetingCallBack("{\"evt\": \"callstatus\", \"id\": " + i3 + ",\"sipcallid\": \"" + str2 + "\",\"filename\": \"" + str + "\",\"type\": \"record\",\"status\": \"start\" }");
                                    }
                                    if (str != null && str.equals("AUDIORECORDING")) {
                                        return;
                                    }
                                    sendMeetingCallEvent(new StatusEvent(call().get(), Call.Status.ACTIVE));
                                    this.rtccMeetingCallBack.handleRecordingStatus(RecordingModule.Status.RECORDING);
                                    break;
                                case Constants.CallStatus.RECORD_PAUSED /* 29089 */:
                                    sendMeetingCallBack("{\"evt\": \"callstatus\", \"id\": " + i3 + ",\"sipcallid\": \"" + str2 + "\",\"type\": \"record\",\"status\": \"stop\",\"reason\": \"pause request\" }");
                                    this.rtccMeetingCallBack.handleRecordingStatus(RecordingModule.Status.PAUSED);
                                    break;
                                case Constants.CallStatus.RECORD_BOOKMARKED /* 29090 */:
                                    sendMeetingCallBack("{\"evt\": \"callstatus\", \"id\": " + i3 + ",\"sipcallid\": \"" + str2 + "\",\"type\": \"record\",\"status\": \"bookmark\" }");
                                    break;
                                default:
                                    String strValueOf = Constants.CallStatus.valueOf(i4);
                                    sendMeetingCallBack("{\"evt\": \"callstatus\", \"id\": " + i3 + ",\"sipcallid\": \"" + str2 + "\",\"type\": \"call\",\"status\": \"" + (strValueOf == null ? "" : strValueOf.toLowerCase()) + "\" }");
                                    break;
                            }
                            break;
                    }
                } else {
                    sendMeetingCallBack("{\"evt\": \"callstatus\", \"id\": " + i3 + ",\"sipCallId\": \"" + call().get().sipId + "\",\"type\": \"call\",\"status\": \"peerreconnected\",\"uid\": \"" + str + "\"}");
                }
            } else if (i2 == 29187) {
                sendTranslationEvent(i2, i3, i4, str);
                this.callModule.handle(i2, i3, i4, str);
            } else if (i2 == 29440) {
                log.d("callCB(cmd=%s, callId=%d, param=%x, string=%s)", Constants.Call.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), str);
                this.callModule.handle(i2, i3, i4, str);
            } else if (i2 == 29952) {
                sendTranslationEvent(i2, i3, i4, str);
                this.callModule.handle(i2, i3, i4, str);
            } else if (i2 == 30208) {
                sendMeetingCallBack("{\"evt\": \"netevent\", \"id\": " + i4 + ",\"from\": -1}");
            } else if (i2 != 30224) {
                if (i2 == 30464) {
                    sendMeetingCallBack("{\"evt\": \"callstatus\", \"type\": \"localstats\", \"localstats\": {\"fps\": " + (i3 >> 24) + ", \"bitrate\": " + i4 + ", \"jitter\": " + (16777215 & i3) + "}}");
                }
                log.w("callCB(cmd=%x, callId=%d, param=%x, string=%s) Unknown cmd", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), str);
            } else {
                sendMeetingCallBack("{\"evt\": \"netevent\", \"id\": " + (65535 & i4) + ",\"from\": " + (i4 >> 16) + "}");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void jni_chatCrDetailsCB(Object obj) {
        try {
            ChatDetails chatDetails = (ChatDetails) obj;
            StringBuilder sb = new StringBuilder();
            sb.append("{\"evt\":\"chatdetails\",");
            sb.append("\"cid\":\"");
            sb.append(chatDetails.getCid());
            sb.append("\",");
            sb.append("\"mid\":\"");
            sb.append(chatDetails.getMid());
            sb.append("\",");
            sb.append("\"ts\":");
            sb.append(chatDetails.getTs());
            sb.append(",");
            sb.append("\"current\":");
            sb.append(chatDetails.getCurrent());
            sb.append(",");
            sb.append("\"total\":");
            sb.append(chatDetails.getTotal());
            sb.append(",");
            sb.append("\"totalmsg\":");
            sb.append(chatDetails.getTotalmsg());
            sb.append(",");
            sb.append("\"unread\":");
            sb.append(chatDetails.getUnreadmsg());
            sb.append(",");
            if (chatDetails.getMetadata() != null) {
                String strEncodeToString = Base64.encodeToString(chatDetails.getMetadata(), 2);
                sb.append("\"metadata\":\"");
                sb.append(strEncodeToString);
                sb.append("\",");
            } else {
                sb.append("\"metadata\":\"\",");
            }
            sb.append("\"plist\":[");
            String[] plist = chatDetails.getPlist();
            if (plist != null && plist.length > 0) {
                for (int i2 = 0; i2 < plist.length; i2++) {
                    if (i2 > 0) {
                        sb.append(",");
                    }
                    sb.append("\"");
                    sb.append(plist[i2]);
                    sb.append("\"");
                }
            }
            sb.append("]}");
            sendMeetingCallBack(sb.toString());
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void jni_chatHistoryCB(Object obj) {
        ChatMessage chatMessage = (ChatMessage) obj;
        sendMeetingCallBack("{\"evt\":\"chathist\",\"cid\":\"" + chatMessage.getCid() + "\",\"ts\":" + chatMessage.getTs() + ",\"from\":" + chatMessage.getFrom() + ",\"current\":" + chatMessage.getCurrent() + ",\"total\":" + chatMessage.getTotal() + ",\"msg\":\"" + Base64.encodeToString(chatMessage.getMessage().getBytes(), 2) + "\"}");
    }

    public synchronized void jni_chatMessageCB(Object obj) {
        ChatMessage chatMessage = (ChatMessage) obj;
        sendMeetingCallBack("{\"evt\":\"chatmsg\",\"cid\":\"" + chatMessage.getCid() + "\",\"ts\":" + chatMessage.getTs() + ",\"from\":" + chatMessage.getFrom() + ",\"msg\":\"" + Base64.encodeToString(chatMessage.getMessage().getBytes(), 2) + "\"}");
    }

    public synchronized void jni_dataChannelAckCB(int i2, int i3, String str) {
        try {
            OldLogger oldLogger = log;
            if (oldLogger.d()) {
                oldLogger.d("dataChannelAckCB(id=%d, flag=%d, uid=%s)", Integer.valueOf(i2), Integer.valueOf(i3), str);
            }
            this.dataChannelModule.handleAck(i2, i3, str);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void jni_dataChannelCB(int i2, String str, byte[] bArr) {
        try {
            OldLogger oldLogger = log;
            if (oldLogger.d()) {
                oldLogger.d("dataChannelCB(id=%d, uid=%s, payload=%s)", Integer.valueOf(i2), str, DataChannelModule.payloadToString(bArr));
            }
            this.dataChannelModule.handleOutBand(i2, str, bArr);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void jni_dataChannelInBandCB(byte[] bArr) {
        try {
            OldLogger oldLogger = log;
            if (oldLogger.d()) {
                oldLogger.d("dataChannelInbandCB(payload=%s)", DataChannelModule.payloadToString(bArr));
            }
            this.dataChannelModule.handleInBand(bArr);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void jni_eventCB(int i2, int i3, String str) {
        try {
            if (i2 == 4352) {
                OldLogger oldLogger = log;
                oldLogger.d("eventCB(cmd=%s, param=%s, string=%s) status=%s", Constants.Event.valueOf(i2), Constants.ConnectionStatus.valueOf(i3), str, this.status);
                if (i3 == 4368) {
                    sendMeetingCallBack("{\"evt\":\"disconnected\"}");
                    this.callDirection = "in";
                    int i4 = AnonymousClass1.$SwitchMap$net$rtccloud$sdk$Rtcc$Status[this.status.ordinal()];
                    if (i4 == 2) {
                        teardown(Error.NETWORK_ERROR);
                    } else if (i4 == 3) {
                        updateStatus(Status.NETWORK_LOST);
                    } else if (i4 == 5) {
                        teardown();
                    }
                } else if (i3 == 4384) {
                    this.user.onBind(this);
                    sendMeetingCallBack("{\"evt\":\"connected\"}");
                } else if (i3 == 4432) {
                    int i5 = this.connectionRetryCount;
                    this.connectionRetryCount = i5 + 1;
                    if (i5 > 100) {
                        oldLogger.i("Maximum connection retry count reached, disconnecting to preserve battery.");
                        sendErrorReason();
                    } else {
                        oldLogger.i("Connection retry count = " + this.connectionRetryCount);
                    }
                    sendMeetingCallBack("{\"evt\":\"connectevent\",\"id\":18,\"desc\":\"USAP unreachable\"}");
                } else if (i3 == 4448) {
                    sendMeetingCallBack("{\"evt\":\"verifieduser\",\"state\":\"ok\"}");
                    sendMeetingCallBack("{\"evt\":\"connectevent\",\"id\":20,\"desc\":\"User authenticated\"}");
                } else if (i3 != 4519) {
                    if (i3 == 4480) {
                        sendMeetingCallBack("{\"evt\":\"checkcloudconnection\",\"status\":true}");
                    } else if (i3 == 4481) {
                        sendMeetingCallBack("{\"evt\":\"checkcloudconnection\",\"status\":false}");
                    } else if (i3 == 4515) {
                        sendMeetingCallBack("{\"evt\":\"connectevent\",\"id\":19,\"desc\":\"Bad HAP file\"}");
                        sendErrorReason();
                    } else if (i3 == 4516) {
                        sendMeetingCallBack("{\"evt\":\"connectevent\",\"id\":17,\"desc\":\"Fatal:Speed Test NOK\"}");
                        sendErrorReason();
                    } else if (i3 != 4544) {
                        if (i3 != 4545) {
                            oldLogger.w("eventCB(cmd=%s, param=%x, string=%s) status=%s Unknown param", Constants.Event.valueOf(i2), Integer.valueOf(i3), str, this.status);
                        } else {
                            disconnect(Error.NETWORK_ERROR);
                            sendMeetingCallBack("{\"evt\":\"sip\",\"state\":\"nok\"}");
                        }
                    } else {
                        if (this.status == Status.DISCONNECTING) {
                            return;
                        }
                        this.connectionRetryCount = 0;
                        Status status = this.status;
                        Status status2 = Status.CONNECTED;
                        if (status != status2) {
                            updateStatus(status2);
                        }
                        if (this.user != null) {
                            if (TextUtils.isEmpty(str)) {
                                this.user.updateDisplayName();
                            } else {
                                oldLogger.i("Overriding display name: " + str);
                                this.user.displayName(str);
                            }
                        }
                        sendMeetingCallBack("{\"evt\":\"sip\",\"state\":\"ok\"}");
                    }
                } else if (this.status == Status.CONNECTING) {
                    sendMeetingCallBack("{\"evt\":\"connectevent\",\"id\":15,\"desc\":\"Speed Test Ok\"}");
                    sendMeetingCallBack("{\"evt\":\"readyforauthentication\"}");
                    if (this.statsModule.realTimePlatformName() != null) {
                        sendMeetingCallBack("{\"evt\":\"set\",\"prop\":\"realtime\",\"value\": \"" + this.statsModule.realTimePlatformName() + "\"}");
                    }
                    if (!isMeeting()) {
                        authenticate();
                    }
                }
            } else if (i2 == 4608) {
                OldLogger oldLogger2 = log;
                String strValueOf = Constants.Event.valueOf(i2);
                Integer numValueOf = Integer.valueOf(i3);
                Error error = Error.BAD_CREDENTIALS;
                oldLogger2.i("eventCB(cmd=%s, param=%x, string=%s) error=%s", strValueOf, numValueOf, str, error.name(), this.status);
                if (i3 == 4640) {
                    sendMeetingCallBack("{\"evt\" : \"verifieduser\", \"error\": " + i3 + ", \"error_message\": \"Invalid authentication\"}");
                    sendMeetingCallBack("{\"evt\":\"connectevent\",\"id\":21,\"desc\":\"Bad user credentials\"}");
                }
                disconnect(error);
                teardown();
            } else if (i2 == 5376) {
                log.d("eventCB(cmd=%s, param=%x, string=%s) status=%s", Constants.Event.valueOf(i2), Integer.valueOf(i3), str, this.status);
            } else if (i2 != 5888) {
                log.w("eventCB(cmd=%x, param=%x, string=%s) status=%s Unknown cmd", Integer.valueOf(i2), Integer.valueOf(i3), str, this.status);
            } else {
                Logger.INSTANCE.d("MEDIALOGCHUNKAVAILABLE: " + str);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void jni_floorCB(int[] iArr) {
        try {
            OldLogger oldLogger = log;
            if (oldLogger.d()) {
                oldLogger.d("floorCB(%s)", Arrays.toString(iArr));
            }
            Call call = this.callModule.call;
            if (call != null) {
                call.conferenceModule.handleFloor(iArr);
                sendMeetingCallBack("{\"evt\": \"callstatus\", \"id\": " + call().get().id + ",\"sipCallId\": \"" + call().get().sipId + "\",\"type\": \"conference\",\"conference\": {\"floor\":" + iArr[0] + "} }");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void jni_jpegAvailable(byte[] bArr, int i2) {
        Bitmap bitmapCreateBitmap;
        try {
            Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
            int orientation = Exif.getOrientation(bArr);
            if (orientation == 90 || orientation == 180 || orientation == 270) {
                Matrix matrix = new Matrix();
                matrix.postRotate(orientation);
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeByteArray, bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight(), true);
                bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateScaledBitmap, 0, 0, bitmapCreateScaledBitmap.getWidth(), bitmapCreateScaledBitmap.getHeight(), matrix, true);
            } else {
                bitmapCreateBitmap = bitmapDecodeByteArray;
            }
            if (bitmapDecodeByteArray != null) {
                Call call = this.callModule.call;
                if (call != null) {
                    call.screenshareModule.updateReceivingStatus(true);
                }
                ProgressivexEvent progressivexEvent = new ProgressivexEvent(bitmapCreateBitmap, ProgressivexEvent.SOURCE_JPEG, i2);
                this.bus.post(progressivexEvent);
                sendMeetingProgressiveXEvent(progressivexEvent);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void jni_meetingpointCB(int i2, int i3, int i4, Object obj) {
        try {
            if (i2 == 12288) {
                log.d("meetingpointCB(cmd=%s, param=%s, data=%s)", Constants.MeetingPointEvent.valueOf(i2), Constants.MeetingPointConfig.valueOf(i3), String.valueOf(obj));
                this.meetingPointModule.handleConfig(i3, obj);
                if (obj instanceof MeetingPoint.DataDetails) {
                    sendMeetingCallBack("{\"status\":\"ok\",\"error\":\"\",\"evt\":\"meetingpointgot\",\"mpi\":\"" + ((MeetingPoint.DataDetails) obj).mpid + "\"}");
                }
            } else if (i2 == 12304) {
                log.d("meetingpointCB(cmd=%s, param=%s, data=%s)", Constants.MeetingPointEvent.valueOf(i2), Constants.MeetingPointControl.valueOf(i3), String.valueOf(obj));
                this.meetingPointModule.handleControl(i3, i4, obj);
            } else if (i2 != 12320) {
                log.w("meetingpointCB(cmd=%x, param=%x, data=%s) Unknown cmd", Integer.valueOf(i2), Integer.valueOf(i3), String.valueOf(obj));
            } else {
                log.d("meetingpointCB(cmd=%s, param=%s, data=%s)", Constants.MeetingPointEvent.valueOf(i2), Constants.MeetingPointControl.valueOf(i3), String.valueOf(obj));
                this.meetingPointModule.handleList(i3, i4, obj);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void jni_meetingpointErrorCB(int i2, int i3, String str, String str2) {
        try {
            if (i2 == 12288) {
                log.d("meetingpointErrorCB(cmd=%s, action=%s, mpid=%s, message=%s)", Constants.MeetingPointEvent.valueOf(i2), Constants.MeetingPointAction.valueOf(i3), str, str2);
            } else if (i2 != 12304) {
                log.w("meetingpointErrorCB(cmd=%x, action=%x, mpid=%s, message=%s) Unknown cmd", Integer.valueOf(i2), Integer.valueOf(i3), str, str2);
            } else {
                log.d("meetingpointErrorCB(cmd=%s, action=%s, mpid=%s, message=%s)", Constants.MeetingPointEvent.valueOf(i2), Constants.MeetingPointAction.valueOf(i3), str, str2);
                this.meetingPointModule.handleControlError(i2, i3, str, str2);
            }
            this.meetingPointModule.handleError(i2, i3, str, str2);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void jni_onAnalyticsReady(int i2) {
        try {
            RtccHelper.INSTANCE.onAnalyticsReady(this.analyticsRepository, this.analyticsUploadUrl, this.analyticsUploadToken, this.analyticsUuid, i2);
            if (isMeeting()) {
                sendMeetingBlobCallBack(i2, Jni.nDumpAnalyticsChunk().duplicate(), i2 == 1 ? "startup" : "mediastats");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void jni_participantCB(int i2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        try {
            OldLogger oldLogger = log;
            if (oldLogger.d()) {
                oldLogger.d("participantCB(id=%d, isDeafened=%b, isMuted=%b, isAdmin=%b, isSendingVideo=%b, isTalking=%b, isLocked=%b", Integer.valueOf(i2), Boolean.valueOf(z), Boolean.valueOf(z2), Boolean.valueOf(z3), Boolean.valueOf(z4), Boolean.valueOf(z5), Boolean.valueOf(z6));
            }
            Call call = this.callModule.call;
            if (call != null) {
                call.conferenceModule.handleParticipant(i2, z, z2, z3, z4, z5, z6);
                sendMeetingCallBack("{\"evt\": \"callstatus\", \"id\": " + call().get().id + ",\"sipCallId\": \"" + call().get().sipId + "\",\"type\": \"conference\",\"conference\": {\"participantsStatus\":" + ("[{ \"id\": " + i2 + ", \"mute\": " + z2 + ", \"deaf\": " + z + ", \"video\": " + z4 + ", \"lockas\": " + z6 + "}]") + "} }");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void jni_participantsCB(int i2, Participant[] participantArr) {
        try {
            OldLogger oldLogger = log;
            if (oldLogger.d()) {
                oldLogger.d("participantsCB(userId=%d, participants=%s)", Integer.valueOf(i2), Arrays.toString(participantArr));
            }
            Call call = this.callModule.call;
            if (call != null && participantArr != null) {
                call.conferenceModule.handleParticipants(i2, participantArr);
                String str = (String) Arrays.stream(participantArr).map(new aa(4)).collect(Collectors.joining(","));
                Optional optionalFindFirst = Arrays.stream(participantArr).filter(new jb(3)).findFirst();
                sendMeetingCallBack("{\"evt\": \"callstatus\", \"id\": " + call().get().id + ",\"sipCallId\": \"" + call().get().sipId + "\",\"type\": \"conference\",\"conference\": {\"participantList\":" + ("{\"hostId\": " + (optionalFindFirst.isPresent() ? ((Participant) optionalFindFirst.get()).id : -1) + ", \"myId\": " + i2 + ", \"participants\": [" + str + "]}") + ",\"participantsStatus\":" + ("[" + ((String) Arrays.stream(participantArr).map(new aa(5)).collect(Collectors.joining(","))) + "]") + "} }");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void jni_presenceCB(int i2, int i3, int i4, String str, boolean z) {
        OldLogger oldLogger = log;
        oldLogger.d("presenceCB(index=%d, value=%d, length=%d, uid=%s, isRoster=%b)", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), str, Boolean.valueOf(z));
        if (str == null) {
            oldLogger.d("[uid] must not be null");
            return;
        }
        this.presenceModule.handlePresence(i2, i3, i4, str, z);
        sendMeetingCallBack("{\"evt\":\"presenceburstupdate\", \"users\":[{\"presence\":" + i3 + ",\"uid\": \"" + str + "\"}]}");
    }

    public synchronized void jni_progressivexCB(int i2) {
        FrameCache frameCache = new FrameCache(1);
        Jni.nCallGetProgressivexFrame(frameCache);
        Frame frameLastFrame = frameCache.lastFrame();
        if (frameLastFrame != null) {
            ProgressivexEvent progressivexEvent = new ProgressivexEvent(frameLastFrame.bitmap, ProgressivexEvent.SOURCE_PROGRESSIVEX, i2);
            this.bus.post(progressivexEvent);
            sendMeetingProgressiveXEvent(progressivexEvent);
        }
    }

    public synchronized void jni_progressivexStop() {
        this.bus.post(new ProgressivexStopEvent());
    }

    public synchronized void jni_rosterCB(int i2, int i3) {
        log.d("rosterCB(delta=%d, rosterLength=%d)", Integer.valueOf(i2), Integer.valueOf(i3));
        this.presenceModule.handleRoster(i2, i3);
    }

    public synchronized void jni_shareCB(int i2, int i3) {
        try {
            switch (i2) {
                case Constants.Call.SHARE_START /* 37635 */:
                    log.d("shareCB(cmd=%s, param=%s)", Constants.Call.valueOf(i2), Constants.Direction.valueOf(i3));
                    sendMeetingShareCallback(i2, i3);
                    this.callModule.handleShareStartStop(i2, i3);
                    break;
                case Constants.Call.SHARE_STOP /* 37636 */:
                    log.d("shareCB(cmd=%s, param=%s)", Constants.Call.valueOf(i2), Constants.Direction.valueOf(i3));
                    sendMeetingShareCallback(i2, i3);
                    this.callModule.handleShareStartStop(i2, i3);
                    break;
                default:
                    log.w("shareCB(cmd=%x, param=%x) Unknown cmd", Integer.valueOf(i2), Integer.valueOf(i3));
                    break;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void jni_userRegistrationCB(int i2, int i3) {
        log.d("userRegistrationCB(status=%s, length=%d)", Constants.RegistrationStatus.valueOf(i2), Integer.valueOf(i3));
        this.user.handleRegistration(i2, i3);
        sendMeetingCallBack("{\"evt\": \"userregistered\",\"state\": " + i2 + " ,\"rosterlen\": " + i3 + "}");
        sendMeetingCallBack("{\"evt\":\"connectevent\",\"id\":22,\"desc\":\"User registered\"}");
    }

    public synchronized void jni_videoCB(int i2, int i3) {
        try {
            if (i2 == 37392) {
                log.d("videoCB(cmd=%s, param=%s)", Constants.Call.valueOf(i2), Constants.Profile.valueOf(i3));
                this.callModule.handleVideoProfile(i3);
            } else if (i2 == 37424 || i2 == 37440) {
                log.d("videoCB(cmd=%s, param=%s)", Constants.Call.valueOf(i2), Constants.Direction.valueOf(i3));
                this.callModule.handleVideoStartStop(i2, i3);
            } else {
                log.w("videoCB(cmd=%x, param=%x) Unknown cmd", Integer.valueOf(i2), Integer.valueOf(i3));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public MeetingPointModule meetingPoint() {
        return this.meetingPointModule;
    }

    public PresenceModule presence() {
        return this.presenceModule;
    }

    public void provideRtccJWT(String str) {
        this.rtccJwt = str;
    }

    public void resetFastMode() {
        this.nativeInterface.resetFastMode();
    }

    public RosterModule roster() {
        return this.rosterModule;
    }

    public void sendAvatar(String str, int i2, byte[] bArr) {
        if (call().call == null || call().call.isConference()) {
            return;
        }
        this.nativeInterface.sendAvatar(str, i2, bArr);
    }

    public int sendChat(String str, byte[] bArr, int i2) {
        return this.nativeInterface.sendChat(str, bArr, i2);
    }

    public void sendMeetingBlobCallBack(int i2, ByteBuffer byteBuffer, String str) {
        if (isMeeting()) {
            this.rtccMeetingCallBack.handleBlob(i2, byteBuffer, str);
        }
    }

    public void sendMeetingCallBack(String str) {
        if (isMeeting()) {
            this.rtccMeetingCallBack.muclState(str);
        }
    }

    public void sendMeetingCallEvent(CallEvent callEvent) {
        if (isMeeting()) {
            this.rtccMeetingCallBack.handleCommand(callEvent);
        }
    }

    public void sendMeetingDataChannelInBandEvent(byte[] bArr) {
        if (isMeeting()) {
            this.rtccMeetingCallBack.handleDataInBandChannel(bArr);
        }
    }

    public void sendParticipantCallBack(Participant[] participantArr) {
        if (isMeeting()) {
            this.rtccMeetingCallBack.handleParticipant(participantArr);
        }
    }

    public void setJsVersion(String str) {
        this.nativeInterface.setJsVersion(str, getJsUserAgent());
    }

    public void setRtccMeetingCallBack(RtccMeetingCallBack rtccMeetingCallBack) {
        this.rtccMeetingCallBack = rtccMeetingCallBack;
    }

    public void setUrlReferer(String str) {
        this.nativeInterface.setUrlReferer(str);
    }

    public void setVersion(String str, String str2, String str3) {
        this.nativeInterface.setVersion(str, str2, str3);
    }

    public void setupAnalytics(URL url, String str) {
        this.analyticsUploadUrl = url.toString();
        this.analyticsUploadToken = str;
    }

    public StatsModule stats() {
        return this.statsModule;
    }

    public Status status() {
        return this.status;
    }

    public int updateMetadata(String str, byte[] bArr, int i2) {
        return this.nativeInterface.updateMetadata(str, bArr, i2);
    }

    public int updateTS(String str, int i2) {
        return this.nativeInterface.updateTS(str, i2);
    }

    public User user() {
        return this.user;
    }

    public UtilsModule utils() {
        return this.utilsModule;
    }

    private void teardown(Error error) {
        this.pendingDisconnectionReason = error;
        teardown();
    }

    private void disconnect(Error error) {
        this.pendingDisconnectionReason = error;
        updateStatus(Status.DISCONNECTING);
        this.nativeInterface.disconnect();
    }
}
