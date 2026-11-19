package androidx.media3.common;

/* JADX INFO: loaded from: classes.dex */
public final class AuxEffectInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f13703a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f13704b;

    public AuxEffectInfo(int i2, float f2) {
        this.f13703a = i2;
        this.f13704b = f2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && AuxEffectInfo.class == obj.getClass()) {
            AuxEffectInfo auxEffectInfo = (AuxEffectInfo) obj;
            if (this.f13703a == auxEffectInfo.f13703a && Float.compare(auxEffectInfo.f13704b, this.f13704b) == 0) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.f13704b) + ((527 + this.f13703a) * 31);
    }
}
