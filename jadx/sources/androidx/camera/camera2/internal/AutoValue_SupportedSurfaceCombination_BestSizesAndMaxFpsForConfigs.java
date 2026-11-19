package androidx.camera.camera2.internal;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_SupportedSurfaceCombination_BestSizesAndMaxFpsForConfigs extends SupportedSurfaceCombination.BestSizesAndMaxFpsForConfigs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f1402a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f1403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1404c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1405e;

    public AutoValue_SupportedSurfaceCombination_BestSizesAndMaxFpsForConfigs(List list, List list2, int i2, int i3, int i4) {
        this.f1402a = list;
        this.f1403b = list2;
        this.f1404c = i2;
        this.d = i3;
        this.f1405e = i4;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SupportedSurfaceCombination.BestSizesAndMaxFpsForConfigs) {
            SupportedSurfaceCombination.BestSizesAndMaxFpsForConfigs bestSizesAndMaxFpsForConfigs = (SupportedSurfaceCombination.BestSizesAndMaxFpsForConfigs) obj;
            List list = this.f1402a;
            if (list != null ? list.equals(((AutoValue_SupportedSurfaceCombination_BestSizesAndMaxFpsForConfigs) bestSizesAndMaxFpsForConfigs).f1402a) : ((AutoValue_SupportedSurfaceCombination_BestSizesAndMaxFpsForConfigs) bestSizesAndMaxFpsForConfigs).f1402a == null) {
                List list2 = this.f1403b;
                if (list2 != null ? list2.equals(((AutoValue_SupportedSurfaceCombination_BestSizesAndMaxFpsForConfigs) bestSizesAndMaxFpsForConfigs).f1403b) : ((AutoValue_SupportedSurfaceCombination_BestSizesAndMaxFpsForConfigs) bestSizesAndMaxFpsForConfigs).f1403b == null) {
                    AutoValue_SupportedSurfaceCombination_BestSizesAndMaxFpsForConfigs autoValue_SupportedSurfaceCombination_BestSizesAndMaxFpsForConfigs = (AutoValue_SupportedSurfaceCombination_BestSizesAndMaxFpsForConfigs) bestSizesAndMaxFpsForConfigs;
                    if (this.f1404c == autoValue_SupportedSurfaceCombination_BestSizesAndMaxFpsForConfigs.f1404c && this.d == autoValue_SupportedSurfaceCombination_BestSizesAndMaxFpsForConfigs.d && this.f1405e == autoValue_SupportedSurfaceCombination_BestSizesAndMaxFpsForConfigs.f1405e) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        List list = this.f1402a;
        int iHashCode = ((list == null ? 0 : list.hashCode()) ^ 1000003) * 1000003;
        List list2 = this.f1403b;
        return this.f1405e ^ (((((((list2 != null ? list2.hashCode() : 0) ^ iHashCode) * 1000003) ^ this.f1404c) * 1000003) ^ this.d) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BestSizesAndMaxFpsForConfigs{bestSizes=");
        sb.append(this.f1402a);
        sb.append(", bestSizesForStreamUseCase=");
        sb.append(this.f1403b);
        sb.append(", maxFpsForBestSizes=");
        sb.append(this.f1404c);
        sb.append(", maxFpsForStreamUseCase=");
        sb.append(this.d);
        sb.append(", maxFpsForAllSizes=");
        return defpackage.a.i(this.f1405e, "}", sb);
    }
}
