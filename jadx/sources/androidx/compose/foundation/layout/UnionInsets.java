package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/layout/UnionInsets;", "Landroidx/compose/foundation/layout/WindowInsets;", "first", "second", "<init>", "(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class UnionInsets implements WindowInsets {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WindowInsets f5061a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WindowInsets f5062b;

    public UnionInsets(WindowInsets windowInsets, WindowInsets windowInsets2) {
        this.f5061a = windowInsets;
        this.f5062b = windowInsets2;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int a(Density density) {
        return Math.max(this.f5061a.a(density), this.f5062b.a(density));
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int b(Density density, LayoutDirection layoutDirection) {
        return Math.max(this.f5061a.b(density, layoutDirection), this.f5062b.b(density, layoutDirection));
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int c(Density density) {
        return Math.max(this.f5061a.c(density), this.f5062b.c(density));
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int d(Density density, LayoutDirection layoutDirection) {
        return Math.max(this.f5061a.d(density, layoutDirection), this.f5062b.d(density, layoutDirection));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UnionInsets)) {
            return false;
        }
        UnionInsets unionInsets = (UnionInsets) obj;
        return Intrinsics.c(unionInsets.f5061a, this.f5061a) && Intrinsics.c(unionInsets.f5062b, this.f5062b);
    }

    public final int hashCode() {
        return (this.f5062b.hashCode() * 31) + this.f5061a.hashCode();
    }

    public final String toString() {
        return "(" + this.f5061a + " ∪ " + this.f5062b + ')';
    }
}
