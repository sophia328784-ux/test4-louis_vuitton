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
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B7\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/layout/SizeNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/unit/Dp;", "minWidth", "minHeight", "maxWidth", "maxHeight", "", "enforceIncoming", "<init>", "(FFFFZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SizeNode extends Modifier.Node implements LayoutModifierNode {
    public float p;
    public float q;
    public float r;
    public float s;
    public boolean t;

    /* JADX WARN: Illegal instructions before constructor call */
    public SizeNode(float f2, float f3, float f4, float f5, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            Dp.f11004c.getClass();
            f2 = Dp.f11005e;
        }
        float f6 = f2;
        if ((i2 & 2) != 0) {
            Dp.f11004c.getClass();
            f3 = Dp.f11005e;
        }
        float f7 = f3;
        if ((i2 & 4) != 0) {
            Dp.f11004c.getClass();
            f4 = Dp.f11005e;
        }
        float f8 = f4;
        if ((i2 & 8) != 0) {
            Dp.f11004c.getClass();
            f5 = Dp.f11005e;
        }
        this(f6, f7, f8, f5, z, null);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        int iJ;
        int iH;
        int i2;
        int iG;
        long jA;
        long jH2 = h2(measureScope);
        if (this.t) {
            jA = ConstraintsKt.e(j2, jH2);
        } else {
            if (Float.isNaN(this.p)) {
                iJ = Constraints.j(j2);
                int iH2 = Constraints.h(jH2);
                if (iJ > iH2) {
                    iJ = iH2;
                }
            } else {
                iJ = Constraints.j(jH2);
            }
            if (Float.isNaN(this.r)) {
                iH = Constraints.h(j2);
                int iJ2 = Constraints.j(jH2);
                if (iH < iJ2) {
                    iH = iJ2;
                }
            } else {
                iH = Constraints.h(jH2);
            }
            if (Float.isNaN(this.q)) {
                i2 = Constraints.i(j2);
                int iG2 = Constraints.g(jH2);
                if (i2 > iG2) {
                    i2 = iG2;
                }
            } else {
                i2 = Constraints.i(jH2);
            }
            if (Float.isNaN(this.s)) {
                iG = Constraints.g(j2);
                int i3 = Constraints.i(jH2);
                if (iG < i3) {
                    iG = i3;
                }
            } else {
                iG = Constraints.g(jH2);
            }
            jA = ConstraintsKt.a(iJ, iH, i2, iG);
        }
        Placeable placeableT = measurable.T(jA);
        return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), new a2(placeableT, 14));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int f(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        long jH2 = h2(lookaheadCapablePlaceable);
        if (Constraints.f(jH2)) {
            return Constraints.h(jH2);
        }
        if (!this.t) {
            i2 = ConstraintsKt.f(i2, jH2);
        }
        return ConstraintsKt.g(intrinsicMeasurable.M(i2), jH2);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0041  */
    public final long h2(MeasureScope measureScope) {
        int iB0;
        int iB1;
        int iB2;
        int i2 = 0;
        if (Float.isNaN(this.r)) {
            iB0 = Integer.MAX_VALUE;
        } else {
            iB0 = measureScope.B0(this.r);
            if (iB0 < 0) {
                iB0 = 0;
            }
        }
        if (Float.isNaN(this.s)) {
            iB1 = Integer.MAX_VALUE;
        } else {
            iB1 = measureScope.B0(this.s);
            if (iB1 < 0) {
                iB1 = 0;
            }
        }
        if (Float.isNaN(this.p)) {
            iB2 = 0;
        } else {
            iB2 = measureScope.B0(this.p);
            if (iB2 < 0) {
                iB2 = 0;
            }
            if (iB2 > iB0) {
                iB2 = iB0;
            }
            if (iB2 == Integer.MAX_VALUE) {
                iB2 = 0;
            }
        }
        if (!Float.isNaN(this.q)) {
            int iB3 = measureScope.B0(this.q);
            if (iB3 < 0) {
                iB3 = 0;
            }
            if (iB3 > iB1) {
                iB3 = iB1;
            }
            if (iB3 != Integer.MAX_VALUE) {
                i2 = iB3;
            }
        }
        return ConstraintsKt.a(iB2, iB0, i2, iB1);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int u(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        long jH2 = h2(lookaheadCapablePlaceable);
        if (Constraints.e(jH2)) {
            return Constraints.g(jH2);
        }
        if (!this.t) {
            i2 = ConstraintsKt.g(i2, jH2);
        }
        return ConstraintsKt.f(intrinsicMeasurable.H(i2), jH2);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int y(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        long jH2 = h2(lookaheadCapablePlaceable);
        if (Constraints.f(jH2)) {
            return Constraints.h(jH2);
        }
        if (!this.t) {
            i2 = ConstraintsKt.f(i2, jH2);
        }
        return ConstraintsKt.g(intrinsicMeasurable.S(i2), jH2);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int z(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        long jH2 = h2(lookaheadCapablePlaceable);
        if (Constraints.e(jH2)) {
            return Constraints.g(jH2);
        }
        if (!this.t) {
            i2 = ConstraintsKt.g(i2, jH2);
        }
        return ConstraintsKt.f(intrinsicMeasurable.l(i2), jH2);
    }

    public SizeNode(float f2, float f3, float f4, float f5, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this.p = f2;
        this.q = f3;
        this.r = f4;
        this.s = f5;
        this.t = z;
    }
}
