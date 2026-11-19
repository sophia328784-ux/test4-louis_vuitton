package androidx.camera.camera2.internal.compat;

import android.hardware.camera2.CameraCaptureSession;

/* JADX INFO: loaded from: classes.dex */
abstract class CameraCaptureSessionCompatBaseImpl implements CameraCaptureSessionCompat.CameraCaptureSessionCompatImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraCaptureSession f1697a;

    public CameraCaptureSessionCompatBaseImpl(CameraCaptureSession cameraCaptureSession) {
        cameraCaptureSession.getClass();
        this.f1697a = cameraCaptureSession;
    }
}
