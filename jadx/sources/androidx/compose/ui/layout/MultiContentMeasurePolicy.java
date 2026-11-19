package androidx.compose.ui.layout;

import androidx.compose.ui.unit.ConstraintsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bç\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/layout/MultiContentMeasurePolicy;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface MultiContentMeasurePolicy {
    default int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        ArrayList arrayList = (ArrayList) list;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            List list2 = (List) arrayList.get(i3);
            ArrayList arrayList3 = new ArrayList(list2.size());
            int size2 = list2.size();
            for (int i4 = 0; i4 < size2; i4++) {
                arrayList3.add(new DefaultIntrinsicMeasurable((IntrinsicMeasurable) list2.get(i4), IntrinsicMinMax.Max, IntrinsicWidthHeight.Height));
            }
            arrayList2.add(arrayList3);
        }
        return mo2measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getF9469c()), arrayList2, ConstraintsKt.b(0, i2, 0, 0, 13)).getF9471b();
    }

    default int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        ArrayList arrayList = (ArrayList) list;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            List list2 = (List) arrayList.get(i3);
            ArrayList arrayList3 = new ArrayList(list2.size());
            int size2 = list2.size();
            for (int i4 = 0; i4 < size2; i4++) {
                arrayList3.add(new DefaultIntrinsicMeasurable((IntrinsicMeasurable) list2.get(i4), IntrinsicMinMax.Max, IntrinsicWidthHeight.Width));
            }
            arrayList2.add(arrayList3);
        }
        return mo2measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getF9469c()), arrayList2, ConstraintsKt.b(0, 0, 0, i2, 7)).getF9470a();
    }

    /* JADX INFO: renamed from: measure-3p2s80s */
    MeasureResult mo2measure3p2s80s(MeasureScope measureScope, List list, long j2);

    default int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        ArrayList arrayList = (ArrayList) list;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            List list2 = (List) arrayList.get(i3);
            ArrayList arrayList3 = new ArrayList(list2.size());
            int size2 = list2.size();
            for (int i4 = 0; i4 < size2; i4++) {
                arrayList3.add(new DefaultIntrinsicMeasurable((IntrinsicMeasurable) list2.get(i4), IntrinsicMinMax.Min, IntrinsicWidthHeight.Height));
            }
            arrayList2.add(arrayList3);
        }
        return mo2measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getF9469c()), arrayList2, ConstraintsKt.b(0, i2, 0, 0, 13)).getF9471b();
    }

    default int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        ArrayList arrayList = (ArrayList) list;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            List list2 = (List) arrayList.get(i3);
            ArrayList arrayList3 = new ArrayList(list2.size());
            int size2 = list2.size();
            for (int i4 = 0; i4 < size2; i4++) {
                arrayList3.add(new DefaultIntrinsicMeasurable((IntrinsicMeasurable) list2.get(i4), IntrinsicMinMax.Min, IntrinsicWidthHeight.Width));
            }
            arrayList2.add(arrayList3);
        }
        return mo2measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getF9469c()), arrayList2, ConstraintsKt.b(0, 0, 0, i2, 7)).getF9470a();
    }
}
