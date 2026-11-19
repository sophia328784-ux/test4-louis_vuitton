package com.sightcall.universal.internal.model;

import android.content.Context;
import android.os.Build;
import android.webkit.WebView;
import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.s.b;
import com.google.android.gms.internal.vision.zzk;
import com.google.android.gms.internal.vision.zzm;
import com.google.android.gms.vision.barcode.BarcodeDetector;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sightcall.pratik.extensions.ContextExtensionsKt;
import com.sightcall.pratik.utils.SdkUtilsKt;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import com.sightcall.universal.ar.ArCoreState;
import com.sightcall.universal.internal.ui.videoplayer.VideoProducerExtensionsKt;
import com.sightcall.universal.internal.view.MyVideoProducerCameraView;
import com.sightcall.universal.internal.view.UvcProducer;
import com.sightcall.universal.model.CallParameters;
import com.sightcall.universal.model.Moshi;
import com.sightcall.universal.model.Session;
import com.squareup.moshi.Json;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Participant;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.ScreenshareModule;
import net.rtccloud.sdk.ScreenshareProducer;
import net.rtccloud.sdk.VideoModule;
import net.rtccloud.sdk.VideoProducer;
import net.rtccloud.sdk.internal.view.ScreenshareProducerView;
import net.rtccloud.sdk.util.Utils;
import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes3.dex */
public class State {

    @Json(name = Payload.TYPE_APP)
    final App app;

    @Json(name = "ar")
    final ArCoreState ar;

    @Json(name = "camera")
    final Camera camera;

    @Json(name = b.a.f24015b)
    final int id;

    @Json(name = "live_qr")
    final boolean liveQr;

    @Json(name = "micro")
    final Micro micro;

    @Json(name = "os")
    final Os os;

    @Json(name = "player")
    final Player player;

    @Json(name = "product")
    final int productId;

    @Json(name = "role")
    final String role;

    @Json(name = "share")
    final Share share;

    @Json(name = "usecase")
    final int usecaseId;

    /* JADX INFO: renamed from: com.sightcall.universal.internal.model.State$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$model$Session$Role;

        static {
            int[] iArr = new int[Session.Role.values().length];
            $SwitchMap$com$sightcall$universal$model$Session$Role = iArr;
            try {
                iArr[Session.Role.HOST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$universal$model$Session$Role[Session.Role.ATTENDEE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sightcall$universal$model$Session$Role[Session.Role.GUEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class App {

        @Json(name = "name")
        final String name;

        @Json(name = b.a.f24015b)
        final String packageName;

        @Json(name = "version")
        final Version version;

        public static class Version {

            @Json(name = m.v)
            final int code;

            @Json(name = "name")
            final String name;

            public Version(String str, int i2) {
                this.name = str;
                this.code = i2;
            }

            public static Version create(Context context) {
                return new Version(ContextExtensionsKt.appVersionName(context), Utils.appVersionCode(context));
            }
        }

        public App(String str, String str2, Version version) {
            this.name = str;
            this.packageName = str2;
            this.version = version;
        }

        public static App create(Context context) {
            return new App(Utils.appName(context), context.getPackageName(), Version.create(context));
        }
    }

    public static class Camera {

        @Json(name = "paused")
        final boolean paused;

        @Json(name = Payload.SOURCE)
        final String source;

        @Json(name = StateMachine.StartListener.METHOD_NAME)
        final boolean started;

        @Json(name = "torch")
        final Torch torch;

        @Json(name = "usb")
        final boolean usb;

        @Json(name = "zoom")
        final int zoom;

        public static class Torch {

            @Json(name = "available")
            final boolean available;

            @Json(name = StateMachine.StartListener.METHOD_NAME)
            final boolean started;

            public Torch(boolean z, boolean z2) {
                this.started = z;
                this.available = z2;
            }

            public static Torch create(MyVideoProducerCameraView myVideoProducerCameraView) {
                return myVideoProducerCameraView == null ? new Torch(false, false) : new Torch(myVideoProducerCameraView.isFlashEnabled(), myVideoProducerCameraView.isFlashAvailable());
            }
        }

        public Camera(boolean z, boolean z2, Torch torch, String str, int i2, boolean z3) {
            this.started = z;
            this.paused = z2;
            this.torch = torch;
            this.source = str;
            this.zoom = i2;
            this.usb = z3;
        }

        public static Camera create(Call call) {
            if (call == null) {
                return null;
            }
            VideoModule videoModuleVideo = call.video();
            VideoProducer videoProducerProducer = videoModuleVideo.producer();
            if (videoModuleVideo.isSending()) {
                if (videoProducerProducer instanceof MyVideoProducerCameraView) {
                    MyVideoProducerCameraView myVideoProducerCameraView = (MyVideoProducerCameraView) videoProducerProducer;
                    return new Camera(myVideoProducerCameraView.isStarted(), myVideoProducerCameraView.isPaused(), Torch.create(myVideoProducerCameraView), getSource(myVideoProducerCameraView.getSource()), getZoom(myVideoProducerCameraView.getZoom()), false);
                }
                if (videoProducerProducer instanceof UvcProducer) {
                    UvcProducer uvcProducer = (UvcProducer) videoProducerProducer;
                    return new Camera(uvcProducer.isStarted(), uvcProducer.isPaused(), Torch.create(null), null, getZoom(uvcProducer.getZoom()), true);
                }
            }
            return new Camera(false, false, Torch.create(null), getSource(call.parameters().cameraSource()), 0, false);
        }

        private static String getSource(VideoModule.CameraSource cameraSource) {
            if (cameraSource == null) {
                return null;
            }
            return cameraSource.isFront() ? "front" : "rear";
        }

        private static int getZoom(float f2) {
            return Math.max(Math.min(Math.round(f2 * 100.0f), 100), 0);
        }
    }

    public static class Micro {

        @Json(name = StateMachine.StartListener.METHOD_NAME)
        final boolean started;

        public Micro(boolean z) {
            this.started = z;
        }

        public static Micro create(Call call) {
            if (call == null) {
                return null;
            }
            return new Micro(!call.audio().isRecorderMuted());
        }
    }

    public static class Os {

        @Json(name = "name")
        final String name;

        @Json(name = "type")
        final String type;

        @Json(name = "version")
        final Version version;

        public static class Version {

            @Json(name = m.v)
            final int code;

            @Json(name = "name")
            final String name;

            public Version(String str, int i2) {
                this.name = str;
                this.code = i2;
            }

            public static Version create() {
                return new Version(Build.VERSION.RELEASE, SdkUtilsKt.sdkVersion());
            }
        }

        public Os(String str, String str2, Version version) {
            this.name = str;
            this.type = str2;
            this.version = version;
        }

        public static Os create(Context context) {
            return new Os(ReferenceApiV3ConstKt.OS_NAME, (context.getResources().getConfiguration().screenLayout & 15) >= 3 ? "tablet" : "phone", Version.create());
        }
    }

    public static class Player {

        @Json(name = "paused")
        final boolean paused;

        @Json(name = "seek")
        final long seek;

        @Json(name = StateMachine.StartListener.METHOD_NAME)
        final boolean started;

        public Player(boolean z, boolean z2, long j2) {
            this.started = z;
            this.paused = z2;
            this.seek = j2;
        }

        public static Player create(Call call) {
            if (call == null) {
                return null;
            }
            VideoModule videoModuleVideo = call.video();
            VideoProducer videoProducerProducer = videoModuleVideo.producer();
            return (videoModuleVideo.isSending() && VideoProducerExtensionsKt.isMyVideoProducerPlayerView(videoProducerProducer)) ? VideoProducerExtensionsKt.toPlayer(videoProducerProducer) : new Player(false, false, 0L);
        }
    }

    public static class Share {

        @Json(name = "action")
        final String action;

        @Json(name = StateMachine.StartListener.METHOD_NAME)
        final boolean started;

        @Json(name = "type")
        final String type;

        @Json(name = ConfigurationName.DOWNLOAD_PLUGIN_URL)
        final String url;

        public Share(boolean z, String str, String str2, String str3) {
            this.started = z;
            this.type = str;
            this.url = str2;
            this.action = str3;
        }

        public static Share create(Session session, Call call) {
            if (call == null) {
                return null;
            }
            ScreenshareModule screenshareModuleScreenshare = call.screenshare();
            boolean zIsSending = screenshareModuleScreenshare.isSending();
            ScreenshareProducer screenshareProducerProducer = screenshareModuleScreenshare.producer();
            return new Share(zIsSending, getType(screenshareProducerProducer), getUrl(screenshareProducerProducer), getAction(session));
        }

        private static String getAction(Session session) {
            CallParameters callParameters = session.parameters;
            if (callParameters.isSharePromptDisplayed) {
                return "popup";
            }
            if (callParameters.isSharePictureGalleryDisplayed) {
                return "picture";
            }
            if (callParameters.isShareVideoGalleryDisplayed) {
                return "video";
            }
            if (callParameters.isShareViewFinderDisplayed) {
                return "photo";
            }
            return null;
        }

        private static String getType(ScreenshareProducer screenshareProducer) {
            if (screenshareProducer instanceof WebView) {
                return ConfigurationName.DOWNLOAD_PLUGIN_URL;
            }
            if (screenshareProducer instanceof ScreenshareProducerView) {
                return "picture photo";
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private static String getUrl(ScreenshareProducer screenshareProducer) {
            if (screenshareProducer instanceof WebView) {
                return ((WebView) screenshareProducer).getUrl();
            }
            return null;
        }
    }

    private State(int i2, String str, int i3, int i4, Camera camera, Micro micro, Player player, Share share, Os os, App app, ArCoreState arCoreState, boolean z) {
        this.id = i2;
        this.role = str;
        this.usecaseId = i3;
        this.productId = i4;
        this.camera = camera;
        this.micro = micro;
        this.player = player;
        this.share = share;
        this.os = os;
        this.app = app;
        this.ar = arCoreState;
        this.liveQr = z;
    }

    public static State create(Session session) {
        Rtcc rtccInstance = Rtcc.instance();
        Context context = rtccInstance.context();
        Call call = rtccInstance.call().get();
        int id = getId(call);
        String role = getRole(session);
        int usecaseId = getUsecaseId(session);
        int productId = getProductId(session);
        App appCreate = App.create(context);
        Os osCreate = Os.create(context);
        Share shareCreate = Share.create(session, call);
        Player playerCreate = Player.create(call);
        return new State(id, role, usecaseId, productId, Camera.create(call), Micro.create(call), playerCreate, shareCreate, osCreate, appCreate, ArCoreState.get(), isLiveQrAvailable(context));
    }

    private static int getId(Call call) {
        Participant participantMyself = (call == null || !call.isConference()) ? null : call.conference().myself();
        if (participantMyself != null) {
            return participantMyself.id();
        }
        return 0;
    }

    private static int getProductId(Session session) {
        Integer num;
        if (session == null || (num = session.usecase.productId) == null) {
            return 0;
        }
        return num.intValue();
    }

    private static String getRole(Session session) {
        if (session == null) {
            return null;
        }
        Session.Role role = session.config.role();
        if (role == null) {
            return "guest";
        }
        int i2 = AnonymousClass1.$SwitchMap$com$sightcall$universal$model$Session$Role[role.ordinal()];
        if (i2 != 1) {
            return i2 != 2 ? "guest" : "attendee";
        }
        return "host";
    }

    private static int getUsecaseId(Session session) {
        if (session == null) {
            return 0;
        }
        return session.usecase.idInt();
    }

    private static boolean isLiveQrAvailable(Context context) {
        BarcodeDetector.Builder builder = new BarcodeDetector.Builder(context);
        zzk zzkVar = builder.f32180b;
        zzkVar.f31233b = 0;
        return new BarcodeDetector(new zzm(builder.f32179a, zzkVar)).f32178a.b() != null;
    }

    public String toJson() {
        return Moshi.toJson(State.class, this);
    }
}
