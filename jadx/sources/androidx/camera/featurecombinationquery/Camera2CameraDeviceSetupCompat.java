package androidx.camera.featurecombinationquery;

import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.params.SessionConfiguration;

/* JADX INFO: loaded from: classes.dex */
class Camera2CameraDeviceSetupCompat implements CameraDeviceSetupCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraDevice.CameraDeviceSetup f2677a;

    public Camera2CameraDeviceSetupCompat(CameraManager cameraManager, String str) {
        this.f2677a = cameraManager.getCameraDeviceSetup(str);
    }

    @Override // androidx.camera.featurecombinationquery.CameraDeviceSetupCompat
    public final CameraDeviceSetupCompat.SupportQueryResult a(SessionConfiguration sessionConfiguration) {
        long j2;
        int i2 = this.f2677a.isSessionConfigurationSupported(sessionConfiguration) ? 1 : 2;
        String property = System.getProperty("ro.build.date.utc");
        if (property != null) {
            try {
                j2 = Long.parseLong(property) * 1000;
            } catch (NumberFormatException unused) {
                j2 = 0;
            }
        } else {
            j2 = 0;
        }
        return new CameraDeviceSetupCompat.SupportQueryResult(i2, 2, j2);
    }
}
