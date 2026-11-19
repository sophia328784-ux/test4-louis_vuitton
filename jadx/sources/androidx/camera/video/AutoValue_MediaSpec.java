package androidx.camera.video;

import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_MediaSpec extends MediaSpec {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final VideoSpec f2729a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AudioSpec f2730b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2731c;

    public static final class Builder extends MediaSpec.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public VideoSpec f2732a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public AudioSpec f2733b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Integer f2734c;

        @Override // androidx.camera.video.MediaSpec.Builder
        public final MediaSpec a() {
            String strConcat = this.f2732a == null ? " videoSpec" : "";
            if (this.f2733b == null) {
                strConcat = strConcat.concat(" audioSpec");
            }
            if (this.f2734c == null) {
                strConcat = strConcat.concat(" outputFormat");
            }
            if (strConcat.isEmpty()) {
                return new AutoValue_MediaSpec(this.f2732a, this.f2733b, this.f2734c.intValue());
            }
            md.k("Missing required properties:".concat(strConcat));
            return null;
        }
    }

    public AutoValue_MediaSpec(VideoSpec videoSpec, AudioSpec audioSpec, int i2) {
        this.f2729a = videoSpec;
        this.f2730b = audioSpec;
        this.f2731c = i2;
    }

    @Override // androidx.camera.video.MediaSpec
    public final int a() {
        return this.f2731c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof MediaSpec) {
            AutoValue_MediaSpec autoValue_MediaSpec = (AutoValue_MediaSpec) ((MediaSpec) obj);
            if (this.f2729a.equals(autoValue_MediaSpec.f2729a) && this.f2730b.equals(autoValue_MediaSpec.f2730b) && this.f2731c == autoValue_MediaSpec.f2731c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f2731c ^ ((((this.f2729a.hashCode() ^ 1000003) * 1000003) ^ this.f2730b.hashCode()) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MediaSpec{videoSpec=");
        sb.append(this.f2729a);
        sb.append(", audioSpec=");
        sb.append(this.f2730b);
        sb.append(", outputFormat=");
        return defpackage.a.i(this.f2731c, "}", sb);
    }
}
