package com.google.android.gms.internal.fido;

import defpackage.md;
import defpackage.pq0;
import defpackage.r81;
import java.math.RoundingMode;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class zzgb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f29883a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final char[] f29884b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f29885c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f29886e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f29887f;
    public final byte[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f29888h;

    /* JADX WARN: Code duplicated, block: B:18:0x0061 A[LOOP:0: B:16:0x005d->B:18:0x0061, LOOP_END] */
    public zzgb(String str, char[] cArr, byte[] bArr, boolean z) {
        int iNumberOfLeadingZeros;
        boolean[] zArr;
        int i2;
        this.f29883a = str;
        cArr.getClass();
        this.f29884b = cArr;
        try {
            int length = cArr.length;
            RoundingMode roundingMode = RoundingMode.UNNECESSARY;
            if (length <= 0) {
                throw new IllegalArgumentException("x (0) must be > 0");
            }
            switch (zzgg.f29893a[roundingMode.ordinal()]) {
                case 1:
                    if (((length - 1) & length) != 0) {
                        throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
                    }
                case 2:
                case 3:
                    iNumberOfLeadingZeros = 31 - Integer.numberOfLeadingZeros(length);
                    this.d = iNumberOfLeadingZeros;
                    int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(iNumberOfLeadingZeros);
                    int i3 = 1 << (3 - iNumberOfTrailingZeros);
                    this.f29886e = i3;
                    this.f29887f = iNumberOfLeadingZeros >> iNumberOfTrailingZeros;
                    this.f29885c = length - 1;
                    this.g = bArr;
                    zArr = new boolean[i3];
                    for (i2 = 0; i2 < this.f29887f; i2++) {
                        int i4 = this.d;
                        RoundingMode roundingMode2 = RoundingMode.CEILING;
                        zArr[zzgh.a(i2 * 8, i4)] = true;
                    }
                    this.f29888h = z;
                    return;
                case 4:
                case 5:
                    iNumberOfLeadingZeros = 32 - Integer.numberOfLeadingZeros(length - 1);
                    this.d = iNumberOfLeadingZeros;
                    int iNumberOfTrailingZeros2 = Integer.numberOfTrailingZeros(iNumberOfLeadingZeros);
                    int i5 = 1 << (3 - iNumberOfTrailingZeros2);
                    this.f29886e = i5;
                    this.f29887f = iNumberOfLeadingZeros >> iNumberOfTrailingZeros2;
                    this.f29885c = length - 1;
                    this.g = bArr;
                    zArr = new boolean[i5];
                    while (i2 < this.f29887f) {
                        int i6 = this.d;
                        RoundingMode roundingMode3 = RoundingMode.CEILING;
                        zArr[zzgh.a(i2 * 8, i6)] = true;
                    }
                    this.f29888h = z;
                    return;
                case 6:
                case 7:
                case 8:
                    int iNumberOfLeadingZeros2 = Integer.numberOfLeadingZeros(length);
                    iNumberOfLeadingZeros = (31 - iNumberOfLeadingZeros2) + ((((-1257966797) >>> iNumberOfLeadingZeros2) - length) >>> 31);
                    this.d = iNumberOfLeadingZeros;
                    int iNumberOfTrailingZeros3 = Integer.numberOfTrailingZeros(iNumberOfLeadingZeros);
                    int i7 = 1 << (3 - iNumberOfTrailingZeros3);
                    this.f29886e = i7;
                    this.f29887f = iNumberOfLeadingZeros >> iNumberOfTrailingZeros3;
                    this.f29885c = length - 1;
                    this.g = bArr;
                    zArr = new boolean[i7];
                    while (i2 < this.f29887f) {
                        int i8 = this.d;
                        RoundingMode roundingMode4 = RoundingMode.CEILING;
                        zArr[zzgh.a(i2 * 8, i8)] = true;
                    }
                    this.f29888h = z;
                    return;
                default:
                    throw new AssertionError();
            }
        } catch (ArithmeticException e2) {
            r81.j(pq0.k(cArr.length, "Illegal alphabet length "), e2);
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgb)) {
            return false;
        }
        zzgb zzgbVar = (zzgb) obj;
        return this.f29888h == zzgbVar.f29888h && Arrays.equals(this.f29884b, zzgbVar.f29884b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f29884b) + (true != this.f29888h ? 1237 : 1231);
    }

    public final String toString() {
        return this.f29883a;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public zzgb(String str, char[] cArr) {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i2 = 0; i2 < cArr.length; i2++) {
            char c2 = cArr[i2];
            if (c2 < 128) {
                if (bArr[c2] == -1) {
                    bArr[c2] = (byte) i2;
                } else {
                    md.n(zzbo.a("Duplicate character: %s", Character.valueOf(c2)));
                    throw null;
                }
            } else {
                md.n(zzbo.a("Non-ASCII character: %s", Character.valueOf(c2)));
                throw null;
            }
        }
        this(str, cArr, bArr, false);
    }
}
