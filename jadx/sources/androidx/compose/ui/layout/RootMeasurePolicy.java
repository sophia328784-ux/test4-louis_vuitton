package androidx.compose.ui.layout;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/layout/RootMeasurePolicy;", "Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RootMeasurePolicy extends LayoutNode.NoIntrinsicsMeasurePolicy {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final RootMeasurePolicy f9560b = new RootMeasurePolicy("Undefined intrinsics block and it is required");

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1measure3p2s80s(MeasureScope measureScope, List list, long j2) {
        int size = list.size();
        if (size == 0) {
            return measureScope.V0(Constraints.j(j2), Constraints.i(j2), MapsKt.c(), RootMeasurePolicy$measure$1.f9561c);
        }
        if (size == 1) {
            final Placeable placeableT = ((Measurable) list.get(0)).T(j2);
            return measureScope.V0(ConstraintsKt.g(placeableT.f9548b, j2), ConstraintsKt.f(placeableT.f9549c, j2), MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.layout.RootMeasurePolicy$measure$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Placeable.PlacementScope.z((Placeable.PlacementScope) obj, placeableT, 0, 0);
                    return Unit.f71739a;
                }
            });
        }
        final ArrayList arrayList = new ArrayList(list.size());
        int size2 = list.size();
        int iMax = 0;
        int iMax2 = 0;
        for (int i2 = 0; i2 < size2; i2++) {
            Placeable placeableT2 = ((Measurable) list.get(i2)).T(j2);
            iMax = Math.max(placeableT2.f9548b, iMax);
            iMax2 = Math.max(placeableT2.f9549c, iMax2);
            arrayList.add(placeableT2);
        }
        return measureScope.V0(ConstraintsKt.g(iMax, j2), ConstraintsKt.f(iMax2, j2), MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.layout.RootMeasurePolicy$measure$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                ArrayList arrayList2 = arrayList;
                int size3 = arrayList2.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    Placeable.PlacementScope.z(placementScope, (Placeable) arrayList2.get(i3), 0, 0);
                }
                return Unit.f71739a;
            }
        });
    }
}
