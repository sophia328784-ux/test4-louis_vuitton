package androidx.compose.foundation.lazy.layout;

import defpackage.x5;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyLayoutMeasuredItemKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final x5 f5489a = new x5(12);

    public static final List a(int i2, int i3, ArrayList arrayList, List list) {
        if (arrayList.isEmpty()) {
            return EmptyList.f71768b;
        }
        ArrayList arrayListZ0 = CollectionsKt.z0(list);
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            LazyLayoutMeasuredItem lazyLayoutMeasuredItem = (LazyLayoutMeasuredItem) arrayList.get(i4);
            int f5212a = lazyLayoutMeasuredItem.getF5212a();
            if (i2 <= f5212a && f5212a <= i3) {
                arrayListZ0.add(lazyLayoutMeasuredItem);
            }
        }
        CollectionsKt.m0(f5489a, arrayListZ0);
        return arrayListZ0;
    }
}
