package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import defpackage.um;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/layout/ColumnMeasurePolicy;", "Landroidx/compose/ui/layout/MeasurePolicy;", "Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;", "Landroidx/compose/foundation/layout/Arrangement$Vertical;", "verticalArrangement", "Landroidx/compose/ui/Alignment$Horizontal;", "horizontalAlignment", "<init>", "(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ColumnMeasurePolicy implements MeasurePolicy, RowColumnMeasurePolicy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Arrangement.Vertical f4942a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Alignment.Horizontal f4943b;

    public ColumnMeasurePolicy(Arrangement.Vertical vertical, Alignment.Horizontal horizontal) {
        this.f4942a = vertical;
        this.f4943b = horizontal;
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final long a(int i2, int i3, boolean z, int i4, int i5) {
        ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.f4941a;
        if (!z) {
            return ConstraintsKt.a(i3, i5, i2, i4);
        }
        Constraints.f10998b.getClass();
        return Constraints.Companion.a(i3, i5, i2, i4);
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final void b(int i2, int[] iArr, int[] iArr2, MeasureScope measureScope) {
        this.f4942a.b(measureScope, i2, iArr, iArr2);
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final int c(Placeable placeable) {
        return placeable.f9549c;
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final MeasureResult d(Placeable[] placeableArr, MeasureScope measureScope, int[] iArr, int i2, int i3, int[] iArr2, int i4, int i5, int i6) {
        return measureScope.V0(i3, i2, MapsKt.c(), new um(placeableArr, this, i3, measureScope, iArr));
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final int e(Placeable placeable) {
        return placeable.f9548b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ColumnMeasurePolicy)) {
            return false;
        }
        ColumnMeasurePolicy columnMeasurePolicy = (ColumnMeasurePolicy) obj;
        return Intrinsics.c(this.f4942a, columnMeasurePolicy.f4942a) && Intrinsics.c(this.f4943b, columnMeasurePolicy.f4943b);
    }

    public final int hashCode() {
        return this.f4943b.hashCode() + (this.f4942a.hashCode() * 31);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        int iB0 = intrinsicMeasureScope.B0(this.f4942a.getD());
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        int iMax = 0;
        int i3 = 0;
        float f2 = 0.0f;
        for (int i4 = 0; i4 < size; i4++) {
            IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) list.get(i4);
            float fB = RowColumnImplKt.b(RowColumnImplKt.a(intrinsicMeasurable));
            int iL = intrinsicMeasurable.l(i2);
            if (fB == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                i3 += iL;
            } else if (fB > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                f2 += fB;
                iMax = Math.max(iMax, Math.round(iL / fB));
            }
        }
        return ((list.size() - 1) * iB0) + Math.round(iMax * f2) + i3;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        int iB0 = intrinsicMeasureScope.B0(this.f4942a.getD());
        if (list.isEmpty()) {
            return 0;
        }
        int iMin = Math.min((list.size() - 1) * iB0, i2);
        List list2 = list;
        int size = list2.size();
        int iMax = 0;
        float f2 = 0.0f;
        for (int i3 = 0; i3 < size; i3++) {
            IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) list.get(i3);
            float fB = RowColumnImplKt.b(RowColumnImplKt.a(intrinsicMeasurable));
            if (fB == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                int iMin2 = Math.min(intrinsicMeasurable.l(Integer.MAX_VALUE), i2 == Integer.MAX_VALUE ? Integer.MAX_VALUE : i2 - iMin);
                iMin += iMin2;
                iMax = Math.max(iMax, intrinsicMeasurable.S(iMin2));
            } else if (fB > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                f2 += fB;
            }
        }
        int iRound = f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0 : i2 == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.round(Math.max(i2 - iMin, 0) / f2);
        int size2 = list2.size();
        for (int i4 = 0; i4 < size2; i4++) {
            IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) list.get(i4);
            float fB2 = RowColumnImplKt.b(RowColumnImplKt.a(intrinsicMeasurable2));
            if (fB2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                iMax = Math.max(iMax, intrinsicMeasurable2.S(iRound != Integer.MAX_VALUE ? Math.round(iRound * fB2) : Integer.MAX_VALUE));
            }
        }
        return iMax;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1measure3p2s80s(MeasureScope measureScope, List list, long j2) {
        return RowColumnMeasurePolicyKt.a(this, Constraints.i(j2), Constraints.j(j2), Constraints.g(j2), Constraints.h(j2), measureScope.B0(this.f4942a.getD()), measureScope, list, new Placeable[list.size()], 0, list.size(), null, 0);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        int iB0 = intrinsicMeasureScope.B0(this.f4942a.getD());
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        int iMax = 0;
        int i3 = 0;
        float f2 = 0.0f;
        for (int i4 = 0; i4 < size; i4++) {
            IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) list.get(i4);
            float fB = RowColumnImplKt.b(RowColumnImplKt.a(intrinsicMeasurable));
            int iH = intrinsicMeasurable.H(i2);
            if (fB == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                i3 += iH;
            } else if (fB > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                f2 += fB;
                iMax = Math.max(iMax, Math.round(iH / fB));
            }
        }
        return ((list.size() - 1) * iB0) + Math.round(iMax * f2) + i3;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        int iB0 = intrinsicMeasureScope.B0(this.f4942a.getD());
        if (list.isEmpty()) {
            return 0;
        }
        int iMin = Math.min((list.size() - 1) * iB0, i2);
        List list2 = list;
        int size = list2.size();
        int iMax = 0;
        float f2 = 0.0f;
        for (int i3 = 0; i3 < size; i3++) {
            IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) list.get(i3);
            float fB = RowColumnImplKt.b(RowColumnImplKt.a(intrinsicMeasurable));
            if (fB == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                int iMin2 = Math.min(intrinsicMeasurable.l(Integer.MAX_VALUE), i2 == Integer.MAX_VALUE ? Integer.MAX_VALUE : i2 - iMin);
                iMin += iMin2;
                iMax = Math.max(iMax, intrinsicMeasurable.M(iMin2));
            } else if (fB > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                f2 += fB;
            }
        }
        int iRound = f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0 : i2 == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.round(Math.max(i2 - iMin, 0) / f2);
        int size2 = list2.size();
        for (int i4 = 0; i4 < size2; i4++) {
            IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) list.get(i4);
            float fB2 = RowColumnImplKt.b(RowColumnImplKt.a(intrinsicMeasurable2));
            if (fB2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                iMax = Math.max(iMax, intrinsicMeasurable2.M(iRound != Integer.MAX_VALUE ? Math.round(iRound * fB2) : Integer.MAX_VALUE));
            }
        }
        return iMax;
    }

    public final String toString() {
        return "ColumnMeasurePolicy(verticalArrangement=" + this.f4942a + ", horizontalAlignment=" + this.f4943b + ')';
    }
}
