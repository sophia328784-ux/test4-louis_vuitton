package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.ConstraintsKt;
import defpackage.j40;
import kotlin.Metadata;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0011\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/layout/InsetsPaddingModifierNode;", "Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/foundation/layout/WindowInsets;", "insets", "<init>", "(Landroidx/compose/foundation/layout/WindowInsets;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class InsetsPaddingModifierNode extends InsetsConsumingModifierNode implements LayoutModifierNode {
    public WindowInsets r;

    public InsetsPaddingModifierNode(WindowInsets windowInsets) {
        this.r = windowInsets;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        int iD = this.q.d(measureScope, measureScope.getF9469c()) - this.p.d(measureScope, measureScope.getF9469c());
        int iA = this.q.a(measureScope) - this.p.a(measureScope);
        int iB = (this.q.b(measureScope, measureScope.getF9469c()) - this.p.b(measureScope, measureScope.getF9469c())) + iD;
        int iC = (this.q.c(measureScope) - this.p.c(measureScope)) + iA;
        Placeable placeableT = measurable.T(ConstraintsKt.i(-iB, -iC, j2));
        return measureScope.V0(ConstraintsKt.g(placeableT.f9548b + iB, j2), ConstraintsKt.f(placeableT.f9549c + iC, j2), MapsKt.c(), new j40(placeableT, iD, iA, 0));
    }

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode
    public final WindowInsets h2(WindowInsets windowInsets) {
        WindowInsets windowInsets2 = this.r;
        FixedIntInsets fixedIntInsets = WindowInsetsKt.f5085a;
        return new UnionInsets(windowInsets, windowInsets2);
    }

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode
    public final void i2() {
        super.i2();
        DelegatableNodeKt.f(this).X();
    }
}
