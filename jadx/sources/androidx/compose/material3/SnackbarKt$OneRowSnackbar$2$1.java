package androidx.compose.material3;

import androidx.compose.material3.tokens.SnackbarTokens;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.util.ListUtilsKt;
import defpackage.os;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class SnackbarKt$OneRowSnackbar$2$1 implements MeasurePolicy {
    /* JADX WARN: Code duplicated, block: B:62:0x010a A[PHI: r4 r6
      0x010a: PHI (r4v9 int) = (r4v8 int), (r4v13 int), (r4v13 int) binds: [B:65:0x0124, B:58:0x00ff, B:60:0x0105] A[DONT_GENERATE, DONT_INLINE]
      0x010a: PHI (r6v12 int) = (r6v11 int), (r6v17 int), (r6v17 int) binds: [B:65:0x0124, B:58:0x00ff, B:60:0x0105] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1measure3p2s80s(MeasureScope measureScope, List list, long j2) {
        Object obj;
        Object obj2;
        int iB0;
        int iMax;
        int i2;
        int iW;
        List list2 = list;
        int iMin = Math.min(Constraints.h(j2), measureScope.B0(SnackbarKt.f7301a));
        List list3 = list2;
        int size = list3.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                obj = null;
                break;
            }
            obj = list2.get(i3);
            if (Intrinsics.c(LayoutIdKt.a((Measurable) obj), "action")) {
                break;
            }
            i3++;
        }
        Measurable measurable = (Measurable) obj;
        Placeable placeableT = measurable != null ? measurable.T(j2) : null;
        int size2 = list3.size();
        int i4 = 0;
        while (true) {
            if (i4 >= size2) {
                obj2 = null;
                break;
            }
            obj2 = list2.get(i4);
            if (Intrinsics.c(LayoutIdKt.a((Measurable) obj2), "dismissAction")) {
                break;
            }
            i4++;
        }
        Measurable measurable2 = (Measurable) obj2;
        final Placeable placeableT2 = measurable2 != null ? measurable2.T(j2) : null;
        int i5 = placeableT != null ? placeableT.f9548b : 0;
        int i6 = placeableT != null ? placeableT.f9549c : 0;
        int i7 = placeableT2 != null ? placeableT2.f9548b : 0;
        int i8 = placeableT2 != null ? placeableT2.f9549c : 0;
        int iB1 = ((iMin - i5) - i7) - (i7 == 0 ? measureScope.B0(SnackbarKt.f7305f) : 0);
        int iJ = Constraints.j(j2);
        if (iB1 < iJ) {
            iB1 = iJ;
        }
        int size3 = list3.size();
        int i9 = 0;
        while (i9 < size3) {
            Measurable measurable3 = (Measurable) list2.get(i9);
            if (Intrinsics.c(LayoutIdKt.a(measurable3), "text")) {
                final Placeable placeableT3 = measurable3.T(Constraints.a(j2, 0, iB1, 0, 0, 9));
                HorizontalAlignmentLine horizontalAlignmentLine = AlignmentLineKt.f9416a;
                int iW2 = placeableT3.W(horizontalAlignmentLine);
                int iW3 = placeableT3.W(AlignmentLineKt.f9417b);
                boolean z = true;
                boolean z2 = (iW2 == Integer.MIN_VALUE || iW3 == Integer.MIN_VALUE) ? false : true;
                if (iW2 != iW3 && z2) {
                    z = false;
                }
                final int i10 = iMin - i7;
                final int i11 = i10 - i5;
                if (z) {
                    iMax = Math.max(measureScope.B0(SnackbarTokens.f7873i), Math.max(i6, i8));
                    iB0 = (iMax - placeableT3.f9549c) / 2;
                    if (placeableT == null || (iW = placeableT.W(horizontalAlignmentLine)) == Integer.MIN_VALUE) {
                        i2 = 0;
                    } else {
                        i2 = (iW2 + iB0) - iW;
                    }
                } else {
                    iB0 = measureScope.B0(SnackbarKt.f7302b) - iW2;
                    iMax = Math.max(measureScope.B0(SnackbarTokens.f7874j), placeableT3.f9549c + iB0);
                    if (placeableT != null) {
                        i2 = (iMax - placeableT.f9549c) / 2;
                    } else {
                        i2 = 0;
                    }
                }
                final int i12 = i2;
                final int i13 = iB0;
                final int i14 = placeableT2 != null ? (iMax - placeableT2.f9549c) / 2 : 0;
                final Placeable placeable = placeableT;
                return measureScope.V0(iMin, iMax, MapsKt.c(), new Function1() { // from class: uz0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj3;
                        Placeable.PlacementScope.y(placementScope, placeableT3, 0, i13);
                        Placeable placeable2 = placeableT2;
                        if (placeable2 != null) {
                            Placeable.PlacementScope.y(placementScope, placeable2, i10, i14);
                        }
                        Placeable placeable3 = placeable;
                        if (placeable3 != null) {
                            Placeable.PlacementScope.y(placementScope, placeable3, i11, i12);
                        }
                        return Unit.f71739a;
                    }
                });
            }
            i9++;
            size3 = size3;
            list2 = list;
        }
        ListUtilsKt.b("Collection contains no element matching the predicate.");
        os.d();
        return null;
    }
}
