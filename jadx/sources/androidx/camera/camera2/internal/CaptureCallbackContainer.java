package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCaptureSession;
import androidx.camera.core.impl.CameraCaptureCallback;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class CaptureCallbackContainer extends CameraCaptureCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraCaptureSession.CaptureCallback f1542a;

    public CaptureCallbackContainer(CameraCaptureSession.CaptureCallback captureCallback) {
        if (captureCallback != null) {
            this.f1542a = captureCallback;
        } else {
            r81.d("captureCallback is null");
            throw null;
        }
    }
}
