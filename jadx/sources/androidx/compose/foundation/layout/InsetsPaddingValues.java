package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/layout/InsetsPaddingValues;", "Landroidx/compose/foundation/layout/PaddingValues;", "Landroidx/compose/foundation/layout/WindowInsets;", "insets", "Landroidx/compose/ui/unit/Density;", "density", "<init>", "(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/unit/Density;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class InsetsPaddingValues implements PaddingValues {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WindowInsets f5004a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Density f5005b;

    public InsetsPaddingValues(WindowInsets windowInsets, Density density) {
        this.f5004a = windowInsets;
        this.f5005b = density;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* JADX INFO: renamed from: a */
    public final float getD() {
        WindowInsets windowInsets = this.f5004a;
        Density density = this.f5005b;
        return density.k1(windowInsets.c(density));
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public final float b(LayoutDirection layoutDirection) {
        WindowInsets windowInsets = this.f5004a;
        Density density = this.f5005b;
        return density.k1(windowInsets.d(density, layoutDirection));
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public final float c(LayoutDirection layoutDirection) {
        WindowInsets windowInsets = this.f5004a;
        Density density = this.f5005b;
        return density.k1(windowInsets.b(density, layoutDirection));
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* JADX INFO: renamed from: d */
    public final float getF5031b() {
        WindowInsets windowInsets = this.f5004a;
        Density density = this.f5005b;
        return density.k1(windowInsets.a(density));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InsetsPaddingValues)) {
            return false;
        }
        InsetsPaddingValues insetsPaddingValues = (InsetsPaddingValues) obj;
        return Intrinsics.c(this.f5004a, insetsPaddingValues.f5004a) && Intrinsics.c(this.f5005b, insetsPaddingValues.f5005b);
    }

    public final int hashCode() {
        return this.f5005b.hashCode() + (this.f5004a.hashCode() * 31);
    }

    public final String toString() {
        return "InsetsPaddingValues(insets=" + this.f5004a + ", density=" + this.f5005b + ')';
    }
}
