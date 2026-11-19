package androidx.compose.ui.layout;

import androidx.compose.ui.node.Owner;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/layout/OuterPlacementScope;", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "Landroidx/compose/ui/node/Owner;", "owner", "<init>", "(Landroidx/compose/ui/node/Owner;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class OuterPlacementScope extends Placeable.PlacementScope {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Owner f9545c;

    public OuterPlacementScope(Owner owner) {
        this.f9545c = owner;
    }

    @Override // androidx.compose.ui.layout.Placeable.PlacementScope
    /* JADX INFO: renamed from: f */
    public final LayoutDirection getD() {
        return this.f9545c.getLayoutDirection();
    }

    @Override // androidx.compose.ui.layout.Placeable.PlacementScope, androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: getDensity */
    public final float getF11002b() {
        return this.f9545c.getDensity().getF11002b();
    }

    @Override // androidx.compose.ui.layout.Placeable.PlacementScope
    /* JADX INFO: renamed from: h */
    public final int getF9566c() {
        return this.f9545c.getRoot().I.p.f9548b;
    }

    @Override // androidx.compose.ui.layout.Placeable.PlacementScope, androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: s1 */
    public final float getF11003c() {
        return this.f9545c.getDensity().getF11003c();
    }

    @Override // androidx.compose.ui.layout.Placeable.PlacementScope
    public final LayoutCoordinates w() {
        return this.f9545c.getRoot().H.d;
    }
}
