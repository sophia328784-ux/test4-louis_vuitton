package kotlin.collections;

import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-stdlib"}, k = 5, mv = {2, 4, 0}, xi = 49, xs = "kotlin/collections/CollectionsKt")
class CollectionsKt__ReversedViewsKt extends CollectionsKt__MutableCollectionsKt {
    public static final int e(int i2, List list) {
        if (i2 >= 0 && i2 <= list.size() - 1) {
            return (list.size() - 1) - i2;
        }
        StringBuilder sbQ = fc.q(i2, "Element index ", " must be in range [");
        sbQ.append(new IntRange(0, list.size() - 1));
        sbQ.append("].");
        throw new IndexOutOfBoundsException(sbQ.toString());
    }

    public static final int f(int i2, List list) {
        if (i2 >= 0 && i2 <= list.size()) {
            return list.size() - i2;
        }
        StringBuilder sbQ = fc.q(i2, "Position index ", " must be in range [");
        sbQ.append(new IntRange(0, list.size()));
        sbQ.append("].");
        throw new IndexOutOfBoundsException(sbQ.toString());
    }
}
