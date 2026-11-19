package androidx.camera.camera2.internal.compat;

import android.hardware.camera2.CameraDevice;

/* JADX INFO: loaded from: classes.dex */
abstract class CameraDeviceCompatBaseImpl implements CameraDeviceCompat.CameraDeviceCompatImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraDevice f1703a;

    public CameraDeviceCompatBaseImpl(CameraDevice cameraDevice) {
        cameraDevice.getClass();
        this.f1703a = cameraDevice;
    }
}
