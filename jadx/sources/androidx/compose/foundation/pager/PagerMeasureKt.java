package androidx.compose.foundation.pager;

import androidx.collection.MutableIntObjectMap;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PagerMeasureKt {
    public static final MeasuredPage a(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, int i2, long j2, PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider, long j3, Orientation orientation, Alignment.Horizontal horizontal, Alignment.Vertical vertical, LayoutDirection layoutDirection, boolean z, int i3, MutableIntObjectMap mutableIntObjectMap) {
        List list;
        Object objD = pagerLazyLayoutItemProvider.d(i2);
        List list2 = (List) mutableIntObjectMap.b(i2);
        if (list2 != null) {
            list = list2;
        } else {
            List listC1 = lazyLayoutMeasureScopeImpl.C1(i2);
            int size = listC1.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i4 = 0; i4 < size; i4++) {
                arrayList.add(((Measurable) listC1.get(i4)).T(j2));
            }
            mutableIntObjectMap.i(i2, arrayList);
            list = arrayList;
        }
        return new MeasuredPage(i2, i3, list, j3, objD, orientation, horizontal, vertical, layoutDirection, z, null);
    }
}
