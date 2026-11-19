package androidx.compose.foundation.lazy.layout;

import androidx.collection.IntList;
import androidx.collection.MutableIntList;
import androidx.compose.ui.unit.IntOffset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyLayoutStickyItemsKt {
    public static final List a(StickyItemsPlacement stickyItemsPlacement, int i2, int i3, ArrayList arrayList, IntList intList, int i4, int i5, int i6, int i7, Function1 function1) {
        long j2;
        int i8;
        StickyItemsPlacement stickyItemsPlacement2 = stickyItemsPlacement;
        if (stickyItemsPlacement2 == null || arrayList.isEmpty() || intList.f3256b == 0) {
            return EmptyList.f71768b;
        }
        MutableIntList mutableIntListB = stickyItemsPlacement2.b(i2, i3, intList);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            Object obj = arrayList.get(i9);
            int f5212a = ((LazyLayoutMeasuredItem) obj).getF5212a();
            int[] iArr = intList.f3255a;
            int i10 = intList.f3256b;
            for (int i11 = 0; i11 < i10; i11++) {
                if (iArr[i11] == f5212a) {
                    arrayList3.add(obj);
                    break;
                }
            }
        }
        int[] iArr2 = mutableIntListB.f3255a;
        int i12 = mutableIntListB.f3256b;
        int i13 = 0;
        while (i13 < i12) {
            int i14 = iArr2[i13];
            Iterator it = arrayList.iterator();
            int i15 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i15 = -1;
                    break;
                }
                if (((LazyLayoutMeasuredItem) it.next()).getF5212a() == i14) {
                    break;
                }
                i15++;
            }
            LazyLayoutMeasuredItem lazyLayoutMeasuredItem = i15 == -1 ? (LazyLayoutMeasuredItem) function1.invoke(Integer.valueOf(i14)) : (LazyLayoutMeasuredItem) arrayList.remove(i15);
            ArrayList arrayList4 = arrayList3;
            int r = lazyLayoutMeasuredItem.getR();
            if (i15 == -1) {
                i8 = Integer.MIN_VALUE;
            } else {
                long jO = lazyLayoutMeasuredItem.o(0);
                if (lazyLayoutMeasuredItem.getF5214c()) {
                    IntOffset.Companion companion = IntOffset.f11012b;
                    j2 = jO & BodyPartID.bodyIdMax;
                } else {
                    IntOffset.Companion companion2 = IntOffset.f11012b;
                    j2 = jO >> 32;
                }
                i8 = (int) j2;
            }
            int iA = stickyItemsPlacement2.a(arrayList4, i14, r, i8, i4);
            lazyLayoutMeasuredItem.n();
            lazyLayoutMeasuredItem.d(iA, 0, i6, i7);
            arrayList2.add(lazyLayoutMeasuredItem);
            i13++;
            stickyItemsPlacement2 = stickyItemsPlacement;
            arrayList3 = arrayList4;
        }
        return arrayList2;
    }
}
