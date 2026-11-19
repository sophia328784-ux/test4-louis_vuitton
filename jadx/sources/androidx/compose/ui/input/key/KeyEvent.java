package androidx.compose.ui.input.key;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0087@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00060\u0003j\u0002`\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/input/key/KeyEvent;", "", "nativeKeyEvent", "Landroid/view/KeyEvent;", "Landroidx/compose/ui/input/key/NativeKeyEvent;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class KeyEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.view.KeyEvent f9235a;

    public final boolean equals(Object obj) {
        if (obj instanceof KeyEvent) {
            return Intrinsics.c(this.f9235a, ((KeyEvent) obj).f9235a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f9235a.hashCode();
    }

    public final String toString() {
        return "KeyEvent(nativeKeyEvent=" + this.f9235a + ')';
    }
}
