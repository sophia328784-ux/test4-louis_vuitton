package androidx.camera.core.imagecapture;

import androidx.camera.core.processing.Packet;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_Bitmap2JpegBytes_In extends Bitmap2JpegBytes.In {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Packet f2043a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2044b;

    public AutoValue_Bitmap2JpegBytes_In(Packet packet, int i2) {
        if (packet == null) {
            r81.d("Null packet");
            throw null;
        }
        this.f2043a = packet;
        this.f2044b = i2;
    }

    @Override // androidx.camera.core.imagecapture.Bitmap2JpegBytes.In
    public final int a() {
        return this.f2044b;
    }

    @Override // androidx.camera.core.imagecapture.Bitmap2JpegBytes.In
    public final Packet b() {
        return this.f2043a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Bitmap2JpegBytes.In)) {
            return false;
        }
        Bitmap2JpegBytes.In in = (Bitmap2JpegBytes.In) obj;
        return this.f2043a.equals(in.b()) && this.f2044b == in.a();
    }

    public final int hashCode() {
        return this.f2044b ^ ((this.f2043a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("In{packet=");
        sb.append(this.f2043a);
        sb.append(", jpegQuality=");
        return defpackage.a.i(this.f2044b, "}", sb);
    }
}
