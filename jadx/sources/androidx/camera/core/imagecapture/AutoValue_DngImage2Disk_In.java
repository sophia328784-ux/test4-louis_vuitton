package androidx.camera.core.imagecapture;

import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageProxy;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_DngImage2Disk_In extends DngImage2Disk.In {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImageProxy f2050a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2051b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageCapture.OutputFileOptions f2052c;

    public AutoValue_DngImage2Disk_In(ImageProxy imageProxy, int i2, ImageCapture.OutputFileOptions outputFileOptions) {
        if (imageProxy == null) {
            r81.d("Null imageProxy");
            throw null;
        }
        this.f2050a = imageProxy;
        this.f2051b = i2;
        if (outputFileOptions != null) {
            this.f2052c = outputFileOptions;
        } else {
            r81.d("Null outputFileOptions");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof DngImage2Disk.In) {
            AutoValue_DngImage2Disk_In autoValue_DngImage2Disk_In = (AutoValue_DngImage2Disk_In) ((DngImage2Disk.In) obj);
            if (this.f2050a.equals(autoValue_DngImage2Disk_In.f2050a) && this.f2051b == autoValue_DngImage2Disk_In.f2051b && this.f2052c.equals(autoValue_DngImage2Disk_In.f2052c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f2052c.hashCode() ^ ((((this.f2050a.hashCode() ^ 1000003) * 1000003) ^ this.f2051b) * 1000003);
    }

    public final String toString() {
        return "In{imageProxy=" + this.f2050a + ", rotationDegrees=" + this.f2051b + ", outputFileOptions=" + this.f2052c + "}";
    }
}
