package kotlin.math;

import defpackage.md;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"kotlin/math/MathKt__MathHKt", "kotlin/math/MathKt__MathJVMKt"}, k = 4, mv = {2, 4, 0}, xi = 49)
public abstract class MathKt extends MathKt__MathJVMKt {
    public static float a(float f2) {
        return (float) (Math.log(f2) / Constants.f71936b);
    }

    public static int b(double d) {
        if (Double.isNaN(d)) {
            md.n("Cannot round NaN value.");
            return 0;
        }
        if (d > 2.147483647E9d) {
            return Integer.MAX_VALUE;
        }
        if (d < -2.147483648E9d) {
            return Integer.MIN_VALUE;
        }
        return (int) Math.round(d);
    }

    public static int c(float f2) {
        if (!Float.isNaN(f2)) {
            return Math.round(f2);
        }
        md.n("Cannot round NaN value.");
        return 0;
    }

    public static long d(double d) {
        if (!Double.isNaN(d)) {
            return Math.round(d);
        }
        md.n("Cannot round NaN value.");
        return 0L;
    }
}
