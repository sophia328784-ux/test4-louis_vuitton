package kotlin.collections;

import defpackage.az;
import defpackage.fc;
import defpackage.md;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-stdlib"}, k = 5, mv = {2, 4, 0}, xi = 49, xs = "kotlin/collections/CollectionsKt")
class CollectionsKt__CollectionsKt extends CollectionsKt__CollectionsJVMKt {
    public static final List a(List list) {
        int size = list.size();
        if (size != 0) {
            return size != 1 ? list : CollectionsKt.O(list.get(0));
        }
        return EmptyList.f71768b;
    }

    public static final void b(int i2, int i3) {
        if (i3 < 0) {
            md.n(n00.m(i3, "fromIndex (0) is greater than toIndex (", ")."));
        } else {
            if (i3 <= i2) {
                return;
            }
            az.v(fc.f(i3, i2, "toIndex (", ") is greater than size (", ")."));
        }
    }
}
