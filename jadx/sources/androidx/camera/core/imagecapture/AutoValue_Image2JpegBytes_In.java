package androidx.camera.core.imagecapture;

import androidx.camera.core.processing.Packet;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_Image2JpegBytes_In extends Image2JpegBytes.In {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Packet f2053a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2054b;

    public AutoValue_Image2JpegBytes_In(Packet packet, int i2) {
        if (packet == null) {
            r81.d("Null packet");
            throw null;
        }
        this.f2053a = packet;
        this.f2054b = i2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Image2JpegBytes.In) {
            AutoValue_Image2JpegBytes_In autoValue_Image2JpegBytes_In = (AutoValue_Image2JpegBytes_In) ((Image2JpegBytes.In) obj);
            if (this.f2053a.equals(autoValue_Image2JpegBytes_In.f2053a) && this.f2054b == autoValue_Image2JpegBytes_In.f2054b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f2054b ^ ((this.f2053a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("In{packet=");
        sb.append(this.f2053a);
        sb.append(", jpegQuality=");
        return defpackage.a.i(this.f2054b, "}", sb);
    }
}
