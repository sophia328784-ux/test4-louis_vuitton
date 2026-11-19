package androidx.camera.camera2.internal.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.params.SessionConfiguration;
import androidx.camera.camera2.internal.compat.params.SessionConfigurationCompat;

/* JADX INFO: loaded from: classes.dex */
public final class CameraDeviceCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraDeviceCompatApi28Impl f1702a;

    public interface CameraDeviceCompatImpl {
    }

    public CameraDeviceCompat(CameraDevice cameraDevice) {
        cameraDevice.getClass();
        this.f1702a = new CameraDeviceCompatApi28Impl(cameraDevice);
    }

    public final void a(SessionConfigurationCompat sessionConfigurationCompat) throws CameraAccessExceptionCompat {
        CameraDeviceCompatApi28Impl cameraDeviceCompatApi28Impl = this.f1702a;
        cameraDeviceCompatApi28Impl.getClass();
        SessionConfiguration sessionConfigurationC = sessionConfigurationCompat.c();
        sessionConfigurationC.getClass();
        try {
            cameraDeviceCompatApi28Impl.f1703a.createCaptureSession(sessionConfigurationC);
        } catch (CameraAccessException e2) {
            throw new CameraAccessExceptionCompat(e2);
        }
    }
}
