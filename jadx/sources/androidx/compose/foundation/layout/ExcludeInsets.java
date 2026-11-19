package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/layout/ExcludeInsets;", "Landroidx/compose/foundation/layout/WindowInsets;", "included", "excluded", "<init>", "(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ExcludeInsets implements WindowInsets {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WindowInsets f4957a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WindowInsets f4958b;

    public ExcludeInsets(WindowInsets windowInsets, WindowInsets windowInsets2) {
        this.f4957a = windowInsets;
        this.f4958b = windowInsets2;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int a(Density density) {
        int iA = this.f4957a.a(density) - this.f4958b.a(density);
        if (iA < 0) {
            return 0;
        }
        return iA;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int b(Density density, LayoutDirection layoutDirection) {
        int iB = this.f4957a.b(density, layoutDirection) - this.f4958b.b(density, layoutDirection);
        if (iB < 0) {
            return 0;
        }
        return iB;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int c(Density density) {
        int iC = this.f4957a.c(density) - this.f4958b.c(density);
        if (iC < 0) {
            return 0;
        }
        return iC;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int d(Density density, LayoutDirection layoutDirection) {
        int iD = this.f4957a.d(density, layoutDirection) - this.f4958b.d(density, layoutDirection);
        if (iD < 0) {
            return 0;
        }
        return iD;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExcludeInsets)) {
            return false;
        }
        ExcludeInsets excludeInsets = (ExcludeInsets) obj;
        return Intrinsics.c(excludeInsets.f4957a, this.f4957a) && Intrinsics.c(excludeInsets.f4958b, this.f4958b);
    }

    public final int hashCode() {
        return this.f4958b.hashCode() + (this.f4957a.hashCode() * 31);
    }

    public final String toString() {
        return "(" + this.f4957a + " - " + this.f4958b + ')';
    }
}
