package androidx.camera.video;

import android.util.Range;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_AudioSpec extends AudioSpec {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Range f2711c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2712e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Range f2713f;
    public final int g;

    public static final class Builder extends AudioSpec.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Range f2714a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Integer f2715b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Integer f2716c;
        public Range d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Integer f2717e;

        @Override // androidx.camera.video.AudioSpec.Builder
        public final AudioSpec a() {
            String strConcat = this.f2714a == null ? " bitrate" : "";
            if (this.f2715b == null) {
                strConcat = strConcat.concat(" sourceFormat");
            }
            if (this.f2716c == null) {
                strConcat = strConcat.concat(" source");
            }
            if (this.d == null) {
                strConcat = strConcat.concat(" sampleRate");
            }
            if (this.f2717e == null) {
                strConcat = strConcat.concat(" channelCount");
            }
            if (strConcat.isEmpty()) {
                return new AutoValue_AudioSpec(this.f2714a, this.f2715b.intValue(), this.f2716c.intValue(), this.d, this.f2717e.intValue());
            }
            md.k("Missing required properties:".concat(strConcat));
            return null;
        }
    }

    public AutoValue_AudioSpec(Range range, int i2, int i3, Range range2, int i4) {
        this.f2711c = range;
        this.d = i2;
        this.f2712e = i3;
        this.f2713f = range2;
        this.g = i4;
    }

    @Override // androidx.camera.video.AudioSpec
    public final Range b() {
        return this.f2711c;
    }

    @Override // androidx.camera.video.AudioSpec
    public final int c() {
        return this.g;
    }

    @Override // androidx.camera.video.AudioSpec
    public final Range d() {
        return this.f2713f;
    }

    @Override // androidx.camera.video.AudioSpec
    public final int e() {
        return this.f2712e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AudioSpec) {
            AutoValue_AudioSpec autoValue_AudioSpec = (AutoValue_AudioSpec) ((AudioSpec) obj);
            if (this.f2711c.equals(autoValue_AudioSpec.f2711c) && this.d == autoValue_AudioSpec.d && this.f2712e == autoValue_AudioSpec.f2712e && this.f2713f.equals(autoValue_AudioSpec.f2713f) && this.g == autoValue_AudioSpec.g) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.video.AudioSpec
    public final int f() {
        return this.d;
    }

    public final int hashCode() {
        return this.g ^ ((((((((this.f2711c.hashCode() ^ 1000003) * 1000003) ^ this.d) * 1000003) ^ this.f2712e) * 1000003) ^ this.f2713f.hashCode()) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AudioSpec{bitrate=");
        sb.append(this.f2711c);
        sb.append(", sourceFormat=");
        sb.append(this.d);
        sb.append(", source=");
        sb.append(this.f2712e);
        sb.append(", sampleRate=");
        sb.append(this.f2713f);
        sb.append(", channelCount=");
        return defpackage.a.i(this.g, "}", sb);
    }
}
