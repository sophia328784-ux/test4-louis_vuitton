package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import defpackage.a2;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/unit/Dp;", "minWidth", "minHeight", "<init>", "(FFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class UnspecifiedConstraintsNode extends Modifier.Node implements LayoutModifierNode {
    public float p;
    public float q;

    /* JADX WARN: Illegal instructions before constructor call */
    public UnspecifiedConstraintsNode(float f2, float f3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            Dp.f11004c.getClass();
            f2 = Dp.f11005e;
        }
        if ((i2 & 2) != 0) {
            Dp.f11004c.getClass();
            f3 = Dp.f11005e;
        }
        this(f2, f3, null);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        int iJ;
        int i2;
        if (Float.isNaN(this.p) || Constraints.j(j2) != 0) {
            iJ = Constraints.j(j2);
        } else {
            int iB0 = measureScope.B0(this.p);
            iJ = Constraints.h(j2);
            if (iB0 < 0) {
                iB0 = 0;
            }
            if (iB0 <= iJ) {
                iJ = iB0;
            }
        }
        int iH = Constraints.h(j2);
        if (Float.isNaN(this.q) || Constraints.i(j2) != 0) {
            i2 = Constraints.i(j2);
        } else {
            int iB1 = measureScope.B0(this.q);
            i2 = Constraints.g(j2);
            int i3 = iB1 >= 0 ? iB1 : 0;
            if (i3 <= i2) {
                i2 = i3;
            }
        }
        Placeable placeableT = measurable.T(ConstraintsKt.a(iJ, iH, i2, Constraints.g(j2)));
        return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), new a2(placeableT, 21));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int f(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        int iM = intrinsicMeasurable.M(i2);
        int iB0 = !Float.isNaN(this.p) ? lookaheadCapablePlaceable.B0(this.p) : 0;
        return iM < iB0 ? iB0 : iM;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int u(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        int iH = intrinsicMeasurable.H(i2);
        int iB0 = !Float.isNaN(this.q) ? lookaheadCapablePlaceable.B0(this.q) : 0;
        return iH < iB0 ? iB0 : iH;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int y(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        int iS = intrinsicMeasurable.S(i2);
        int iB0 = !Float.isNaN(this.p) ? lookaheadCapablePlaceable.B0(this.p) : 0;
        return iS < iB0 ? iB0 : iS;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int z(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        int iL = intrinsicMeasurable.l(i2);
        int iB0 = !Float.isNaN(this.q) ? lookaheadCapablePlaceable.B0(this.q) : 0;
        return iL < iB0 ? iB0 : iL;
    }

    public UnspecifiedConstraintsNode(float f2, float f3, DefaultConstructorMarker defaultConstructorMarker) {
        this.p = f2;
        this.q = f3;
    }
}
