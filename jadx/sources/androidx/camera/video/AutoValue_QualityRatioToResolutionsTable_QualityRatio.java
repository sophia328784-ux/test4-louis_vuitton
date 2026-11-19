package androidx.camera.video;

import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_QualityRatioToResolutionsTable_QualityRatio extends QualityRatioToResolutionsTable.QualityRatio {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Quality f2736a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2737b;

    public AutoValue_QualityRatioToResolutionsTable_QualityRatio(Quality quality, int i2) {
        if (quality == null) {
            r81.d("Null quality");
            throw null;
        }
        this.f2736a = quality;
        this.f2737b = i2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof QualityRatioToResolutionsTable.QualityRatio) {
            AutoValue_QualityRatioToResolutionsTable_QualityRatio autoValue_QualityRatioToResolutionsTable_QualityRatio = (AutoValue_QualityRatioToResolutionsTable_QualityRatio) ((QualityRatioToResolutionsTable.QualityRatio) obj);
            if (this.f2736a.equals(autoValue_QualityRatioToResolutionsTable_QualityRatio.f2736a) && this.f2737b == autoValue_QualityRatioToResolutionsTable_QualityRatio.f2737b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f2737b ^ ((this.f2736a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("QualityRatio{quality=");
        sb.append(this.f2736a);
        sb.append(", aspectRatio=");
        return defpackage.a.i(this.f2737b, "}", sb);
    }
}
