package androidx.camera.video.internal.encoder;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_VideoEncoderDataSpace extends VideoEncoderDataSpace {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f3022f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3023h;

    public AutoValue_VideoEncoderDataSpace(int i2, int i3, int i4) {
        this.f3022f = i2;
        this.g = i3;
        this.f3023h = i4;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof VideoEncoderDataSpace)) {
            return false;
        }
        AutoValue_VideoEncoderDataSpace autoValue_VideoEncoderDataSpace = (AutoValue_VideoEncoderDataSpace) ((VideoEncoderDataSpace) obj);
        return this.f3022f == autoValue_VideoEncoderDataSpace.f3022f && this.g == autoValue_VideoEncoderDataSpace.g && this.f3023h == autoValue_VideoEncoderDataSpace.f3023h;
    }

    public final int hashCode() {
        return this.f3023h ^ ((((this.f3022f ^ 1000003) * 1000003) ^ this.g) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("VideoEncoderDataSpace{standard=");
        sb.append(this.f3022f);
        sb.append(", transfer=");
        sb.append(this.g);
        sb.append(", range=");
        return defpackage.a.i(this.f3023h, "}", sb);
    }
}
