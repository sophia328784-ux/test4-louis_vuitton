package com.google.android.gms.internal.clearcut;

import defpackage.a61;

/* JADX INFO: loaded from: classes2.dex */
final class zzfj extends zzfg {
    public static int c(long j2, byte[] bArr, int i2, int i3) {
        if (i3 == 0) {
            zzfg zzfgVar = zzff.f29751a;
            if (i2 > -12) {
                return -1;
            }
            return i2;
        }
        if (i3 == 1) {
            byte bA = zzfd.a(j2, bArr);
            zzfg zzfgVar2 = zzff.f29751a;
            if (i2 > -12 || bA > -65) {
                return -1;
            }
            return (bA << 8) ^ i2;
        }
        if (i3 != 2) {
            a61.h();
            return 0;
        }
        byte bA2 = zzfd.a(j2, bArr);
        byte bA3 = zzfd.a(j2 + 1, bArr);
        zzfg zzfgVar3 = zzff.f29751a;
        if (i2 > -12 || bA2 > -65 || bA3 > -65) {
            return -1;
        }
        return (bA3 << 16) ^ ((bA2 << 8) ^ i2);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfg
    public final int a(int i2, int i3, byte[] bArr) {
        int i4;
        if ((i2 | i3 | (bArr.length - i3)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
        long j2 = i2;
        int i5 = (int) (((long) i3) - j2);
        if (i5 >= 16) {
            long j3 = j2;
            i4 = 0;
            while (true) {
                if (i4 >= i5) {
                    i4 = i5;
                    break;
                }
                long j4 = j3 + 1;
                if (zzfd.a(j3, bArr) < 0) {
                    break;
                }
                i4++;
                j3 = j4;
            }
        } else {
            i4 = 0;
        }
        int i6 = i5 - i4;
        long j5 = j2 + ((long) i4);
        while (true) {
            byte bA = 0;
            while (i6 > 0) {
                long j6 = j5 + 1;
                bA = zzfd.a(j5, bArr);
                if (bA < 0) {
                    j5 = j6;
                    break;
                }
                i6--;
                j5 = j6;
            }
            if (i6 == 0) {
                return 0;
            }
            int i7 = i6 - 1;
            if (bA < -32) {
                if (i7 == 0) {
                    return bA;
                }
                i6 -= 2;
                if (bA < -62) {
                    return -1;
                }
                long j7 = j5 + 1;
                if (zzfd.a(j5, bArr) > -65) {
                    return -1;
                }
                j5 = j7;
            } else if (bA < -16) {
                if (i7 < 2) {
                    return c(j5, bArr, bA, i7);
                }
                i6 -= 3;
                long j8 = j5 + 1;
                byte bA2 = zzfd.a(j5, bArr);
                if (bA2 > -65) {
                    return -1;
                }
                if (bA == -32 && bA2 < -96) {
                    return -1;
                }
                if (bA == -19 && bA2 >= -96) {
                    return -1;
                }
                j5 += 2;
                if (zzfd.a(j8, bArr) > -65) {
                    return -1;
                }
            } else {
                if (i7 < 3) {
                    return c(j5, bArr, bA, i7);
                }
                i6 -= 4;
                long j9 = j5 + 1;
                byte bA3 = zzfd.a(j5, bArr);
                if (bA3 > -65) {
                    return -1;
                }
                if ((((bA3 + 112) + (bA << 28)) >> 30) != 0) {
                    return -1;
                }
                long j10 = 2 + j5;
                if (zzfd.a(j9, bArr) > -65) {
                    return -1;
                }
                j5 += 3;
                if (zzfd.a(j10, bArr) > -65) {
                    return -1;
                }
            }
        }
    }
}
