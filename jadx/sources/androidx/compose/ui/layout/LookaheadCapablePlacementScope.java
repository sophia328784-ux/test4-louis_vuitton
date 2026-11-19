package androidx.compose.ui.layout;

import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/layout/LookaheadCapablePlacementScope;", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "Landroidx/compose/ui/node/LookaheadCapablePlaceable;", "within", "<init>", "(Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class LookaheadCapablePlacementScope extends Placeable.PlacementScope {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LookaheadCapablePlaceable f9520c;

    public LookaheadCapablePlacementScope(LookaheadCapablePlaceable lookaheadCapablePlaceable) {
        this.f9520c = lookaheadCapablePlaceable;
    }

    @Override // androidx.compose.ui.layout.Placeable.PlacementScope
    public final float e(Ruler ruler) {
        Function2 function2 = ruler.f9564a;
        return function2 != null ? ((Number) function2.invoke(this, Float.valueOf(Float.NaN))).floatValue() : this.f9520c.D0(ruler);
    }

    @Override // androidx.compose.ui.layout.Placeable.PlacementScope
    /* JADX INFO: renamed from: f */
    public final LayoutDirection getD() {
        return this.f9520c.getF9421c();
    }

    @Override // androidx.compose.ui.layout.Placeable.PlacementScope, androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: getDensity */
    public final float getF11002b() {
        return this.f9520c.getF11002b();
    }

    @Override // androidx.compose.ui.layout.Placeable.PlacementScope
    /* JADX INFO: renamed from: h */
    public final int getF9566c() {
        return this.f9520c.m0();
    }

    @Override // androidx.compose.ui.layout.Placeable.PlacementScope, androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: s1 */
    public final float getF11003c() {
        return this.f9520c.getF11003c();
    }

    @Override // androidx.compose.ui.layout.Placeable.PlacementScope
    public final LayoutCoordinates w() {
        LookaheadCapablePlaceable lookaheadCapablePlaceable = this.f9520c;
        LayoutCoordinates layoutCoordinatesW = lookaheadCapablePlaceable.l ? null : lookaheadCapablePlaceable.w();
        if (layoutCoordinatesW == null) {
            lookaheadCapablePlaceable.getQ().I.b();
        }
        return layoutCoordinatesW;
    }
}
