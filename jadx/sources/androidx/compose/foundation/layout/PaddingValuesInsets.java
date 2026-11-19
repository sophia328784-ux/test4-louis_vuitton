package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/layout/PaddingValuesInsets;", "Landroidx/compose/foundation/layout/WindowInsets;", "Landroidx/compose/foundation/layout/PaddingValues;", "paddingValues", "<init>", "(Landroidx/compose/foundation/layout/PaddingValues;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class PaddingValuesInsets implements WindowInsets {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PaddingValues f5033a;

    public PaddingValuesInsets(PaddingValues paddingValues) {
        this.f5033a = paddingValues;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int a(Density density) {
        return density.B0(this.f5033a.getF5031b());
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int b(Density density, LayoutDirection layoutDirection) {
        return density.B0(this.f5033a.c(layoutDirection));
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int c(Density density) {
        return density.B0(this.f5033a.getD());
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int d(Density density, LayoutDirection layoutDirection) {
        return density.B0(this.f5033a.b(layoutDirection));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PaddingValuesInsets) {
            return Intrinsics.c(((PaddingValuesInsets) obj).f5033a, this.f5033a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f5033a.hashCode();
    }

    public final String toString() {
        LayoutDirection layoutDirection = LayoutDirection.Ltr;
        PaddingValues paddingValues = this.f5033a;
        return "PaddingValues(" + ((Object) Dp.c(paddingValues.b(layoutDirection))) + ", " + ((Object) Dp.c(paddingValues.getF5031b())) + ", " + ((Object) Dp.c(paddingValues.c(layoutDirection))) + ", " + ((Object) Dp.c(paddingValues.getD())) + ')';
    }
}
