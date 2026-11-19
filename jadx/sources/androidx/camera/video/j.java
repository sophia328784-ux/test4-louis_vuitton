package androidx.camera.video;

import android.view.Surface;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.video.internal.encoder.Encoder;
import androidx.camera.video.internal.encoder.EncoderImpl;
import androidx.camera.video.internal.encoder.InvalidConfigException;
import androidx.camera.video.internal.encoder.VideoEncoderConfig;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Consumer;
import defpackage.lc0;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j implements CallbackToFutureAdapter.Resolver, Encoder.SurfaceInput.OnSurfaceUpdateListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ VideoEncoderSession f3124b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SurfaceRequest f3125c;
    public final /* synthetic */ Object d;

    public /* synthetic */ j(VideoEncoderSession videoEncoderSession, SurfaceRequest surfaceRequest, VideoEncoderConfig videoEncoderConfig) {
        this.f3124b = videoEncoderSession;
        this.f3125c = surfaceRequest;
        this.d = videoEncoderConfig;
    }

    @Override // androidx.camera.video.internal.encoder.Encoder.SurfaceInput.OnSurfaceUpdateListener
    public void a(Surface surface) {
        Executor executor;
        CallbackToFutureAdapter.Completer completer = (CallbackToFutureAdapter.Completer) this.d;
        final VideoEncoderSession videoEncoderSession = this.f3124b;
        int iOrdinal = videoEncoderSession.f2849i.ordinal();
        int i2 = 3;
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                SurfaceRequest surfaceRequest = this.f3125c;
                if (surfaceRequest.f1978h.isDone()) {
                    Objects.toString(surfaceRequest, "EMPTY");
                    Logger.c(3, "VideoEncoderSession");
                    completer.b(null);
                    videoEncoderSession.a();
                    return;
                }
                videoEncoderSession.f2846e = surface;
                Objects.toString(surface);
                Logger.c(3, "VideoEncoderSession");
                surfaceRequest.a(surface, videoEncoderSession.f2844b, new Consumer() { // from class: androidx.camera.video.k
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        SurfaceRequest.Result result = (SurfaceRequest.Result) obj;
                        result.b().hashCode();
                        Logger.c(3, "VideoEncoderSession");
                        Surface surfaceB = result.b();
                        VideoEncoderSession videoEncoderSession2 = videoEncoderSession;
                        if (surfaceB != videoEncoderSession2.f2846e) {
                            surfaceB.release();
                            return;
                        }
                        videoEncoderSession2.f2846e = null;
                        videoEncoderSession2.m.b(videoEncoderSession2.d);
                        videoEncoderSession2.a();
                    }
                });
                videoEncoderSession.f2849i = VideoEncoderSession.VideoEncoderState.READY;
                completer.b(videoEncoderSession.d);
                return;
            }
            if (iOrdinal != 2) {
                if (iOrdinal == 3) {
                    if (videoEncoderSession.f2848h != null && (executor = videoEncoderSession.g) != null) {
                        executor.execute(new e(videoEncoderSession, surface, i2));
                    }
                    Objects.toString(surface);
                    Logger.c(5, "VideoEncoderSession");
                    return;
                }
                if (iOrdinal != 4) {
                    lc0.w("State ", videoEncoderSession.f2849i, " is not handled");
                    return;
                }
            }
        }
        Objects.toString(videoEncoderSession.f2849i);
        Logger.c(3, "VideoEncoderSession");
        completer.b(null);
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object i(CallbackToFutureAdapter.Completer completer) {
        VideoEncoderSession videoEncoderSession = this.f3124b;
        SurfaceRequest surfaceRequest = this.f3125c;
        try {
            EncoderImpl encoderImplC = videoEncoderSession.f2845c.c(videoEncoderSession.f2843a, (VideoEncoderConfig) this.d, surfaceRequest.g);
            videoEncoderSession.d = encoderImplC;
            Encoder.EncoderInput encoderInput = encoderImplC.g;
            if (encoderInput instanceof Encoder.SurfaceInput) {
                ((Encoder.SurfaceInput) encoderInput).c(videoEncoderSession.f2844b, new j(videoEncoderSession, completer, surfaceRequest));
            } else {
                completer.d(new AssertionError("The EncoderInput of video isn't a SurfaceInput."));
            }
        } catch (InvalidConfigException e2) {
            Logger.b("VideoEncoderSession");
            completer.d(e2);
        }
        return "ConfigureVideoEncoderFuture " + videoEncoderSession;
    }

    public /* synthetic */ j(VideoEncoderSession videoEncoderSession, CallbackToFutureAdapter.Completer completer, SurfaceRequest surfaceRequest) {
        this.f3124b = videoEncoderSession;
        this.d = completer;
        this.f3125c = surfaceRequest;
    }
}
