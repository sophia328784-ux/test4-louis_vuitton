package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.view.Surface;
import androidx.camera.camera2.internal.compat.CameraCaptureSessionCompat;
import androidx.camera.core.impl.Quirks;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public interface SynchronizedCaptureSession {

    public interface Opener {
    }

    public static class OpenerBuilder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Executor f1629a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ScheduledExecutorService f1630b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Handler f1631c;
        public final CaptureSessionRepository d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Quirks f1632e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Quirks f1633f;

        public OpenerBuilder(Handler handler, CaptureSessionRepository captureSessionRepository, Quirks quirks, Quirks quirks2, Executor executor, ScheduledExecutorService scheduledExecutorService) {
            this.f1629a = executor;
            this.f1630b = scheduledExecutorService;
            this.f1631c = handler;
            this.d = captureSessionRepository;
            this.f1632e = quirks;
            this.f1633f = quirks2;
        }
    }

    public static abstract class StateCallback {
        public void l(SynchronizedCaptureSession synchronizedCaptureSession) {
        }

        public void m(SynchronizedCaptureSession synchronizedCaptureSession) {
        }

        public void n(SynchronizedCaptureSession synchronizedCaptureSession) {
        }

        public void o(SynchronizedCaptureSession synchronizedCaptureSession) {
        }

        public void p(SynchronizedCaptureSession synchronizedCaptureSession) {
        }

        public void q(SynchronizedCaptureSession synchronizedCaptureSession) {
        }

        public void r(SynchronizedCaptureSession synchronizedCaptureSession) {
        }

        public void s(SynchronizedCaptureSession synchronizedCaptureSession, Surface surface) {
        }
    }

    void a();

    void b();

    void c(int i2);

    void close();

    CameraDevice d();

    int e(CaptureRequest captureRequest, CameraCaptureSession.CaptureCallback captureCallback);

    List f(CaptureRequest captureRequest);

    int g(List list, CameraCaptureSession.CaptureCallback captureCallback);

    int h(List list, CameraCaptureSession.CaptureCallback captureCallback);

    CameraCaptureSessionCompat i();

    StateCallback j();

    ListenableFuture k();
}
