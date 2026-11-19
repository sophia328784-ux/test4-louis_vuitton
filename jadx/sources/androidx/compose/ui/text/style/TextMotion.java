package androidx.compose.ui.text.style;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0002\b\tB\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Landroidx/compose/ui/text/style/TextMotion;", "", "Landroidx/compose/ui/text/style/TextMotion$Linearity;", "linearity", "", "subpixelTextPositioning", "<init>", "(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "Linearity", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextMotion {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f10981c = new Companion(null);
    public static final TextMotion d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final TextMotion f10982e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f10984b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/style/TextMotion$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0081@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/text/style/TextMotion$Linearity;", "", "Companion", "value", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @JvmInline
    public static final class Linearity {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Companion f10985b = new Companion(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f10986c = 1;
        public static final int d = 2;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int f10987e = 3;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f10988a;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/style/TextMotion$Linearity$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Linearity) {
                return this.f10988a == ((Linearity) obj).f10988a;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f10988a);
        }

        public final String toString() {
            int i2 = f10986c;
            int i3 = this.f10988a;
            if (i3 == i2) {
                return "Linearity.Linear";
            }
            if (i3 == d) {
                return "Linearity.FontHinting";
            }
            return i3 == f10987e ? "Linearity.None" : "Invalid";
        }
    }

    static {
        Linearity.Companion companion = Linearity.f10985b;
        companion.getClass();
        d = new TextMotion(Linearity.d, false, null);
        companion.getClass();
        f10982e = new TextMotion(Linearity.f10986c, true, null);
    }

    public TextMotion(int i2, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this.f10983a = i2;
        this.f10984b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextMotion)) {
            return false;
        }
        TextMotion textMotion = (TextMotion) obj;
        int i2 = textMotion.f10983a;
        Linearity.Companion companion = Linearity.f10985b;
        return this.f10983a == i2 && this.f10984b == textMotion.f10984b;
    }

    public final int hashCode() {
        Linearity.Companion companion = Linearity.f10985b;
        return Boolean.hashCode(this.f10984b) + (Integer.hashCode(this.f10983a) * 31);
    }

    public final String toString() {
        if (equals(d)) {
            return "TextMotion.Static";
        }
        return equals(f10982e) ? "TextMotion.Animated" : "Invalid";
    }
}
