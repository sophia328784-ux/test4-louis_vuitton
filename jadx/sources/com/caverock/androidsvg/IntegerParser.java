package com.caverock.androidsvg;

/* JADX INFO: loaded from: classes2.dex */
class IntegerParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f25144a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f25145b;

    public IntegerParser(long j2, int i2) {
        this.f25145b = j2;
        this.f25144a = i2;
    }

    public static IntegerParser a(int i2, int i3, String str) {
        if (i2 >= i3) {
            return null;
        }
        long j2 = 0;
        int i4 = i2;
        while (i4 < i3) {
            char cCharAt = str.charAt(i4);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            j2 = (j2 * 10) + ((long) (cCharAt - '0'));
            if (j2 > 2147483647L) {
                return null;
            }
            i4++;
        }
        if (i4 == i2) {
            return null;
        }
        return new IntegerParser(j2, i4);
    }
}
