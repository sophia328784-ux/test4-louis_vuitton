package androidx.camera.camera2.internal.compat;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class CameraCaptureSessionCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraCaptureSessionCompatApi28Impl f1696a;

    public interface CameraCaptureSessionCompatImpl {
    }

    public CameraCaptureSessionCompat(CameraCaptureSession cameraCaptureSession) {
        this.f1696a = new CameraCaptureSessionCompatApi28Impl(cameraCaptureSession);
    }

    public final int a(List list, Executor executor, CameraCaptureSession.CaptureCallback captureCallback) {
        return this.f1696a.f1697a.captureBurstRequests(list, executor, captureCallback);
    }

    public final int b(List list, Executor executor, CameraCaptureSession.CaptureCallback captureCallback) {
        return this.f1696a.f1697a.setRepeatingBurstRequests(list, executor, captureCallback);
    }

    public final int c(CaptureRequest captureRequest, Executor executor, CameraCaptureSession.CaptureCallback captureCallback) {
        return this.f1696a.f1697a.setSingleRepeatingRequest(captureRequest, executor, captureCallback);
    }

    public final CameraCaptureSession d() {
        return this.f1696a.f1697a;
    }
}
