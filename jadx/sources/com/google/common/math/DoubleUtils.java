package com.google.common.math;

import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
abstract class DoubleUtils {
    public static long a(double d) {
        Preconditions.h(b(d), "not a normal value");
        int exponent = Math.getExponent(d);
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d) & 4503599627370495L;
        return exponent == -1023 ? jDoubleToRawLongBits << 1 : jDoubleToRawLongBits | 4503599627370496L;
    }

    public static boolean b(double d) {
        return Math.getExponent(d) <= 1023;
    }
}
