package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import defpackage.a2;
import defpackage.bp;
import kotlin.Metadata;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/layout/DerivedHeightModifierNode;", "Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/foundation/layout/WindowInsets;", "insets", "Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;", "heightCalc", "<init>", "(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class DerivedHeightModifierNode extends InsetsConsumingModifierNode implements LayoutModifierNode {
    public WindowInsets r;
    public WindowInsetsHeightCalculator s;
    public WindowInsets t = WindowInsetsKt.f5085a;

    public DerivedHeightModifierNode(WindowInsets windowInsets, WindowInsetsHeightCalculator windowInsetsHeightCalculator) {
        this.r = windowInsets;
        this.s = windowInsetsHeightCalculator;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        int iC = this.s.c(this.t, measureScope);
        if (iC == 0) {
            return measureScope.V0(0, 0, MapsKt.c(), new bp(20));
        }
        Placeable placeableT = measurable.T(Constraints.a(j2, 0, 0, iC, iC, 3));
        return measureScope.V0(placeableT.f9548b, iC, MapsKt.c(), new a2(placeableT, 3));
    }

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode
    public final WindowInsets h2(WindowInsets windowInsets) {
        return windowInsets;
    }

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode
    public final void i2() {
        WindowInsets windowInsets = this.r;
        WindowInsets windowInsets2 = this.p;
        FixedIntInsets fixedIntInsets = WindowInsetsKt.f5085a;
        this.t = new ExcludeInsets(windowInsets, windowInsets2);
        super.i2();
        DelegatableNodeKt.f(this).X();
    }
}
