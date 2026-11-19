package androidx.compose.foundation.lazy;

import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import defpackage.a2;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B3\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/foundation/lazy/ParentSizeNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "", "fraction", "Landroidx/compose/runtime/State;", "", "widthState", "heightState", "<init>", "(FLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ParentSizeNode extends Modifier.Node implements LayoutModifierNode {
    public float p;
    public State q;
    public State r;

    public /* synthetic */ ParentSizeNode(float f2, State state, State state2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(f2, (i2 & 2) != 0 ? null : state, (i2 & 4) != 0 ? null : state2);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        State state = this.q;
        int iRound = (state == null || ((Number) state.getF10755b()).intValue() == Integer.MAX_VALUE) ? Integer.MAX_VALUE : Math.round(((Number) state.getF10755b()).floatValue() * this.p);
        State state2 = this.r;
        int iRound2 = (state2 == null || ((Number) state2.getF10755b()).intValue() == Integer.MAX_VALUE) ? Integer.MAX_VALUE : Math.round(((Number) state2.getF10755b()).floatValue() * this.p);
        int iJ = iRound != Integer.MAX_VALUE ? iRound : Constraints.j(j2);
        int i2 = iRound2 != Integer.MAX_VALUE ? iRound2 : Constraints.i(j2);
        if (iRound == Integer.MAX_VALUE) {
            iRound = Constraints.h(j2);
        }
        if (iRound2 == Integer.MAX_VALUE) {
            iRound2 = Constraints.g(j2);
        }
        Placeable placeableT = measurable.T(ConstraintsKt.a(iJ, iRound, i2, iRound2));
        return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), new a2(placeableT, 11));
    }

    public ParentSizeNode(float f2, State<Integer> state, State<Integer> state2) {
        this.p = f2;
        this.q = state;
        this.r = state2;
    }
}
