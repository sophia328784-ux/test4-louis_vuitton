package androidx.compose.ui.input.pointer;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/input/pointer/AndroidPointerIcon;", "Landroidx/compose/ui/input/pointer/PointerIcon;", "Landroid/view/PointerIcon;", "pointerIcon", "<init>", "(Landroid/view/PointerIcon;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidPointerIcon implements PointerIcon {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.view.PointerIcon f9263b;

    public AndroidPointerIcon(android.view.PointerIcon pointerIcon) {
        this.f9263b = pointerIcon;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!AndroidPointerIcon.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        return Intrinsics.c(this.f9263b, ((AndroidPointerIcon) obj).f9263b);
    }

    public final int hashCode() {
        return this.f9263b.hashCode();
    }

    public final String toString() {
        return "AndroidPointerIcon(pointerIcon=" + this.f9263b + ')';
    }
}
