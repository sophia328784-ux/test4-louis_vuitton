package androidx.compose.ui.text.style;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/text/style/TextDirection;", "", "Companion", "value", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class TextDirection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f10969b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f10970c = 1;
    public static final int d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f10971e = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f10972f = 4;
    public static final int g = 5;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10973a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/style/TextDirection$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static String a(int i2) {
        if (i2 == f10970c) {
            return "Ltr";
        }
        if (i2 == d) {
            return "Rtl";
        }
        if (i2 == f10971e) {
            return "Content";
        }
        if (i2 == f10972f) {
            return "ContentOrLtr";
        }
        if (i2 == g) {
            return "ContentOrRtl";
        }
        return i2 == 0 ? "Unspecified" : "Invalid";
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TextDirection) {
            return this.f10973a == ((TextDirection) obj).f10973a;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f10973a);
    }

    public final String toString() {
        return a(this.f10973a);
    }
}
