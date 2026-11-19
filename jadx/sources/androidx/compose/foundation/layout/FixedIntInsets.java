package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0007\b\u0003\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/layout/FixedIntInsets;", "Landroidx/compose/foundation/layout/WindowInsets;", "", "leftVal", "topVal", "rightVal", "bottomVal", "<init>", "(IIII)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class FixedIntInsets implements WindowInsets {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4964a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4965b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4966c;
    public final int d;

    public FixedIntInsets(int i2, int i3, int i4, int i5) {
        this.f4964a = i2;
        this.f4965b = i3;
        this.f4966c = i4;
        this.d = i5;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int a(Density density) {
        return this.f4965b;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int b(Density density, LayoutDirection layoutDirection) {
        return this.f4966c;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int c(Density density) {
        return this.d;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int d(Density density, LayoutDirection layoutDirection) {
        return this.f4964a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FixedIntInsets)) {
            return false;
        }
        FixedIntInsets fixedIntInsets = (FixedIntInsets) obj;
        return this.f4964a == fixedIntInsets.f4964a && this.f4965b == fixedIntInsets.f4965b && this.f4966c == fixedIntInsets.f4966c && this.d == fixedIntInsets.d;
    }

    public final int hashCode() {
        return (((((this.f4964a * 31) + this.f4965b) * 31) + this.f4966c) * 31) + this.d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Insets(left=");
        sb.append(this.f4964a);
        sb.append(", top=");
        sb.append(this.f4965b);
        sb.append(", right=");
        sb.append(this.f4966c);
        sb.append(", bottom=");
        return tr.k(sb, this.d, ')');
    }
}
