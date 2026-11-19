package androidx.compose.ui.text.input;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/text/input/ImeAction;", "", "Companion", "value", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class ImeAction {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f10785b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f10786c = -1;
    public static final int d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f10787e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f10788f = 3;
    public static final int g = 4;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f10789h = 5;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f10790i = 6;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f10791j = 7;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10792a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/input/ImeAction$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static String a(int i2) {
        if (i2 == f10786c) {
            return "Unspecified";
        }
        if (i2 == 0) {
            return "None";
        }
        if (i2 == d) {
            return "Default";
        }
        if (i2 == f10787e) {
            return "Go";
        }
        if (i2 == f10788f) {
            return "Search";
        }
        if (i2 == g) {
            return "Send";
        }
        if (i2 == f10789h) {
            return "Previous";
        }
        if (i2 == f10790i) {
            return "Next";
        }
        return i2 == f10791j ? "Done" : "Invalid";
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ImeAction) {
            return this.f10792a == ((ImeAction) obj).f10792a;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f10792a);
    }

    public final String toString() {
        return a(this.f10792a);
    }
}
