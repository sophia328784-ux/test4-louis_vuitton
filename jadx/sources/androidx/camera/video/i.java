package androidx.camera.video;

import android.os.SystemClock;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import defpackage.b5;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i implements CallbackToFutureAdapter.Resolver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2873b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2874c;

    public /* synthetic */ i(VideoCapture videoCapture, SessionConfig.Builder builder) {
        this.f2873b = 2;
        this.f2874c = builder;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object i(final CallbackToFutureAdapter.Completer completer) {
        int i2 = this.f2873b;
        Object obj = this.f2874c;
        switch (i2) {
            case 0:
                VideoEncoderSession videoEncoderSession = (VideoEncoderSession) obj;
                videoEncoderSession.f2851k = completer;
                return "ReleasedFuture " + videoEncoderSession;
            case 1:
                VideoEncoderSession videoEncoderSession2 = (VideoEncoderSession) obj;
                videoEncoderSession2.m = completer;
                return "ReadyToReleaseFuture " + videoEncoderSession2;
            default:
                final SessionConfig.Builder builder = (SessionConfig.Builder) obj;
                VideoCapture.Defaults defaults = VideoCapture.F;
                builder.j("androidx.camera.video.VideoCapture.streamUpdate", Integer.valueOf(completer.hashCode()));
                final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                CameraCaptureCallback cameraCaptureCallback = new CameraCaptureCallback() { // from class: androidx.camera.video.VideoCapture.2

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public boolean f2831a = true;

                    @Override // androidx.camera.core.impl.CameraCaptureCallback
                    public final void b(int i3, CameraCaptureResult cameraCaptureResult) {
                        Object obj2;
                        if (this.f2831a) {
                            this.f2831a = false;
                            cameraCaptureResult.d();
                            SystemClock.uptimeMillis();
                            SystemClock.elapsedRealtime();
                            Logger.c(3, "VideoCapture");
                        }
                        AtomicBoolean atomicBoolean2 = atomicBoolean;
                        if (atomicBoolean2.get() || (obj2 = cameraCaptureResult.c().f2362a.get("androidx.camera.video.VideoCapture.streamUpdate")) == null) {
                            return;
                        }
                        int iIntValue = ((Integer) obj2).intValue();
                        CallbackToFutureAdapter.Completer completer2 = completer;
                        if (iIntValue == completer2.hashCode() && completer2.b(null) && !atomicBoolean2.getAndSet(true)) {
                            CameraXExecutors.c().execute(new e(this, builder, 2));
                        }
                    }
                };
                completer.a(new b5(atomicBoolean, builder, cameraCaptureCallback, 23), CameraXExecutors.a());
                builder.g(cameraCaptureCallback);
                return String.format("%s[0x%x]", "androidx.camera.video.VideoCapture.streamUpdate", Integer.valueOf(completer.hashCode()));
        }
    }

    public /* synthetic */ i(VideoEncoderSession videoEncoderSession, int i2) {
        this.f2873b = i2;
        this.f2874c = videoEncoderSession;
    }
}
