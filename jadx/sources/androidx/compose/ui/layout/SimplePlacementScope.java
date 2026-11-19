package androidx.compose.ui.layout;

import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/layout/SimplePlacementScope;", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "", "parentWidth", "Landroidx/compose/ui/unit/LayoutDirection;", "parentLayoutDirection", "", "density", "fontScale", "<init>", "(ILandroidx/compose/ui/unit/LayoutDirection;FF)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SimplePlacementScope extends Placeable.PlacementScope {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f9566c;
    public final LayoutDirection d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f9567e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f9568f;

    public SimplePlacementScope(int i2, LayoutDirection layoutDirection, float f2, float f3) {
        this.f9566c = i2;
        this.d = layoutDirection;
        this.f9567e = f2;
        this.f9568f = f3;
    }

    @Override // androidx.compose.ui.layout.Placeable.PlacementScope
    /* JADX INFO: renamed from: f, reason: from getter */
    public final LayoutDirection getD() {
        return this.d;
    }

    @Override // androidx.compose.ui.layout.Placeable.PlacementScope, androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: getDensity, reason: from getter */
    public final float getF9567e() {
        return this.f9567e;
    }

    @Override // androidx.compose.ui.layout.Placeable.PlacementScope
    /* JADX INFO: renamed from: h, reason: from getter */
    public final int getF9566c() {
        return this.f9566c;
    }

    @Override // androidx.compose.ui.layout.Placeable.PlacementScope, androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: s1, reason: from getter */
    public final float getF9568f() {
        return this.f9568f;
    }
}
