package androidx.camera.video;

import android.util.Range;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_VideoSpec extends VideoSpec {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QualitySelector f2748c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Range f2749e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2750f;

    public static final class Builder extends VideoSpec.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public QualitySelector f2751a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Integer f2752b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Range f2753c;
        public Integer d;

        @Override // androidx.camera.video.VideoSpec.Builder
        public final VideoSpec a() {
            String strConcat = this.f2751a == null ? " qualitySelector" : "";
            if (this.f2752b == null) {
                strConcat = strConcat.concat(" encodeFrameRate");
            }
            if (this.f2753c == null) {
                strConcat = strConcat.concat(" bitrate");
            }
            if (this.d == null) {
                strConcat = strConcat.concat(" aspectRatio");
            }
            if (strConcat.isEmpty()) {
                return new AutoValue_VideoSpec(this.f2751a, this.f2752b.intValue(), this.f2753c, this.d.intValue());
            }
            md.k("Missing required properties:".concat(strConcat));
            return null;
        }
    }

    public AutoValue_VideoSpec(QualitySelector qualitySelector, int i2, Range range, int i3) {
        this.f2748c = qualitySelector;
        this.d = i2;
        this.f2749e = range;
        this.f2750f = i3;
    }

    @Override // androidx.camera.video.VideoSpec
    public final Range b() {
        return this.f2749e;
    }

    @Override // androidx.camera.video.VideoSpec
    public final int c() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof VideoSpec) {
            AutoValue_VideoSpec autoValue_VideoSpec = (AutoValue_VideoSpec) ((VideoSpec) obj);
            if (this.f2748c.equals(autoValue_VideoSpec.f2748c) && this.d == autoValue_VideoSpec.d && this.f2749e.equals(autoValue_VideoSpec.f2749e) && this.f2750f == autoValue_VideoSpec.f2750f) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f2750f ^ ((((((this.f2748c.hashCode() ^ 1000003) * 1000003) ^ this.d) * 1000003) ^ this.f2749e.hashCode()) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("VideoSpec{qualitySelector=");
        sb.append(this.f2748c);
        sb.append(", encodeFrameRate=");
        sb.append(this.d);
        sb.append(", bitrate=");
        sb.append(this.f2749e);
        sb.append(", aspectRatio=");
        return defpackage.a.i(this.f2750f, "}", sb);
    }
}
