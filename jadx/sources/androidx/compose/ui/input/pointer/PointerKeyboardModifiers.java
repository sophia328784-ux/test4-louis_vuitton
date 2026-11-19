package androidx.compose.ui.input.pointer;

import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\b\u0087@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00060\u0003j\u0002`\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;", "", "packedValue", "", "Landroidx/compose/ui/input/pointer/NativePointerKeyboardModifiers;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class PointerKeyboardModifiers {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f9366a;

    public /* synthetic */ PointerKeyboardModifiers(int i2) {
        this.f9366a = i2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof PointerKeyboardModifiers) {
            return this.f9366a == ((PointerKeyboardModifiers) obj).f9366a;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f9366a);
    }

    public final String toString() {
        return n00.q("PointerKeyboardModifiers(packedValue=", this.f9366a, ')');
    }
}
