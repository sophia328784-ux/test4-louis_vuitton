package androidx.compose.foundation.lazy.layout;

import androidx.collection.IntList;
import androidx.collection.IntListKt;
import androidx.collection.MutableIntList;
import androidx.compose.ui.unit.IntOffset;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion$StickToTopPlacement$1", "Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class StickyItemsPlacement$Companion$StickToTopPlacement$1 implements StickyItemsPlacement {
    @Override // androidx.compose.foundation.lazy.layout.StickyItemsPlacement
    public final int a(ArrayList arrayList, int i2, int i3, int i4, int i5) {
        Object obj;
        int i6;
        long j2;
        int size = arrayList.size();
        int i7 = 0;
        while (true) {
            if (i7 >= size) {
                obj = null;
                break;
            }
            obj = arrayList.get(i7);
            if (((LazyLayoutMeasuredItem) obj).getF5311a() != i2) {
                break;
            }
            i7++;
        }
        LazyLayoutMeasuredItem lazyLayoutMeasuredItem = (LazyLayoutMeasuredItem) obj;
        if (lazyLayoutMeasuredItem != null) {
            long jO = lazyLayoutMeasuredItem.o(0);
            if (lazyLayoutMeasuredItem.getF5313c()) {
                IntOffset.Companion companion = IntOffset.f11012b;
                j2 = jO & BodyPartID.bodyIdMax;
            } else {
                IntOffset.Companion companion2 = IntOffset.f11012b;
                j2 = jO >> 32;
            }
            i6 = (int) j2;
        } else {
            i6 = Integer.MIN_VALUE;
        }
        int iMax = i4 == Integer.MIN_VALUE ? -i5 : Math.max(-i5, i4);
        return i6 != Integer.MIN_VALUE ? Math.min(iMax, i6 - i3) : iMax;
    }

    @Override // androidx.compose.foundation.lazy.layout.StickyItemsPlacement
    public final MutableIntList b(int i2, int i3, IntList intList) {
        int i4;
        if (i3 - i2 < 0 || (i4 = intList.f3256b) == 0) {
            return IntListKt.f3257a;
        }
        IntRange intRangeJ = RangesKt.j(0, i4);
        int i5 = intRangeJ.f71951b;
        int i6 = intRangeJ.f71952c;
        int iB = -1;
        if (i5 <= i6) {
            while (intList.b(i5) <= i2) {
                iB = intList.b(i5);
                if (i5 == i6) {
                    break;
                }
                i5++;
            }
        }
        if (iB == -1) {
            return IntListKt.f3257a;
        }
        MutableIntList mutableIntList = IntListKt.f3257a;
        MutableIntList mutableIntList2 = new MutableIntList(1);
        mutableIntList2.e(iB);
        return mutableIntList2;
    }
}
