package androidx.camera.video;

import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_FallbackStrategy_RuleStrategy extends FallbackStrategy.RuleStrategy {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Quality f2721b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2722c;

    public AutoValue_FallbackStrategy_RuleStrategy(Quality quality, int i2) {
        if (quality == null) {
            r81.d("Null fallbackQuality");
            throw null;
        }
        this.f2721b = quality;
        this.f2722c = i2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FallbackStrategy.RuleStrategy)) {
            return false;
        }
        AutoValue_FallbackStrategy_RuleStrategy autoValue_FallbackStrategy_RuleStrategy = (AutoValue_FallbackStrategy_RuleStrategy) ((FallbackStrategy.RuleStrategy) obj);
        return this.f2721b.equals(autoValue_FallbackStrategy_RuleStrategy.f2721b) && this.f2722c == autoValue_FallbackStrategy_RuleStrategy.f2722c;
    }

    public final int hashCode() {
        return this.f2722c ^ ((this.f2721b.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RuleStrategy{fallbackQuality=");
        sb.append(this.f2721b);
        sb.append(", fallbackRule=");
        return defpackage.a.i(this.f2722c, "}", sb);
    }
}
