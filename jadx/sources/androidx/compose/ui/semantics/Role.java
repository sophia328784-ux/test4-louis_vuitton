package androidx.compose.ui.semantics;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/semantics/Role;", "", "Companion", "value", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class Role {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f10289b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f10290c = 1;
    public static final int d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f10291e = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f10292f = 4;
    public static final int g = 5;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f10293h = 6;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f10294i = 7;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f10295j = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10296a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/semantics/Role$Companion;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static String a(int i2) {
        if (i2 == 0) {
            return "Button";
        }
        if (i2 == f10290c) {
            return "Checkbox";
        }
        if (i2 == d) {
            return "Switch";
        }
        if (i2 == f10291e) {
            return "RadioButton";
        }
        if (i2 == f10292f) {
            return "Tab";
        }
        if (i2 == g) {
            return "Image";
        }
        if (i2 == f10293h) {
            return "DropdownList";
        }
        if (i2 == f10294i) {
            return "Picker";
        }
        return i2 == f10295j ? "Carousel" : "Unknown";
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Role) {
            return this.f10296a == ((Role) obj).f10296a;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f10296a);
    }

    public final String toString() {
        return a(this.f10296a);
    }
}
