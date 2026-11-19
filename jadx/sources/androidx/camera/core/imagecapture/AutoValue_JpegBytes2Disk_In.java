package androidx.camera.core.imagecapture;

import androidx.camera.core.ImageCapture;
import androidx.camera.core.processing.Packet;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_JpegBytes2Disk_In extends JpegBytes2Disk.In {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Packet f2055a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageCapture.OutputFileOptions f2056b;

    public AutoValue_JpegBytes2Disk_In(Packet packet, ImageCapture.OutputFileOptions outputFileOptions) {
        if (packet == null) {
            r81.d("Null packet");
            throw null;
        }
        this.f2055a = packet;
        if (outputFileOptions != null) {
            this.f2056b = outputFileOptions;
        } else {
            r81.d("Null outputFileOptions");
            throw null;
        }
    }

    @Override // androidx.camera.core.imagecapture.JpegBytes2Disk.In
    public final ImageCapture.OutputFileOptions a() {
        return this.f2056b;
    }

    @Override // androidx.camera.core.imagecapture.JpegBytes2Disk.In
    public final Packet b() {
        return this.f2055a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof JpegBytes2Disk.In)) {
            return false;
        }
        JpegBytes2Disk.In in = (JpegBytes2Disk.In) obj;
        return this.f2055a.equals(in.b()) && this.f2056b.equals(in.a());
    }

    public final int hashCode() {
        return this.f2056b.hashCode() ^ ((this.f2055a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "In{packet=" + this.f2055a + ", outputFileOptions=" + this.f2056b + "}";
    }
}
