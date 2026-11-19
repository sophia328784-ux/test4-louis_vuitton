package androidx.compose.foundation.layout;

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

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/layout/FillNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/foundation/layout/Direction;", "direction", "", "fraction", "<init>", "(Landroidx/compose/foundation/layout/Direction;F)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class FillNode extends Modifier.Node implements LayoutModifierNode {
    public Direction p;
    public float q;

    public FillNode(Direction direction, float f2) {
        this.p = direction;
        this.q = f2;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        int iJ;
        int iH;
        int iG;
        int i2;
        if (!Constraints.d(j2) || this.p == Direction.Vertical) {
            iJ = Constraints.j(j2);
            iH = Constraints.h(j2);
        } else {
            int iRound = Math.round(Constraints.h(j2) * this.q);
            int iJ2 = Constraints.j(j2);
            iJ = Constraints.h(j2);
            if (iRound < iJ2) {
                iRound = iJ2;
            }
            if (iRound <= iJ) {
                iJ = iRound;
            }
            iH = iJ;
        }
        if (!Constraints.c(j2) || this.p == Direction.Horizontal) {
            int i3 = Constraints.i(j2);
            int iG2 = Constraints.g(j2);
            iG = i3;
            i2 = iG2;
        } else {
            int iRound2 = Math.round(Constraints.g(j2) * this.q);
            int i4 = Constraints.i(j2);
            iG = Constraints.g(j2);
            if (iRound2 < i4) {
                iRound2 = i4;
            }
            if (iRound2 <= iG) {
                iG = iRound2;
            }
            i2 = iG;
        }
        Placeable placeableT = measurable.T(ConstraintsKt.a(iJ, iH, iG, i2));
        return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), new a2(placeableT, 5));
    }
}
