package net.rtccloud.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.TrafficStats;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.text.format.DateUtils;
import com.linkplay.medialib.ContentTree;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import net.rtccloud.sdk.event.AnnotationTypeCommand;
import net.rtccloud.sdk.event.LiveTranslationNewSentence;
import net.rtccloud.sdk.event.call.SipEvent;
import net.rtccloud.sdk.event.call.StatusEvent;
import net.rtccloud.sdk.internal.Constants;
import net.rtccloud.sdk.internal.Preconditions;
import net.rtccloud.sdk.internal.RtccExceptions;
import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes4.dex */
public class Call {
    public static final int UNDEFINED_ID = -1;
    private long activeTimestamp;
    AnnotationTypeCommand annotationTypeCommand;
    final AudioModule audioModule;
    final CallModule callModule;
    final ConferenceModule conferenceModule;
    private BroadcastReceiver connectivityReceiver;
    private EndReason endReason;
    private long endTimestamp;
    final FrameFetcher frameFetcher;
    private boolean hasRequestedHangup;
    int id;
    private boolean isEscalating;
    String key;
    LiveTranslationNewSentence liveTranslationNewSentenceCallback;
    private final OldLogger log;
    final Native nativeInterface;
    Parameters parameters;
    private Participant participant;
    final Sink.Progressivex progressivexSink;
    private boolean progressivexStarted;
    private final Traffic referenceTraffic;
    private RemoteType remoteType;
    private final Rtcc rtcc;
    final ScreenshareModule screenshareModule;
    final Sink.Screenshare screenshareSink;
    String sipId;
    private final long startTimestamp;
    Status status;
    private Traffic traffic;
    Type type;
    private boolean useNgaSVG;
    final VideoModule videoModule;
    final Sink.Video videoSink;

    public enum Control {
        START(16640),
        STARTNOVIDEO(16880),
        STOP(16896),
        STARTVIDEO(17152),
        STOPVIDEO(17408),
        JOIN(17664),
        SWITCH(17920),
        PROFILESD(18176),
        PROFILEMD(18432),
        PROFILEHD(18688),
        LOCKPROFILE(18816),
        UNLOCKPROFILE(18832),
        HOLD(18944),
        RESUME(19200),
        STARTSHARE(19456),
        STOPSHARE(19712),
        STOPRECORD(20027),
        PAUSERECORD(20028),
        RESUMERECORD(20029),
        BOOKMARK(20030);

        private final int value;

        Control(int i2) {
            this.value = i2;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public enum EndReason {
        LOCAL,
        REMOTE,
        DEAD_PARTY,
        UNEXPECTED
    }

    public interface Native {
        public static final Native JNI = new Native() { // from class: net.rtccloud.sdk.Call.Native.1
            private final ExecutorService executorService = Executors.newSingleThreadExecutor();

            @Override // net.rtccloud.sdk.Call.Native
            public void control(final Control control, final int i2, final int i3) {
                this.executorService.execute(new Runnable() { // from class: net.rtccloud.sdk.Call.Native.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Jni.nSendCallControl(control.value, i2, i3);
                    }
                });
            }

            @Override // net.rtccloud.sdk.Call.Native
            public ExecutorService executor() {
                return this.executorService;
            }

            @Override // net.rtccloud.sdk.Call.Native
            public QualityIndicator qualityIndicator() {
                return Jni.nGetCallQualityIndicator();
            }

            @Override // net.rtccloud.sdk.Call.Native
            public boolean startTranslation() {
                return Jni.nStartTranslation();
            }

            @Override // net.rtccloud.sdk.Call.Native
            public boolean stopTranslation() {
                return Jni.nStopTranslation();
            }
        };

        void control(Control control, int i2, int i3);

        ExecutorService executor();

        QualityIndicator qualityIndicator();

        boolean startTranslation();

        boolean stopTranslation();
    }

    public static class QualityIndicator {
        public final int local;
        public final int remote;

        private QualityIndicator(int i2, int i3) {
            this.local = i2;
            this.remote = i3;
        }

        public static QualityIndicator create(int i2, int i3) {
            return new QualityIndicator(i2, i3);
        }
    }

    public enum RemoteType {
        UNKNOWN,
        WEBRTC,
        DRIVER
    }

    public static class Stats {
        public long audioPacketLossIn;
        public long audioPacketMissed;
        public int cpu;
        public long timestamp;
        public float videoGrabRate;
        public int videoHeightIn;
        public int videoHeightOut;
        public long videoIpThroughputIn;
        public long videoIpThroughputOut;
        public int videoJitterIn;
        public long videoPacketLossIn;
        public float videoRateIn;
        public float videoRateOut;
        public int videoWidthIn;
        public int videoWidthOut;
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class StatsHistory {
        final List<Entry> entries = new ArrayList(100);

        public static abstract class Entry {
            public final int timestamp;

            public Entry(int i2) {
                this.timestamp = i2;
            }
        }

        public static class Fps extends Entry {
            public final int gfps;
            public final int rfps;
            public final int sfps;

            public Fps(int i2, int i3, int i4, int i5) {
                super(i2);
                this.gfps = i3;
                this.sfps = i4;
                this.rfps = i5;
            }
        }

        public static class Nqi extends Entry {
            public final int localAudio;
            public final int localVideo;
            public final int remoteAudio;
            public final int remoteVideo;

            public Nqi(int i2, int i3, int i4, int i5, int i6) {
                super(i2);
                this.localAudio = i3;
                this.localVideo = i4;
                this.remoteAudio = i5;
                this.remoteVideo = i6;
            }
        }

        public void add(Entry entry) {
            this.entries.add(entry);
        }

        public void addFps(int i2, int i3, int i4, int i5) {
            add(new Fps(i2, i3, i4, i5));
        }

        public void addNqi(int i2, int i3, int i4, int i5, int i6) {
            add(new Nqi(i2, i3, i4, i5, i6));
        }

        public List<Entry> entries() {
            return this.entries;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public enum Status {
        CREATING,
        RINGING,
        PROCEEDING,
        ACTIVE,
        ENDED
    }

    public enum Type {
        UNKNOWN,
        CALL_OUTBOUND,
        CALL_INBOUND,
        CONFERENCE_HOST,
        CONFERENCE_ATTENDEE
    }

    public Call(Rtcc rtcc, CallModule callModule, Native r6, String str, Type type, Parameters parameters) {
        this.log = OldLogger.get(OldLogger.Internal.CALL);
        this.useNgaSVG = false;
        this.progressivexStarted = false;
        this.id = -1;
        this.status = Status.CREATING;
        this.type = Type.UNKNOWN;
        this.parameters = new Parameters();
        this.referenceTraffic = new Traffic();
        this.startTimestamp = SystemClock.elapsedRealtime();
        this.activeTimestamp = 0L;
        this.endTimestamp = 0L;
        this.remoteType = RemoteType.UNKNOWN;
        this.hasRequestedHangup = false;
        this.isEscalating = false;
        this.annotationTypeCommand = null;
        this.liveTranslationNewSentenceCallback = null;
        this.rtcc = rtcc;
        this.callModule = callModule;
        this.nativeInterface = r6;
        this.key = str;
        this.parameters = new Parameters(parameters);
        this.type = type;
        this.videoSink = new Sink.Video(rtcc, this);
        this.screenshareSink = new Sink.Screenshare(rtcc, this);
        this.progressivexSink = new Sink.Progressivex(rtcc, this);
        FrameFetcher frameFetcher = new FrameFetcher(this);
        this.frameFetcher = frameFetcher;
        this.videoModule = new VideoModule(rtcc, this, frameFetcher);
        this.screenshareModule = new ScreenshareModule(rtcc, this, frameFetcher);
        this.audioModule = new AudioModule(rtcc, this, AudioModule.Native.JNI);
        this.conferenceModule = new ConferenceModule(rtcc, this, ConferenceModule.Native.JNI);
        rtcc.bus.post(new StatusEvent(this, this.status));
    }

    private void _accept(Parameters parameters) {
        if (Preconditions.enforceRtccStatus(this.log, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceCallStatus(this.log, this, Status.RINGING)) {
            this.parameters = new Parameters(parameters);
            startInternal();
        }
    }

    private void registerConnectivityReceiver() {
        this.connectivityReceiver = new BroadcastReceiver() { // from class: net.rtccloud.sdk.Call.2
            private int lastType = getCurrentType();

            private int getCurrentType() {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) Call.this.rtcc.context().getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    return activeNetworkInfo.getType();
                }
                return -1;
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
                    return;
                }
                Call.this.log.d(activeNetworkInfo.toString());
                this.lastType = activeNetworkInfo.getType();
            }
        };
        this.rtcc.context().registerReceiver(this.connectivityReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    private void startInternal() {
        boolean zVideo = this.parameters.video();
        Native r1 = this.nativeInterface;
        if (zVideo) {
            r1.control(Control.START, this.id, -1);
        } else {
            r1.control(Control.STARTNOVIDEO, this.id, -1);
        }
    }

    public void accept(Parameters parameters) {
        if (this.log.d()) {
            this.log.d("accept(parameters=%s)", parameters);
        }
        if (parameters == null) {
            throw RtccExceptions.newNullPointerException("[parameters] must not be null");
        }
        _accept(parameters);
    }

    public void activateSvgAnnotation() {
        AnnotationTypeCommand annotationTypeCommand = this.annotationTypeCommand;
        if (annotationTypeCommand != null) {
            annotationTypeCommand.driven();
        }
    }

    public long activeDuration() {
        if (this.activeTimestamp == 0) {
            return 0L;
        }
        long jElapsedRealtime = this.endTimestamp;
        if (jElapsedRealtime == 0) {
            jElapsedRealtime = SystemClock.elapsedRealtime();
        }
        return jElapsedRealtime - this.activeTimestamp;
    }

    public AudioModule audio() {
        return this.audioModule;
    }

    public ConferenceModule conference() {
        return this.conferenceModule;
    }

    public void created(int i2, int i3, String str) {
        if (Preconditions.enforceCallStatus(this.log, this, Status.CREATING)) {
            this.id = i2;
            this.key = str;
            Type type = this.type;
            Type type2 = Type.CONFERENCE_ATTENDEE;
            if (type == type2 && i3 == 65535) {
                this.type = Type.CALL_OUTBOUND;
            }
            if (!isConference()) {
                this.participant = Participant.createRemote(this.rtcc, this, str);
            }
            if (this.hasRequestedHangup) {
                this.log.d("Call created, but hangup was requested before");
                this.nativeInterface.control(Control.STOP, i2, 0);
                return;
            }
            Type type3 = this.type;
            if (type3 == Type.CALL_OUTBOUND || type3 == type2 || type3 == Type.CONFERENCE_HOST) {
                if (!this.rtcc.isMeeting()) {
                    startInternal();
                }
                this.audioModule.muteRecorder(false, true);
            }
        }
    }

    public void deactivateSvgAnnotation() {
        AnnotationTypeCommand annotationTypeCommand = this.annotationTypeCommand;
        if (annotationTypeCommand != null) {
            annotationTypeCommand.standalone();
        }
    }

    public void deny() {
        this.log.d("deny()");
        if (Preconditions.enforceRtccStatus(this.log, this.rtcc, Rtcc.Status.CONNECTED, Rtcc.Status.NETWORK_LOST) && Preconditions.enforceCallStatus(this.log, this, Status.RINGING)) {
            this.hasRequestedHangup = true;
            this.nativeInterface.control(Control.STOP, this.id, 0);
        }
    }

    public long duration() {
        long jElapsedRealtime = this.endTimestamp;
        if (jElapsedRealtime == 0) {
            jElapsedRealtime = SystemClock.elapsedRealtime();
        }
        return jElapsedRealtime - this.startTimestamp;
    }

    public void end() {
        Participant participant = this.participant;
        if (participant != null) {
            participant.teardown();
            this.participant = null;
        }
        if (this.connectivityReceiver != null) {
            this.rtcc.context().unregisterReceiver(this.connectivityReceiver);
            this.connectivityReceiver = null;
        }
        this.conferenceModule.teardown();
        this.videoModule.teardown();
        this.screenshareModule.teardown();
        this.audioModule.teardown();
        this.videoSink.teardown();
        this.screenshareSink.teardown();
        this.frameFetcher.teardown();
        this.callModule.reset();
    }

    public EndReason endReason() {
        return this.endReason;
    }

    public Sink.Progressivex getProgressivexSink() {
        return this.progressivexSink;
    }

    public void hangup() {
        this.log.d("hangup()");
        if (Preconditions.enforceRtccStatus(this.log, this.rtcc, Rtcc.Status.CONNECTED, Rtcc.Status.NETWORK_LOST) && Preconditions.enforceCallStatus(this.log, this, Status.CREATING, Status.PROCEEDING, Status.RINGING, Status.ACTIVE)) {
            this.hasRequestedHangup = true;
            int i2 = this.id;
            if (i2 == -1) {
                this.log.d("Call not yet created, requesting hangup on next status");
            } else {
                this.nativeInterface.control(Control.STOP, i2, 0);
            }
        }
    }

    public int id() {
        return this.id;
    }

    public boolean isConference() {
        Type type = this.type;
        return type == Type.CONFERENCE_HOST || type == Type.CONFERENCE_ATTENDEE;
    }

    public boolean isEscalating() {
        return this.isEscalating;
    }

    public boolean isProgressivex() {
        return this.progressivexStarted;
    }

    public void joinMVS() {
        this.isEscalating = true;
        this.nativeInterface.control(Control.JOIN, this.id, 0);
        this.type = Type.CONFERENCE_HOST;
        this.audioModule.muteRecorder(false, true);
    }

    public String key() {
        return this.key;
    }

    public Parameters parameters() {
        return this.parameters;
    }

    public Participant participant() {
        return this.participant;
    }

    public void progressivexStart() {
        this.progressivexStarted = true;
    }

    public void progressivexStop() {
        this.progressivexStarted = false;
    }

    public QualityIndicator qualityIndicator() {
        if (Preconditions.enforceCallStatus(this.log, this, Status.ACTIVE)) {
            return this.nativeInterface.qualityIndicator();
        }
        return null;
    }

    public RemoteType remoteType() {
        return this.remoteType;
    }

    public Rtcc rtcc() {
        return this.rtcc;
    }

    public ScreenshareModule screenshare() {
        return this.screenshareModule;
    }

    public void setAnnotationTypeCallback(AnnotationTypeCommand annotationTypeCommand) {
        this.annotationTypeCommand = annotationTypeCommand;
    }

    public void setLiveTranslationNewSentenceCallback(LiveTranslationNewSentence liveTranslationNewSentence) {
        this.liveTranslationNewSentenceCallback = liveTranslationNewSentence;
    }

    public void setUseNgaSVG(boolean z) {
        this.useNgaSVG = z;
    }

    public String sipId() {
        return this.sipId;
    }

    public void start() {
        this.nativeInterface.control(Control.START, this.id, -1);
    }

    public void startNoVideo() {
        this.nativeInterface.control(Control.STARTNOVIDEO, this.id, -1);
    }

    public boolean startTranslation() {
        return this.nativeInterface.startTranslation();
    }

    public Stats stats() {
        Stats stats = new Stats();
        stats.timestamp = System.currentTimeMillis();
        return stats;
    }

    public Status status() {
        return this.status;
    }

    public boolean stopTranslation() {
        return this.nativeInterface.stopTranslation();
    }

    public String toString() {
        return "Call{id=" + this.id + ", key='" + this.key + "', status=" + this.status + ", type=" + this.type + ", sipId='" + this.sipId + "', remoteType=" + this.remoteType + ", endReason=" + this.endReason + ", traffic=" + traffic() + ", duration=" + DateUtils.formatElapsedTime(duration() / 1000) + ", activeDuration=" + DateUtils.formatElapsedTime(activeDuration() / 1000) + '}';
    }

    public Traffic traffic() {
        Traffic traffic = this.traffic;
        return traffic != null ? traffic : new Traffic(this.referenceTraffic);
    }

    public Type type() {
        return this.type;
    }

    public void updateSipId(String str) {
        this.sipId = str;
        this.rtcc.bus.post(new SipEvent(this, str));
    }

    public void updateStatus(int i2) {
        Status status;
        if (this.log.d()) {
            this.log.d("updateStatus(status=%s)", Constants.CallStatus.valueOf(i2));
        }
        if (i2 == 28960) {
            status = Status.RINGING;
        } else if (i2 != 29008) {
            if (i2 != 29040) {
                switch (i2) {
                    case Constants.CallStatus.ACTIVE /* 28976 */:
                        this.log.d("Waiting for secondary ACTIVE callback");
                        break;
                    case Constants.CallStatus.ACTIVE_WEBRTC /* 28977 */:
                    case Constants.CallStatus.ACTIVE_DRIVER /* 28978 */:
                        if (i2 == 28977) {
                            this.remoteType = RemoteType.WEBRTC;
                        }
                        if (i2 == 28978) {
                            this.remoteType = RemoteType.DRIVER;
                        }
                        status = Status.ACTIVE;
                        this.activeTimestamp = SystemClock.elapsedRealtime();
                        registerConnectivityReceiver();
                        break;
                    default:
                        switch (i2) {
                            case Constants.CallStatus.ENDED /* 28992 */:
                            case Constants.CallStatus.LOCAL_ENDED /* 28993 */:
                            case Constants.CallStatus.DEAD_PARTY /* 28994 */:
                                status = Status.ENDED;
                                switch (i2) {
                                    case Constants.CallStatus.ENDED /* 28992 */:
                                        this.endReason = EndReason.REMOTE;
                                        break;
                                    case Constants.CallStatus.LOCAL_ENDED /* 28993 */:
                                        this.endReason = this.hasRequestedHangup ? EndReason.LOCAL : EndReason.UNEXPECTED;
                                        break;
                                    case Constants.CallStatus.DEAD_PARTY /* 28994 */:
                                        this.endReason = EndReason.DEAD_PARTY;
                                        break;
                                    default:
                                        this.endReason = EndReason.UNEXPECTED;
                                        break;
                                }
                                this.endTimestamp = SystemClock.elapsedRealtime();
                                this.traffic = new Traffic(this.referenceTraffic);
                                this.log.i(toString());
                                end();
                                break;
                            default:
                                this.log.i("updateStatus(status=%s) Unknown status", Integer.valueOf(i2));
                                break;
                        }
                        break;
                }
                return;
            }
            this.isEscalating = true;
            status = null;
        } else {
            status = Status.PROCEEDING;
        }
        if (status == null || status == this.status) {
            return;
        }
        this.status = status;
        this.rtcc.bus.post(new StatusEvent(this, status));
        if (status == Status.ACTIVE) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: net.rtccloud.sdk.Call.1
                @Override // java.lang.Runnable
                public void run() {
                    Call.this.isEscalating = false;
                }
            });
        }
    }

    public boolean useNgaSVG() {
        return this.useNgaSVG;
    }

    public VideoModule video() {
        return this.videoModule;
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class Parameters {
        public static final boolean DEFAULT_AUDIO = true;
        public static final boolean DEFAULT_CAMERA_AUTOFOCUS = true;
        public static final String DEFAULT_CAMERA_EFFECT = "none";
        public static final boolean DEFAULT_CAMERA_FLASH = false;
        public static final VideoModule.CameraSource DEFAULT_CAMERA_SOURCE;
        public static final boolean DEFAULT_CAMERA_STABILIZATION = true;
        public static final float DEFAULT_CAMERA_ZOOM = 0.0f;
        public static final ScreenshareModule.Profile DEFAULT_SHARE_PROFILE;
        public static final int DEFAULT_UID_TYPE = 0;
        public static final boolean DEFAULT_VIDEO = true;
        public static final int DEFAULT_VIDEO_FRAMERATE = 30;
        public static final VideoModule.Profile DEFAULT_VIDEO_PROFILE = VideoModule.Profile.VGA;
        private static final String KEY_AUDIO = "audio";
        private static final String KEY_CAMERA_AUTOFOCUS = "camera.autofocus";
        private static final String KEY_CAMERA_EFFECT = "camera.effect";
        private static final String KEY_CAMERA_FLASH = "camera.flash";
        private static final String KEY_CAMERA_SOURCE = "camera.source";
        private static final String KEY_CAMERA_STABILIZATION = "camera.stabilization";
        private static final String KEY_CAMERA_ZOOM = "camera.zoom";
        private static final String KEY_SHARE_PROFILE = "share.profile";
        private static final String KEY_UID_TYPE = "uid.type";
        private static final String KEY_VIDEO = "video";
        private static final String KEY_VIDEO_FRAMERATE = "video.framerate";
        private static final String KEY_VIDEO_PROFILE = "video.profile";
        public static final int UID_TYPE_EXTERNAL = 1;
        public static final int UID_TYPE_INTERNAL = 0;
        private final Bundle data;

        static {
            VideoModule.CameraSource firstAvailable = VideoModule.CameraSource.BACK;
            if (firstAvailable == null) {
                firstAvailable = VideoModule.CameraSource.getFirstAvailable();
            }
            DEFAULT_CAMERA_SOURCE = firstAvailable;
            DEFAULT_SHARE_PROFILE = ScreenshareModule.Profile.HD_1080;
        }

        public Parameters(Parameters parameters) {
            Bundle bundle = new Bundle();
            this.data = bundle;
            if (parameters != null) {
                bundle.putAll(parameters.data);
            }
        }

        public boolean audio() {
            return this.data.getBoolean(KEY_AUDIO, true);
        }

        public boolean cameraAutofocus() {
            return this.data.getBoolean(KEY_CAMERA_AUTOFOCUS, true);
        }

        public String cameraEffect() {
            return this.data.getString(KEY_CAMERA_EFFECT, "none");
        }

        public boolean cameraFlash() {
            return this.data.getBoolean(KEY_CAMERA_FLASH, false);
        }

        public VideoModule.CameraSource cameraSource() {
            VideoModule.CameraSource cameraSource = (VideoModule.CameraSource) this.data.getParcelable(KEY_CAMERA_SOURCE);
            return cameraSource == null ? DEFAULT_CAMERA_SOURCE : cameraSource;
        }

        public boolean cameraStabilization() {
            return this.data.getBoolean(KEY_CAMERA_STABILIZATION, true);
        }

        public float cameraZoom() {
            return this.data.getFloat(KEY_CAMERA_ZOOM, DEFAULT_CAMERA_ZOOM);
        }

        public Bundle extras() {
            Bundle bundle = this.data.getBundle("extras");
            if (bundle != null) {
                return bundle;
            }
            Bundle bundle2 = new Bundle();
            this.data.putBundle("extras", bundle2);
            return bundle2;
        }

        public ScreenshareModule.Profile shareProfile() {
            ScreenshareModule.Profile profile = (ScreenshareModule.Profile) this.data.get(KEY_SHARE_PROFILE);
            return profile == null ? DEFAULT_SHARE_PROFILE : profile;
        }

        public String toString() {
            return this.data.toString();
        }

        public int uidType() {
            return this.data.getInt(KEY_UID_TYPE, 0);
        }

        public boolean video() {
            return this.data.getBoolean(KEY_VIDEO, true);
        }

        public int videoFramerate() {
            return this.data.getInt(KEY_VIDEO_FRAMERATE, 30);
        }

        public VideoModule.Profile videoProfile() {
            VideoModule.Profile profile = (VideoModule.Profile) this.data.get(KEY_VIDEO_PROFILE);
            return profile == null ? DEFAULT_VIDEO_PROFILE : profile;
        }

        public Parameters audio(boolean z) {
            this.data.putBoolean(KEY_AUDIO, z);
            return this;
        }

        public Parameters cameraAutofocus(boolean z) {
            this.data.putBoolean(KEY_CAMERA_AUTOFOCUS, z);
            return this;
        }

        public Parameters cameraFlash(boolean z) {
            this.data.putBoolean(KEY_CAMERA_FLASH, z);
            return this;
        }

        public Parameters cameraStabilization(boolean z) {
            this.data.putBoolean(KEY_CAMERA_STABILIZATION, z);
            return this;
        }

        public Parameters cameraZoom(float f2) {
            this.data.putFloat(KEY_CAMERA_ZOOM, f2);
            return this;
        }

        public Parameters uidType(int i2) {
            this.data.putInt(KEY_UID_TYPE, i2);
            return this;
        }

        public Parameters video(boolean z) {
            this.data.putBoolean(KEY_VIDEO, z);
            return this;
        }

        public Parameters cameraEffect(String str) {
            this.data.putString(KEY_CAMERA_EFFECT, str);
            return this;
        }

        public Parameters videoFramerate(int i2) {
            this.data.putInt(KEY_VIDEO_FRAMERATE, i2);
            return this;
        }

        public Parameters cameraSource(VideoModule.CameraSource cameraSource) {
            this.data.putParcelable(KEY_CAMERA_SOURCE, cameraSource);
            return this;
        }

        public Parameters shareProfile(ScreenshareModule.Profile profile) {
            this.data.putSerializable(KEY_SHARE_PROFILE, profile);
            return this;
        }

        public Parameters videoProfile(VideoModule.Profile profile) {
            this.data.putSerializable(KEY_VIDEO_PROFILE, profile);
            return this;
        }

        public Parameters() {
            this.data = new Bundle();
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class Traffic {
        public final long rx;
        public final long tx;

        public Traffic(Traffic traffic) {
            int iMyUid = Process.myUid();
            this.rx = TrafficStats.getUidRxBytes(iMyUid) - traffic.rx;
            this.tx = TrafficStats.getUidTxBytes(iMyUid) - traffic.tx;
        }

        public static String bytes2size(long j2) {
            if (j2 <= 0) {
                return ContentTree.ROOT_ID;
            }
            String[] strArr = {NBSSpanMetricUnit.Byte, NBSSpanMetricUnit.Kilobytes, NBSSpanMetricUnit.Megabytes, "GB", "TB", "PB", "EB"};
            double d = j2;
            int iLog10 = (int) (Math.log10(d) / Math.log10(1024.0d));
            return new DecimalFormat("#,##0.#").format(d / Math.pow(1024.0d, iLog10)) + " " + strArr[iLog10];
        }

        public String toString() {
            return "Traffic{rx=" + bytes2size(this.rx) + ", tx=" + bytes2size(this.tx) + '}';
        }

        public Traffic() {
            int iMyUid = Process.myUid();
            this.rx = TrafficStats.getUidRxBytes(iMyUid);
            this.tx = TrafficStats.getUidTxBytes(iMyUid);
        }
    }

    public void accept() {
        if (this.log.d()) {
            this.log.d("accept()");
        }
        _accept(new Parameters());
    }

    public Call(Rtcc rtcc, CallModule callModule, AudioModule audioModule, VideoModule videoModule, ScreenshareModule screenshareModule, ConferenceModule conferenceModule, Sink.Video video, Sink.Screenshare screenshare, Sink.Progressivex progressivex, FrameFetcher frameFetcher, Native r14) {
        this.log = OldLogger.get(OldLogger.Internal.CALL);
        this.useNgaSVG = false;
        this.progressivexStarted = false;
        this.id = -1;
        this.status = Status.CREATING;
        this.type = Type.UNKNOWN;
        this.parameters = new Parameters();
        this.referenceTraffic = new Traffic();
        this.startTimestamp = SystemClock.elapsedRealtime();
        this.activeTimestamp = 0L;
        this.endTimestamp = 0L;
        this.remoteType = RemoteType.UNKNOWN;
        this.hasRequestedHangup = false;
        this.isEscalating = false;
        this.annotationTypeCommand = null;
        this.liveTranslationNewSentenceCallback = null;
        this.rtcc = rtcc;
        this.callModule = callModule;
        this.audioModule = audioModule;
        this.videoModule = videoModule;
        this.screenshareModule = screenshareModule;
        this.conferenceModule = conferenceModule;
        this.videoSink = video;
        this.screenshareSink = screenshare;
        this.progressivexSink = progressivex;
        this.frameFetcher = frameFetcher;
        this.nativeInterface = r14;
    }

    public Call(Rtcc rtcc, CallModule callModule, Native r6, int i2, String str) {
        this.log = OldLogger.get(OldLogger.Internal.CALL);
        this.useNgaSVG = false;
        this.progressivexStarted = false;
        this.id = -1;
        this.status = Status.CREATING;
        this.type = Type.UNKNOWN;
        this.parameters = new Parameters();
        this.referenceTraffic = new Traffic();
        this.startTimestamp = SystemClock.elapsedRealtime();
        this.activeTimestamp = 0L;
        this.endTimestamp = 0L;
        this.remoteType = RemoteType.UNKNOWN;
        this.hasRequestedHangup = false;
        this.isEscalating = false;
        this.annotationTypeCommand = null;
        this.liveTranslationNewSentenceCallback = null;
        this.rtcc = rtcc;
        this.callModule = callModule;
        this.nativeInterface = r6;
        this.key = str;
        this.id = i2;
        this.type = Type.CALL_INBOUND;
        this.videoSink = new Sink.Video(rtcc, this);
        this.screenshareSink = new Sink.Screenshare(rtcc, this);
        this.progressivexSink = new Sink.Progressivex(rtcc, this);
        FrameFetcher frameFetcher = new FrameFetcher(this);
        this.frameFetcher = frameFetcher;
        this.videoModule = new VideoModule(rtcc, this, frameFetcher);
        this.screenshareModule = new ScreenshareModule(rtcc, this, frameFetcher);
        this.audioModule = new AudioModule(rtcc, this, AudioModule.Native.JNI);
        this.conferenceModule = new ConferenceModule(rtcc, this, ConferenceModule.Native.JNI);
        rtcc.bus.post(new StatusEvent(this, this.status));
    }
}
