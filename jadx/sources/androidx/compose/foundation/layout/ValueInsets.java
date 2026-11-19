package androidx.compose.foundation.layout;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/layout/ValueInsets;", "Landroidx/compose/foundation/layout/WindowInsets;", "Landroidx/compose/foundation/layout/InsetsValues;", "insets", "", "name", "<init>", "(Landroidx/compose/foundation/layout/InsetsValues;Ljava/lang/String;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ValueInsets implements WindowInsets {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f5068b;

    public ValueInsets(InsetsValues insetsValues, String str) {
        this.f5067a = str;
        this.f5068b = SnapshotStateKt.g(insetsValues);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int a(Density density) {
        return e().f5007b;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int b(Density density, LayoutDirection layoutDirection) {
        return e().f5008c;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int c(Density density) {
        return e().d;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int d(Density density, LayoutDirection layoutDirection) {
        return e().f5006a;
    }

    public final InsetsValues e() {
        return (InsetsValues) ((SnapshotMutableStateImpl) this.f5068b).getF10755b();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ValueInsets) {
            return Intrinsics.c(e(), ((ValueInsets) obj).e());
        }
        return false;
    }

    public final void f(InsetsValues insetsValues) {
        ((SnapshotMutableStateImpl) this.f5068b).setValue(insetsValues);
    }

    public final int hashCode() {
        return this.f5067a.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f5067a);
        sb.append("(left=");
        sb.append(e().f5006a);
        sb.append(", top=");
        sb.append(e().f5007b);
        sb.append(", right=");
        sb.append(e().f5008c);
        sb.append(", bottom=");
        return tr.k(sb, e().d, ')');
    }
}
