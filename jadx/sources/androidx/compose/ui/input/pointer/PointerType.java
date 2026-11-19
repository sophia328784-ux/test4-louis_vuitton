package androidx.compose.ui.input.pointer;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/input/pointer/PointerType;", "", "Companion", "value", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class PointerType {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f9367b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f9368c = 1;
    public static final int d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f9369e = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f9370f = 4;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f9371a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/input/pointer/PointerType$Companion;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static String a(int i2) {
        if (i2 == 1) {
            return "Touch";
        }
        if (i2 == 2) {
            return "Mouse";
        }
        if (i2 != 3) {
            return i2 != 4 ? "Unknown" : "Eraser";
        }
        return "Stylus";
    }

    public final boolean equals(Object obj) {
        if (obj instanceof PointerType) {
            return this.f9371a == ((PointerType) obj).f9371a;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f9371a);
    }

    public final String toString() {
        return a(this.f9371a);
    }
}
