package com.perfectcorp.thirdparty.com.google.common.primitives;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Ints {
    public static int a(long j2) {
        if (j2 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j2 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j2;
    }
}
