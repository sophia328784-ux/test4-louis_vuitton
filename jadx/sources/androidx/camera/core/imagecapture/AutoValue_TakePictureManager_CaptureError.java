package androidx.camera.core.imagecapture;

import androidx.camera.core.ImageCaptureException;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_TakePictureManager_CaptureError extends TakePictureManager.CaptureError {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2064a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageCaptureException f2065b;

    public AutoValue_TakePictureManager_CaptureError(int i2, ImageCaptureException imageCaptureException) {
        this.f2064a = i2;
        this.f2065b = imageCaptureException;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureManager.CaptureError
    public final ImageCaptureException a() {
        return this.f2065b;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureManager.CaptureError
    public final int b() {
        return this.f2064a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TakePictureManager.CaptureError)) {
            return false;
        }
        TakePictureManager.CaptureError captureError = (TakePictureManager.CaptureError) obj;
        return this.f2064a == captureError.b() && this.f2065b.equals(captureError.a());
    }

    public final int hashCode() {
        return this.f2065b.hashCode() ^ ((this.f2064a ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "CaptureError{requestId=" + this.f2064a + ", imageCaptureException=" + this.f2065b + "}";
    }
}
