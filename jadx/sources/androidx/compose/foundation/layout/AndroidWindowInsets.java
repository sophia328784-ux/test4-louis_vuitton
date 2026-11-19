package androidx.compose.foundation.layout;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.graphics.Insets;
import androidx.core.view.WindowInsetsCompat;
import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/layout/AndroidWindowInsets;", "Landroidx/compose/foundation/layout/WindowInsets;", "", "type", "", "name", "<init>", "(ILjava/lang/String;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidWindowInsets implements WindowInsets {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4915a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f4916b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableState f4917c = SnapshotStateKt.g(Insets.f12053e);
    public final MutableState d = SnapshotStateKt.g(Boolean.TRUE);

    public AndroidWindowInsets(int i2, String str) {
        this.f4915a = i2;
        this.f4916b = str;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int a(Density density) {
        return e().f12055b;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int b(Density density, LayoutDirection layoutDirection) {
        return e().f12056c;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int c(Density density) {
        return e().d;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int d(Density density, LayoutDirection layoutDirection) {
        return e().f12054a;
    }

    public final Insets e() {
        return (Insets) ((SnapshotMutableStateImpl) this.f4917c).getF10755b();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AndroidWindowInsets) {
            return this.f4915a == ((AndroidWindowInsets) obj).f4915a;
        }
        return false;
    }

    public final void f(boolean z) {
        ((SnapshotMutableStateImpl) this.d).setValue(Boolean.valueOf(z));
    }

    public final void g(WindowInsetsCompat windowInsetsCompat, int i2) {
        int i3 = this.f4915a;
        if (i2 == 0 || (i2 & i3) != 0) {
            ((SnapshotMutableStateImpl) this.f4917c).setValue(windowInsetsCompat.e(i3));
            f(windowInsetsCompat.o(i3));
        }
    }

    /* JADX INFO: renamed from: hashCode, reason: from getter */
    public final int getF4915a() {
        return this.f4915a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f4916b);
        sb.append('(');
        sb.append(e().f12054a);
        sb.append(", ");
        sb.append(e().f12055b);
        sb.append(", ");
        sb.append(e().f12056c);
        sb.append(", ");
        return tr.k(sb, e().d, ')');
    }
}
