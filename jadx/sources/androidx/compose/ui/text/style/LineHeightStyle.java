package androidx.compose.ui.text.style;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001:\u0004\u000b\f\r\u000eB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\n¨\u0006\u000f"}, d2 = {"Landroidx/compose/ui/text/style/LineHeightStyle;", "", "Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;", "alignment", "Landroidx/compose/ui/text/style/LineHeightStyle$Trim;", "trim", "Landroidx/compose/ui/text/style/LineHeightStyle$Mode;", "mode", "<init>", "(FIILkotlin/jvm/internal/DefaultConstructorMarker;)V", "(FILkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "Trim", "Alignment", "Mode", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LineHeightStyle {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final LineHeightStyle f10944e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f10945a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10946b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10947c;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;", "", "Companion", "topRatio", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @JvmInline
    public static final class Alignment {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Companion f10948b = new Companion(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final float f10949c;
        public static final float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final float f10950e;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f10951a;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/style/LineHeightStyle$Alignment$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        static {
            a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            a(0.5f);
            f10949c = 0.5f;
            a(-1.0f);
            d = -1.0f;
            a(1.0f);
            f10950e = 1.0f;
        }

        public static void a(float f2) {
            if ((Call.Parameters.DEFAULT_CAMERA_ZOOM > f2 || f2 > 1.0f) && f2 != -1.0f) {
                InlineClassHelperKt.c("topRatio should be in [0..1] range or -1");
            }
        }

        public static String b(float f2) {
            if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                return "LineHeightStyle.Alignment.Top";
            }
            if (f2 == f10949c) {
                return "LineHeightStyle.Alignment.Center";
            }
            if (f2 == d) {
                return "LineHeightStyle.Alignment.Proportional";
            }
            if (f2 == f10950e) {
                return "LineHeightStyle.Alignment.Bottom";
            }
            return "LineHeightStyle.Alignment(topPercentage = " + f2 + ')';
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Alignment) {
                return Float.compare(this.f10951a, ((Alignment) obj).f10951a) == 0;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.f10951a);
        }

        public final String toString() {
            return b(this.f10951a);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/style/LineHeightStyle$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/text/style/LineHeightStyle$Mode;", "", "Companion", "value", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @JvmInline
    public static final class Mode {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Companion f10952b = new Companion(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f10953c = 1;
        public static final int d = 2;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f10954a;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/style/LineHeightStyle$Mode$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Mode) {
                return this.f10954a == ((Mode) obj).f10954a;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f10954a);
        }

        public final String toString() {
            int i2 = this.f10954a;
            if (i2 == 0) {
                return "LineHeightStyle.Mode.Fixed";
            }
            if (i2 == f10953c) {
                return "LineHeightStyle.Mode.Minimum";
            }
            return i2 == d ? "LineHeightStyle.Mode.Tight" : "Invalid";
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/text/style/LineHeightStyle$Trim;", "", "Companion", "value", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @JvmInline
    public static final class Trim {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Companion f10955b = new Companion(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f10956c = 1;
        public static final int d = 16;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int f10957e = 17;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f10958a;

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/text/style/LineHeightStyle$Trim$Companion;", "", "", "FlagTrimTop", "I", "FlagTrimBottom", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        public static String a(int i2) {
            if (i2 == f10956c) {
                return "LineHeightStyle.Trim.FirstLineTop";
            }
            if (i2 == d) {
                return "LineHeightStyle.Trim.LastLineBottom";
            }
            if (i2 == f10957e) {
                return "LineHeightStyle.Trim.Both";
            }
            return i2 == 0 ? "LineHeightStyle.Trim.None" : "Invalid";
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Trim) {
                return this.f10958a == ((Trim) obj).f10958a;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f10958a);
        }

        public final String toString() {
            return a(this.f10958a);
        }
    }

    static {
        Alignment.f10948b.getClass();
        float f2 = Alignment.d;
        Trim.f10955b.getClass();
        int i2 = Trim.f10957e;
        Mode.f10952b.getClass();
        f10944e = new LineHeightStyle(f2, i2, 0, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LineHeightStyle(float f2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(f2, i2, 0, null);
        Mode.f10952b.getClass();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LineHeightStyle)) {
            return false;
        }
        LineHeightStyle lineHeightStyle = (LineHeightStyle) obj;
        float f2 = lineHeightStyle.f10945a;
        Alignment.Companion companion = Alignment.f10948b;
        if (Float.compare(this.f10945a, f2) == 0) {
            int i2 = lineHeightStyle.f10946b;
            Trim.Companion companion2 = Trim.f10955b;
            if (this.f10946b == i2) {
                int i3 = lineHeightStyle.f10947c;
                Mode.Companion companion3 = Mode.f10952b;
                if (this.f10947c == i3) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        Alignment.Companion companion = Alignment.f10948b;
        int iHashCode = Float.hashCode(this.f10945a) * 31;
        Trim.Companion companion2 = Trim.f10955b;
        int iB = tr.b(this.f10946b, iHashCode, 31);
        Mode.Companion companion3 = Mode.f10952b;
        return Integer.hashCode(this.f10947c) + iB;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("LineHeightStyle(alignment=");
        sb.append((Object) Alignment.b(this.f10945a));
        sb.append(", trim=");
        sb.append((Object) Trim.a(this.f10946b));
        sb.append(",mode=");
        int i2 = this.f10947c;
        if (i2 == 0) {
            str = "LineHeightStyle.Mode.Fixed";
        } else if (i2 == Mode.f10953c) {
            str = "LineHeightStyle.Mode.Minimum";
        } else {
            str = i2 == Mode.d ? "LineHeightStyle.Mode.Tight" : "Invalid";
        }
        sb.append((Object) str);
        sb.append(')');
        return sb.toString();
    }

    public LineHeightStyle(float f2, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this.f10945a = f2;
        this.f10946b = i2;
        this.f10947c = i3;
    }
}
