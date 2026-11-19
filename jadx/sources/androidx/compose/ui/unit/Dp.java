package androidx.compose.ui.unit;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\b\u0087@\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/unit/Dp;", "", "Companion", "value", "", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class Dp implements Comparable<Dp> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f11004c = new Companion(null);
    public static final float d = Float.POSITIVE_INFINITY;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final float f11005e = Float.NaN;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f11006b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/unit/Dp$Companion;", "", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static int a(float f2, float f3) {
        if (Float.isNaN(f2) || Float.isNaN(f3)) {
            return 0;
        }
        return Float.compare(f2, f3);
    }

    public static final boolean b(float f2, float f3) {
        return Float.compare(f2, f3) == 0;
    }

    public static String c(float f2) {
        if (Float.isNaN(f2)) {
            return "Dp.Unspecified";
        }
        return f2 + ".dp";
    }

    @Override // java.lang.Comparable
    public final int compareTo(Dp dp) {
        return a(this.f11006b, dp.f11006b);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Dp) {
            return Float.compare(this.f11006b, ((Dp) obj).f11006b) == 0;
        }
        return false;
    }

    public final int hashCode() {
        return Float.hashCode(this.f11006b);
    }

    public final String toString() {
        return c(this.f11006b);
    }
}
