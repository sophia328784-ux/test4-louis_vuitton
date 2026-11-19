package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.collection.MutableVector;
import defpackage.zy0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyLayoutBeyondBoundsStateKt {
    public static final List a(LazyLayoutItemProvider lazyLayoutItemProvider, LazyLayoutPinnedItemList lazyLayoutPinnedItemList, LazyLayoutBeyondBoundsInfo lazyLayoutBeyondBoundsInfo) {
        IntRange intRange;
        MutableVector mutableVector = lazyLayoutBeyondBoundsInfo.f5412a;
        if (!(mutableVector.d != 0) && lazyLayoutPinnedItemList.f5501b.isEmpty()) {
            return EmptyList.f71768b;
        }
        ArrayList arrayList = new ArrayList();
        if (lazyLayoutBeyondBoundsInfo.f5412a.d != 0) {
            int i2 = mutableVector.d;
            if (i2 == 0) {
                zy0.c("MutableVector is empty.");
                return null;
            }
            Object[] objArr = mutableVector.f8165b;
            int i3 = ((LazyLayoutBeyondBoundsInfo.Interval) objArr[0]).f5413a;
            for (int i4 = 0; i4 < i2; i4++) {
                int i5 = ((LazyLayoutBeyondBoundsInfo.Interval) objArr[i4]).f5413a;
                if (i5 < i3) {
                    i3 = i5;
                }
            }
            if (i3 < 0) {
                InlineClassHelperKt.a("negative minIndex");
            }
            int i6 = mutableVector.d;
            if (i6 == 0) {
                zy0.c("MutableVector is empty.");
                return null;
            }
            Object[] objArr2 = mutableVector.f8165b;
            int i7 = ((LazyLayoutBeyondBoundsInfo.Interval) objArr2[0]).f5414b;
            for (int i8 = 0; i8 < i6; i8++) {
                int i9 = ((LazyLayoutBeyondBoundsInfo.Interval) objArr2[i8]).f5414b;
                if (i9 > i7) {
                    i7 = i9;
                }
            }
            intRange = new IntRange(i3, Math.min(i7, lazyLayoutItemProvider.b() - 1));
        } else {
            IntRange.INSTANCE.getClass();
            intRange = IntRange.g;
        }
        int size = lazyLayoutPinnedItemList.f5501b.size();
        for (int i10 = 0; i10 < size; i10++) {
            LazyLayoutPinnedItemList.PinnedItem pinnedItem = (LazyLayoutPinnedItemList.PinnedItem) lazyLayoutPinnedItemList.get(i10);
            int iA = LazyLayoutItemProviderKt.a(pinnedItem.getF5497c(), lazyLayoutItemProvider, pinnedItem.getF5495a());
            int i11 = intRange.f71951b;
            if ((iA > intRange.f71952c || i11 > iA) && iA >= 0 && iA < lazyLayoutItemProvider.b()) {
                arrayList.add(Integer.valueOf(iA));
            }
        }
        int i12 = intRange.f71951b;
        int i13 = intRange.f71952c;
        if (i12 <= i13) {
            while (true) {
                arrayList.add(Integer.valueOf(i12));
                if (i12 == i13) {
                    break;
                }
                i12++;
            }
        }
        return arrayList;
    }
}
