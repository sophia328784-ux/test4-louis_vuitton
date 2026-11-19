package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B1\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0018\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0007¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/foundation/layout/WrapContentNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/foundation/layout/Direction;", "direction", "", "unbounded", "Lkotlin/Function2;", "Landroidx/compose/ui/unit/IntSize;", "Landroidx/compose/ui/unit/LayoutDirection;", "Landroidx/compose/ui/unit/IntOffset;", "alignmentCallback", "<init>", "(Landroidx/compose/foundation/layout/Direction;ZLkotlin/jvm/functions/Function2;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class WrapContentNode extends Modifier.Node implements LayoutModifierNode {
    public Direction p;
    public boolean q;
    public Function2 r;

    public WrapContentNode(Direction direction, boolean z, Function2<? super IntSize, ? super LayoutDirection, IntOffset> function2) {
        this.p = direction;
        this.q = z;
        this.r = function2;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(final MeasureScope measureScope, Measurable measurable, long j2) {
        Direction direction = this.p;
        Direction direction2 = Direction.Vertical;
        int iJ = direction != direction2 ? 0 : Constraints.j(j2);
        Direction direction3 = this.p;
        Direction direction4 = Direction.Horizontal;
        final Placeable placeableT = measurable.T(ConstraintsKt.a(iJ, (this.p == direction2 || !this.q) ? Constraints.h(j2) : Integer.MAX_VALUE, direction3 == direction4 ? Constraints.i(j2) : 0, (this.p == direction4 || !this.q) ? Constraints.g(j2) : Integer.MAX_VALUE));
        final int iD = RangesKt.d(placeableT.f9548b, Constraints.j(j2), Constraints.h(j2));
        final int iD2 = RangesKt.d(placeableT.f9549c, Constraints.i(j2), Constraints.g(j2));
        return measureScope.V0(iD, iD2, MapsKt.c(), new Function1() { // from class: androidx.compose.foundation.layout.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Function2 function2 = this.f5162b.r;
                Placeable placeable = placeableT;
                Placeable.PlacementScope.u((Placeable.PlacementScope) obj, placeable, ((IntOffset) function2.invoke(new IntSize((((long) (iD - placeable.f9548b)) << 32) | (((long) (iD2 - placeable.f9549c)) & BodyPartID.bodyIdMax)), measureScope.getF9421c())).f11014a);
                return Unit.f71739a;
            }
        });
    }
}
