package androidx.camera.video;

import android.view.Surface;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.video.internal.encoder.Encoder;
import androidx.camera.video.internal.encoder.EncoderFactory;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.hr0;
import defpackage.lc0;
import defpackage.mt;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class VideoEncoderSession {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Executor f2843a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f2844b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EncoderFactory f2845c;
    public Encoder d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Surface f2846e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SurfaceRequest f2847f = null;
    public Executor g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public hr0 f2848h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public VideoEncoderState f2849i = VideoEncoderState.NOT_INITIALIZED;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ListenableFuture f2850j = Futures.e(new IllegalStateException("Cannot close the encoder before configuring."));

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CallbackToFutureAdapter.Completer f2851k = null;
    public ListenableFuture l = Futures.e(new IllegalStateException("Cannot close the encoder before configuring."));
    public CallbackToFutureAdapter.Completer m = null;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class VideoEncoderState {
        private static final /* synthetic */ VideoEncoderState[] $VALUES;
        public static final VideoEncoderState INITIALIZING;
        public static final VideoEncoderState NOT_INITIALIZED;
        public static final VideoEncoderState PENDING_RELEASE;
        public static final VideoEncoderState READY;
        public static final VideoEncoderState RELEASED;

        static {
            VideoEncoderState videoEncoderState = new VideoEncoderState("NOT_INITIALIZED", 0);
            NOT_INITIALIZED = videoEncoderState;
            VideoEncoderState videoEncoderState2 = new VideoEncoderState("INITIALIZING", 1);
            INITIALIZING = videoEncoderState2;
            VideoEncoderState videoEncoderState3 = new VideoEncoderState("PENDING_RELEASE", 2);
            PENDING_RELEASE = videoEncoderState3;
            VideoEncoderState videoEncoderState4 = new VideoEncoderState("READY", 3);
            READY = videoEncoderState4;
            VideoEncoderState videoEncoderState5 = new VideoEncoderState("RELEASED", 4);
            RELEASED = videoEncoderState5;
            $VALUES = new VideoEncoderState[]{videoEncoderState, videoEncoderState2, videoEncoderState3, videoEncoderState4, videoEncoderState5};
        }

        public static VideoEncoderState valueOf(String str) {
            return (VideoEncoderState) Enum.valueOf(VideoEncoderState.class, str);
        }

        public static VideoEncoderState[] values() {
            return (VideoEncoderState[]) $VALUES.clone();
        }
    }

    public VideoEncoderSession(EncoderFactory encoderFactory, Executor executor, Executor executor2) {
        this.f2843a = executor2;
        this.f2844b = executor;
        this.f2845c = encoderFactory;
    }

    public final void a() {
        int iOrdinal = this.f2849i.ordinal();
        if (iOrdinal == 0 || iOrdinal == 1) {
            b();
            return;
        }
        if (iOrdinal == 2 || iOrdinal == 3) {
            Objects.toString(this.f2849i);
            Logger.c(3, "VideoEncoderSession");
            this.f2849i = VideoEncoderState.PENDING_RELEASE;
        } else if (iOrdinal == 4) {
            Logger.c(3, "VideoEncoderSession");
        } else {
            lc0.w("State ", this.f2849i, " is not handled");
        }
    }

    public final void b() {
        int iOrdinal = this.f2849i.ordinal();
        if (iOrdinal == 0) {
            this.f2849i = VideoEncoderState.RELEASED;
            return;
        }
        int i2 = 1;
        if (iOrdinal != 1 && iOrdinal != 2 && iOrdinal != 3) {
            VideoEncoderState videoEncoderState = this.f2849i;
            if (iOrdinal != 4) {
                mt.j("State ", videoEncoderState, " is not handled");
                return;
            } else {
                Objects.toString(videoEncoderState);
                Logger.c(3, "VideoEncoderSession");
                return;
            }
        }
        this.f2849i = VideoEncoderState.RELEASED;
        this.m.b(this.d);
        this.f2847f = null;
        Encoder encoder = this.d;
        if (encoder == null) {
            Logger.c(5, "VideoEncoderSession");
            this.f2851k.b(null);
            return;
        }
        Objects.toString(encoder);
        Logger.c(3, "VideoEncoderSession");
        this.d.release();
        this.d.d().addListener(new h(this, i2), this.f2844b);
        this.d = null;
    }

    public final String toString() {
        return "VideoEncoderSession@" + hashCode() + " for " + Objects.toString(this.f2847f, "SURFACE_REQUEST_NOT_CONFIGURED");
    }
}
