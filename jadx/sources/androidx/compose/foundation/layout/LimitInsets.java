package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/layout/LimitInsets;", "Landroidx/compose/foundation/layout/WindowInsets;", "insets", "Landroidx/compose/foundation/layout/WindowInsetsSides;", "sides", "<init>", "(Landroidx/compose/foundation/layout/WindowInsets;ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class LimitInsets implements WindowInsets {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WindowInsets f5015a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5016b;

    public LimitInsets(WindowInsets windowInsets, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f5015a = windowInsets;
        this.f5016b = i2;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int a(Density density) {
        WindowInsetsSides.f5130a.getClass();
        if ((WindowInsetsSides.f5135h & this.f5016b) != 0) {
            return this.f5015a.a(density);
        }
        return 0;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int b(Density density, LayoutDirection layoutDirection) {
        int i2;
        if (layoutDirection == LayoutDirection.Ltr) {
            WindowInsetsSides.f5130a.getClass();
            i2 = WindowInsetsSides.f5132c;
        } else {
            WindowInsetsSides.f5130a.getClass();
            i2 = WindowInsetsSides.f5133e;
        }
        if ((i2 & this.f5016b) != 0) {
            return this.f5015a.b(density, layoutDirection);
        }
        return 0;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int c(Density density) {
        WindowInsetsSides.f5130a.getClass();
        if ((WindowInsetsSides.f5136i & this.f5016b) != 0) {
            return this.f5015a.c(density);
        }
        return 0;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int d(Density density, LayoutDirection layoutDirection) {
        int i2;
        if (layoutDirection == LayoutDirection.Ltr) {
            WindowInsetsSides.f5130a.getClass();
            i2 = WindowInsetsSides.f5131b;
        } else {
            WindowInsetsSides.f5130a.getClass();
            i2 = WindowInsetsSides.d;
        }
        if ((i2 & this.f5016b) != 0) {
            return this.f5015a.d(density, layoutDirection);
        }
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LimitInsets)) {
            return false;
        }
        LimitInsets limitInsets = (LimitInsets) obj;
        if (Intrinsics.c(this.f5015a, limitInsets.f5015a)) {
            int i2 = limitInsets.f5016b;
            WindowInsetsSides.Companion companion = WindowInsetsSides.f5130a;
            if (this.f5016b == i2) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f5015a.hashCode() * 31;
        WindowInsetsSides.Companion companion = WindowInsetsSides.f5130a;
        return Integer.hashCode(this.f5016b) + iHashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("(");
        sb.append(this.f5015a);
        sb.append(" only ");
        WindowInsetsSides.Companion companion = WindowInsetsSides.f5130a;
        StringBuilder sb2 = new StringBuilder("WindowInsetsSides(");
        StringBuilder sb3 = new StringBuilder();
        int i2 = WindowInsetsSides.f5134f;
        int i3 = this.f5016b;
        if ((i3 & i2) == i2) {
            WindowInsetsSides.a("Start", sb3);
        }
        int i4 = WindowInsetsSides.f5137j;
        if ((i3 & i4) == i4) {
            WindowInsetsSides.a("Left", sb3);
        }
        int i5 = WindowInsetsSides.f5135h;
        if ((i3 & i5) == i5) {
            WindowInsetsSides.a("Top", sb3);
        }
        int i6 = WindowInsetsSides.g;
        if ((i3 & i6) == i6) {
            WindowInsetsSides.a("End", sb3);
        }
        int i7 = WindowInsetsSides.f5138k;
        if ((i3 & i7) == i7) {
            WindowInsetsSides.a("Right", sb3);
        }
        int i8 = WindowInsetsSides.f5136i;
        if ((i3 & i8) == i8) {
            WindowInsetsSides.a("Bottom", sb3);
        }
        sb2.append(sb3.toString());
        sb2.append(')');
        sb.append((Object) sb2.toString());
        sb.append(')');
        return sb.toString();
    }
}
