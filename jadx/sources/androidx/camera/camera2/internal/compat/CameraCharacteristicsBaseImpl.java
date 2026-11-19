package androidx.camera.camera2.internal.compat;

import android.hardware.camera2.CameraCharacteristics;

/* JADX INFO: loaded from: classes.dex */
abstract class CameraCharacteristicsBaseImpl implements CameraCharacteristicsCompat.CameraCharacteristicsCompatImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraCharacteristics f1698a;

    public CameraCharacteristicsBaseImpl(CameraCharacteristics cameraCharacteristics) {
        this.f1698a = cameraCharacteristics;
    }
}
