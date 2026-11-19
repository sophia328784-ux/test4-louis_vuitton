package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.FlowLineMeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b`\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;", "Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface FlowLineMeasurePolicy extends RowColumnMeasurePolicy {
    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    default long a(int i2, int i3, boolean z, int i4, int i5) {
        if (getF4992a()) {
            RowMeasurePolicy rowMeasurePolicy = RowKt.f5037a;
            if (!z) {
                return ConstraintsKt.a(i2, i4, i3, i5);
            }
            Constraints.f10998b.getClass();
            return Constraints.Companion.b(i2, i4, i3, i5);
        }
        ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.f4941a;
        if (!z) {
            return ConstraintsKt.a(i3, i5, i2, i4);
        }
        Constraints.f10998b.getClass();
        return Constraints.Companion.a(i3, i5, i2, i4);
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    default void b(int i2, int[] iArr, int[] iArr2, MeasureScope measureScope) {
        if (getF4992a()) {
            getF4993b().c(measureScope, i2, iArr, measureScope.getF9421c(), iArr2);
        } else {
            getF4994c().b(measureScope, i2, iArr, iArr2);
        }
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    default int c(Placeable placeable) {
        return getF4992a() ? placeable.m0() : placeable.l0();
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    default MeasureResult d(final Placeable[] placeableArr, MeasureScope measureScope, final int[] iArr, int i2, final int i3, final int[] iArr2, final int i4, final int i5, final int i6) {
        int i7;
        int i8;
        if (getF4992a()) {
            i8 = i2;
            i7 = i3;
        } else {
            i7 = i2;
            i8 = i3;
        }
        final LayoutDirection f9469c = getF4992a() ? LayoutDirection.Ltr : measureScope.getF9421c();
        return measureScope.V0(i8, i7, MapsKt.c(), new Function1() { // from class: qz
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                int[] iArr3 = iArr2;
                int i9 = iArr3 != null ? iArr3[i4] : 0;
                int i10 = i5;
                for (int i11 = i10; i11 < i6; i11++) {
                    Placeable placeable = placeableArr[i11];
                    placeable.getClass();
                    FlowLineMeasurePolicy flowLineMeasurePolicy = this;
                    int iH = flowLineMeasurePolicy.h(placeable, i3, f9469c) + i9;
                    boolean f4992a = flowLineMeasurePolicy.getF4992a();
                    int[] iArr4 = iArr;
                    if (f4992a) {
                        placementScope.j(placeable, iArr4[i11 - i10], iH, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    } else {
                        placementScope.j(placeable, iH, iArr4[i11 - i10], Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    }
                }
                return Unit.f71739a;
            }
        });
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    default int e(Placeable placeable) {
        return getF4992a() ? placeable.l0() : placeable.m0();
    }

    /* JADX INFO: renamed from: f */
    CrossAxisAlignment getF4995e();

    /* JADX INFO: renamed from: g */
    boolean getF4992a();

    default int h(Placeable placeable, int i2, LayoutDirection layoutDirection) {
        CrossAxisAlignment crossAxisAlignmentF;
        Object t = placeable.getZ();
        RowColumnParentData rowColumnParentData = t instanceof RowColumnParentData ? (RowColumnParentData) t : null;
        if (rowColumnParentData == null || (crossAxisAlignmentF = rowColumnParentData.f5036c) == null) {
            crossAxisAlignmentF = getF4995e();
        }
        return crossAxisAlignmentF.a(i2, e(placeable), layoutDirection);
    }

    /* JADX INFO: renamed from: i */
    Arrangement.Horizontal getF4993b();

    /* JADX INFO: renamed from: j */
    Arrangement.Vertical getF4994c();
}
