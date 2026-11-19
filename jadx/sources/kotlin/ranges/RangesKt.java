package kotlin.ranges;

import androidx.compose.ui.unit.Dp;
import defpackage.fc;
import defpackage.md;
import defpackage.no0;
import defpackage.pq0;
import io.jsonwebtoken.JwtParser;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"kotlin/ranges/RangesKt__RangesKt", "kotlin/ranges/RangesKt___RangesKt"}, k = 4, mv = {2, 4, 0}, xi = 49)
public abstract class RangesKt extends RangesKt___RangesKt {
    public static Comparable a(Dp dp, Dp dp2) {
        return dp.compareTo(dp2) < 0 ? dp2 : dp;
    }

    public static double b(double d, double d2, double d3) {
        if (d2 <= d3) {
            if (d < d2) {
                return d2;
            }
            return d > d3 ? d3 : d;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + d3 + " is less than minimum " + d2 + JwtParser.SEPARATOR_CHAR);
    }

    public static float c(float f2, float f3, float f4) {
        if (f3 <= f4) {
            if (f2 < f3) {
                return f3;
            }
            return f2 > f4 ? f4 : f2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f4 + " is less than minimum " + f3 + JwtParser.SEPARATOR_CHAR);
    }

    public static int d(int i2, int i3, int i4) {
        if (i3 <= i4) {
            if (i2 < i3) {
                return i3;
            }
            return i2 > i4 ? i4 : i2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i4 + " is less than minimum " + i3 + JwtParser.SEPARATOR_CHAR);
    }

    public static long e(long j2, long j3, long j4) {
        if (j3 > j4) {
            md.n(fc.k(pq0.q(j4, "Cannot coerce value to an empty range: maximum ", " is less than minimum "), j3, JwtParser.SEPARATOR_CHAR));
            return 0L;
        }
        if (j2 < j3) {
            return j3;
        }
        return j2 > j4 ? j4 : j2;
    }

    public static Comparable f(Float f2, ClosedFloatingPointRange closedFloatingPointRange) {
        closedFloatingPointRange.getClass();
        if (closedFloatingPointRange.isEmpty()) {
            throw new IllegalArgumentException("Cannot coerce value to an empty range: " + closedFloatingPointRange + JwtParser.SEPARATOR_CHAR);
        }
        if (!closedFloatingPointRange.a(f2, closedFloatingPointRange.i()) || closedFloatingPointRange.a(closedFloatingPointRange.i(), f2)) {
            return (!closedFloatingPointRange.a(closedFloatingPointRange.f(), f2) || closedFloatingPointRange.a(f2, closedFloatingPointRange.f())) ? f2 : closedFloatingPointRange.f();
        }
        return closedFloatingPointRange.i();
    }

    public static Comparable g(Integer num, Integer num2, Integer num3) {
        if (num2 == null || num3 == null) {
            if (num2 != null && num.compareTo(num2) < 0) {
                return num2;
            }
            if (num3 != null && num.compareTo(num3) > 0) {
                return num3;
            }
        } else {
            if (num2.compareTo(num3) > 0) {
                no0.r("Cannot coerce value to an empty range: maximum ", num3, " is less than minimum ", num2, 46);
                return null;
            }
            if (num.compareTo(num2) < 0) {
                return num2;
            }
            if (num.compareTo(num3) > 0) {
                return num3;
            }
        }
        return num;
    }

    public static ClosedFloatingPointRange h(float f2, float f3) {
        return new ClosedFloatRange(f2, f3);
    }

    public static IntProgression i(IntRange intRange, int i2) {
        intRange.getClass();
        boolean z = i2 > 0;
        Integer numValueOf = Integer.valueOf(i2);
        if (!z) {
            throw new IllegalArgumentException("Step must be positive, was: " + numValueOf + JwtParser.SEPARATOR_CHAR);
        }
        IntProgression.Companion companion = IntProgression.INSTANCE;
        int i3 = intRange.f71951b;
        int i4 = intRange.f71952c;
        if (intRange.d <= 0) {
            i2 = -i2;
        }
        companion.getClass();
        return new IntProgression(i3, i4, i2);
    }

    public static IntRange j(int i2, int i3) {
        if (i3 > Integer.MIN_VALUE) {
            return new IntRange(i2, i3 - 1);
        }
        IntRange.INSTANCE.getClass();
        return IntRange.g;
    }
}
