package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.fc;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0003\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/layout/FixedDpInsets;", "Landroidx/compose/foundation/layout/WindowInsets;", "Landroidx/compose/ui/unit/Dp;", "leftDp", "topDp", "rightDp", "bottomDp", "<init>", "(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class FixedDpInsets implements WindowInsets {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f4961a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f4962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f4963c;
    public final float d;

    public FixedDpInsets(float f2, float f3, float f4, float f5, DefaultConstructorMarker defaultConstructorMarker) {
        this.f4961a = f2;
        this.f4962b = f3;
        this.f4963c = f4;
        this.d = f5;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int a(Density density) {
        return density.B0(this.f4962b);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int b(Density density, LayoutDirection layoutDirection) {
        return density.B0(this.f4963c);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int c(Density density) {
        return density.B0(this.d);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int d(Density density, LayoutDirection layoutDirection) {
        return density.B0(this.f4961a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FixedDpInsets)) {
            return false;
        }
        FixedDpInsets fixedDpInsets = (FixedDpInsets) obj;
        return Dp.b(this.f4961a, fixedDpInsets.f4961a) && Dp.b(this.f4962b, fixedDpInsets.f4962b) && Dp.b(this.f4963c, fixedDpInsets.f4963c) && Dp.b(this.d, fixedDpInsets.d);
    }

    public final int hashCode() {
        Dp.Companion companion = Dp.f11004c;
        return Float.hashCode(this.d) + pq0.b(pq0.b(Float.hashCode(this.f4961a) * 31, 31, this.f4962b), 31, this.f4963c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Insets(left=");
        fc.w(this.f4961a, ", top=", sb);
        fc.w(this.f4962b, ", right=", sb);
        fc.w(this.f4963c, ", bottom=", sb);
        sb.append((Object) Dp.c(this.d));
        sb.append(')');
        return sb.toString();
    }
}
