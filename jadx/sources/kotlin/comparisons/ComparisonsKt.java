package kotlin.comparisons;

import java.util.Comparator;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"kotlin/comparisons/ComparisonsKt__ComparisonsKt", "kotlin/comparisons/ComparisonsKt___ComparisonsJvmKt", "kotlin/comparisons/ComparisonsKt___ComparisonsKt"}, k = 4, mv = {2, 4, 0}, xi = 49)
public abstract class ComparisonsKt extends ComparisonsKt___ComparisonsKt {
    public static int a(Comparable comparable, Comparable comparable2) {
        if (comparable == null) {
            return comparable2 == null ? 0 : -1;
        }
        if (comparable2 == null) {
            return 1;
        }
        return comparable.compareTo(comparable2);
    }

    public static int b(int i2, int... iArr) {
        for (int i3 : iArr) {
            i2 = Math.max(i2, i3);
        }
        return i2;
    }

    public static Comparator c() {
        NaturalOrderComparator naturalOrderComparator = NaturalOrderComparator.f71830b;
        naturalOrderComparator.getClass();
        return naturalOrderComparator;
    }
}
