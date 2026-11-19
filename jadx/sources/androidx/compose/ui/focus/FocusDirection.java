package androidx.compose.ui.focus;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/focus/FocusDirection;", "", "Companion", "value", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class FocusDirection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f8731b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f8732c = 1;
    public static final int d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f8733e = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f8734f = 4;
    public static final int g = 5;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f8735h = 6;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f8736i = 7;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f8737j = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f8738a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/focus/FocusDirection$Companion;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static String a(int i2) {
        if (i2 == f8732c) {
            return "Next";
        }
        if (i2 == d) {
            return "Previous";
        }
        if (i2 == f8733e) {
            return "Left";
        }
        if (i2 == f8734f) {
            return "Right";
        }
        if (i2 == g) {
            return "Up";
        }
        if (i2 == f8735h) {
            return "Down";
        }
        if (i2 == f8736i) {
            return "Enter";
        }
        return i2 == f8737j ? "Exit" : "Invalid FocusDirection";
    }

    public final boolean equals(Object obj) {
        if (obj instanceof FocusDirection) {
            return this.f8738a == ((FocusDirection) obj).f8738a;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f8738a);
    }

    public final String toString() {
        return a(this.f8738a);
    }
}
