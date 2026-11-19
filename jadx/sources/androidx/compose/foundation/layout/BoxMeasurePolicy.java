package androidx.compose.foundation.layout;

import androidx.collection.MutableScatterMap;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import defpackage.d21;
import defpackage.jh;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/layout/BoxMeasurePolicy;", "Landroidx/compose/ui/layout/MeasurePolicy;", "Landroidx/compose/ui/Alignment;", "alignment", "", "propagateMinConstraints", "<init>", "(Landroidx/compose/ui/Alignment;Z)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class BoxMeasurePolicy implements MeasurePolicy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Alignment f4936a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f4937b;

    public BoxMeasurePolicy(Alignment alignment, boolean z) {
        this.f4936a = alignment;
        this.f4937b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BoxMeasurePolicy)) {
            return false;
        }
        BoxMeasurePolicy boxMeasurePolicy = (BoxMeasurePolicy) obj;
        return Intrinsics.c(this.f4936a, boxMeasurePolicy.f4936a) && this.f4937b == boxMeasurePolicy.f4937b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f4937b) + (this.f4936a.hashCode() * 31);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1measure3p2s80s(final MeasureScope measureScope, final List list, long j2) {
        long j3;
        int iJ;
        int i2;
        Placeable placeableT;
        if (list.isEmpty()) {
            return measureScope.V0(Constraints.j(j2), Constraints.i(j2), MapsKt.c(), new jh(2));
        }
        if (this.f4937b) {
            j3 = j2;
        } else {
            j3 = j2 & (-8589934589L);
            Constraints.Companion companion = Constraints.f10998b;
        }
        if (list.size() == 1) {
            final Measurable measurable = (Measurable) list.get(0);
            MutableScatterMap mutableScatterMap = BoxKt.f4932a;
            Object z = measurable.getZ();
            BoxChildDataNode boxChildDataNode = z instanceof BoxChildDataNode ? (BoxChildDataNode) z : null;
            if (boxChildDataNode != null ? boxChildDataNode.q : false) {
                iJ = Constraints.j(j2);
                i2 = Constraints.i(j2);
                Constraints.Companion companion2 = Constraints.f10998b;
                int iJ2 = Constraints.j(j2);
                int i3 = Constraints.i(j2);
                companion2.getClass();
                placeableT = measurable.T(Constraints.Companion.c(iJ2, i3));
            } else {
                placeableT = measurable.T(j3);
                iJ = Math.max(Constraints.j(j2), placeableT.f9548b);
                i2 = Math.max(Constraints.i(j2), placeableT.f9549c);
            }
            final int i4 = i2;
            final int i5 = iJ;
            final Placeable placeable = placeableT;
            return measureScope.V0(i5, i4, MapsKt.c(), new Function1() { // from class: androidx.compose.foundation.layout.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    BoxKt.b((Placeable.PlacementScope) obj, placeable, measurable, measureScope.getF9421c(), i5, i4, this.f4936a);
                    return Unit.f71739a;
                }
            });
        }
        final Placeable[] placeableArr = new Placeable[list.size()];
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.f71919b = Constraints.j(j2);
        final Ref$IntRef ref$IntRef2 = new Ref$IntRef();
        ref$IntRef2.f71919b = Constraints.i(j2);
        List list2 = list;
        int size = list2.size();
        boolean z2 = false;
        for (int i6 = 0; i6 < size; i6++) {
            Measurable measurable2 = (Measurable) list.get(i6);
            MutableScatterMap mutableScatterMap2 = BoxKt.f4932a;
            Object z3 = measurable2.getZ();
            BoxChildDataNode boxChildDataNode2 = z3 instanceof BoxChildDataNode ? (BoxChildDataNode) z3 : null;
            if (boxChildDataNode2 != null ? boxChildDataNode2.q : false) {
                z2 = true;
            } else {
                Placeable placeableT2 = measurable2.T(j3);
                placeableArr[i6] = placeableT2;
                ref$IntRef.f71919b = Math.max(ref$IntRef.f71919b, placeableT2.f9548b);
                ref$IntRef2.f71919b = Math.max(ref$IntRef2.f71919b, placeableT2.f9549c);
            }
        }
        if (z2) {
            int i7 = ref$IntRef.f71919b;
            int i8 = i7 != Integer.MAX_VALUE ? i7 : 0;
            int i9 = ref$IntRef2.f71919b;
            long jA = ConstraintsKt.a(i8, i7, i9 != Integer.MAX_VALUE ? i9 : 0, i9);
            int size2 = list2.size();
            for (int i10 = 0; i10 < size2; i10++) {
                Measurable measurable3 = (Measurable) list.get(i10);
                MutableScatterMap mutableScatterMap3 = BoxKt.f4932a;
                Object z4 = measurable3.getZ();
                BoxChildDataNode boxChildDataNode3 = z4 instanceof BoxChildDataNode ? (BoxChildDataNode) z4 : null;
                if (boxChildDataNode3 != null ? boxChildDataNode3.q : false) {
                    placeableArr[i10] = measurable3.T(jA);
                }
            }
        }
        return measureScope.V0(ref$IntRef.f71919b, ref$IntRef2.f71919b, MapsKt.c(), new Function1() { // from class: androidx.compose.foundation.layout.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                Placeable[] placeableArr2 = placeableArr;
                int length = placeableArr2.length;
                int i11 = 0;
                int i12 = 0;
                while (i12 < length) {
                    int i13 = i11;
                    Placeable placeable2 = placeableArr2[i12];
                    placeable2.getClass();
                    BoxKt.b(placementScope, placeable2, (Measurable) list.get(i13), measureScope.getF9421c(), ref$IntRef.f71919b, ref$IntRef2.f71919b, this.f4936a);
                    i12++;
                    i11 = i13 + 1;
                }
                return Unit.f71739a;
            }
        });
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BoxMeasurePolicy(alignment=");
        sb.append(this.f4936a);
        sb.append(", propagateMinConstraints=");
        return d21.q(sb, this.f4937b, ')');
    }
}
