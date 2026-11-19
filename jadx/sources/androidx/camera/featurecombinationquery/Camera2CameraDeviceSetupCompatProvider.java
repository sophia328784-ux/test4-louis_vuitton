package androidx.camera.featurecombinationquery;

import android.content.Context;
import android.hardware.camera2.CameraManager;

/* JADX INFO: loaded from: classes.dex */
class Camera2CameraDeviceSetupCompatProvider implements CameraDeviceSetupCompatProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraManager f2678a;

    public Camera2CameraDeviceSetupCompatProvider(Context context) {
        this.f2678a = (CameraManager) context.getSystemService(CameraManager.class);
    }

    @Override // androidx.camera.featurecombinationquery.CameraDeviceSetupCompatProvider
    public final CameraDeviceSetupCompat a(String str) {
        return new Camera2CameraDeviceSetupCompat(this.f2678a, str);
    }
}
