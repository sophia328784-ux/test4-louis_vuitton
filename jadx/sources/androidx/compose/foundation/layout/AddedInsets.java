package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/layout/AddedInsets;", "Landroidx/compose/foundation/layout/WindowInsets;", "first", "second", "<init>", "(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class AddedInsets implements WindowInsets {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WindowInsets f4911a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WindowInsets f4912b;

    public AddedInsets(WindowInsets windowInsets, WindowInsets windowInsets2) {
        this.f4911a = windowInsets;
        this.f4912b = windowInsets2;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int a(Density density) {
        return this.f4912b.a(density) + this.f4911a.a(density);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int b(Density density, LayoutDirection layoutDirection) {
        return this.f4912b.b(density, layoutDirection) + this.f4911a.b(density, layoutDirection);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int c(Density density) {
        return this.f4912b.c(density) + this.f4911a.c(density);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int d(Density density, LayoutDirection layoutDirection) {
        return this.f4912b.d(density, layoutDirection) + this.f4911a.d(density, layoutDirection);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AddedInsets)) {
            return false;
        }
        AddedInsets addedInsets = (AddedInsets) obj;
        return Intrinsics.c(addedInsets.f4911a, this.f4911a) && Intrinsics.c(addedInsets.f4912b, this.f4912b);
    }

    public final int hashCode() {
        return (this.f4912b.hashCode() * 31) + this.f4911a.hashCode();
    }

    public final String toString() {
        return "(" + this.f4911a + " + " + this.f4912b + ')';
    }
}
