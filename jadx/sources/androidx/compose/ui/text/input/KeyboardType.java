package androidx.compose.ui.text.input;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/text/input/KeyboardType;", "", "Companion", "value", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class KeyboardType {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f10809b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f10810c = 1;
    public static final int d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f10811e = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f10812f = 4;
    public static final int g = 5;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f10813h = 6;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f10814i = 7;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f10815j = 8;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f10816k = 9;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10817a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/input/KeyboardType$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static String a(int i2) {
        if (i2 == 0) {
            return "Unspecified";
        }
        if (i2 == f10810c) {
            return "Text";
        }
        if (i2 == d) {
            return "Ascii";
        }
        if (i2 == f10811e) {
            return "Number";
        }
        if (i2 == f10812f) {
            return "Phone";
        }
        if (i2 == g) {
            return "Uri";
        }
        if (i2 == f10813h) {
            return "Email";
        }
        if (i2 == f10814i) {
            return "Password";
        }
        if (i2 == f10815j) {
            return "NumberPassword";
        }
        return i2 == f10816k ? "Decimal" : "Invalid";
    }

    public final boolean equals(Object obj) {
        if (obj instanceof KeyboardType) {
            return this.f10817a == ((KeyboardType) obj).f10817a;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f10817a);
    }

    public final String toString() {
        return a(this.f10817a);
    }
}
