package org.spongycastle.math.raw;

import defpackage.ct0;
import java.math.BigInteger;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Nat {
    public static int a(int i2, int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            long j3 = (((long) iArr[i3]) & BodyPartID.bodyIdMax) + (BodyPartID.bodyIdMax & ((long) iArr2[i3])) + j2;
            iArr3[i3] = (int) j3;
            j2 = j3 >>> 32;
        }
        return (int) j2;
    }

    public static void b(int i2, int i3, int[] iArr) {
        long j2 = (((long) iArr[0]) & BodyPartID.bodyIdMax) + (((long) i3) & BodyPartID.bodyIdMax);
        iArr[0] = (int) j2;
        long j3 = (BodyPartID.bodyIdMax & ((long) iArr[1])) + 1 + (j2 >>> 32);
        iArr[1] = (int) j3;
        if ((j3 >>> 32) == 0) {
            return;
        }
        o(i2, iArr, 2);
    }

    public static int c(int i2, int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            long j3 = (((long) iArr[i3]) & BodyPartID.bodyIdMax) + (((long) iArr2[i3]) & BodyPartID.bodyIdMax) + (BodyPartID.bodyIdMax & ((long) iArr3[i3])) + j2;
            iArr3[i3] = (int) j3;
            j2 = j3 >>> 32;
        }
        return (int) j2;
    }

    public static int d(int i2, int i3, int[] iArr, int[] iArr2) {
        long j2 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = i3 + i4;
            long j3 = (((long) iArr[i4]) & BodyPartID.bodyIdMax) + (BodyPartID.bodyIdMax & ((long) iArr2[i5])) + j2;
            iArr2[i5] = (int) j3;
            j2 = j3 >>> 32;
        }
        return (int) j2;
    }

    public static int e(int i2, int[] iArr, int[] iArr2) {
        long j2 = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            long j3 = (((long) iArr[i3]) & BodyPartID.bodyIdMax) + (BodyPartID.bodyIdMax & ((long) iArr2[i3])) + j2;
            iArr2[i3] = (int) j3;
            j2 = j3 >>> 32;
        }
        return (int) j2;
    }

    public static void f(int i2, int i3, int i4, int[] iArr) {
        long j2 = (((long) i3) & BodyPartID.bodyIdMax) + (BodyPartID.bodyIdMax & ((long) iArr[i4]));
        iArr[i4] = (int) j2;
        if ((j2 >>> 32) == 0) {
            return;
        }
        o(i2, iArr, i4 + 1);
    }

    public static int g(int i2, int i3, int[] iArr) {
        long j2 = (((long) i3) & BodyPartID.bodyIdMax) + (BodyPartID.bodyIdMax & ((long) iArr[0]));
        iArr[0] = (int) j2;
        if ((j2 >>> 32) == 0) {
            return 0;
        }
        return o(i2, iArr, 1);
    }

    public static int h(int i2, int[] iArr, int i3) {
        while (i3 < i2) {
            int i4 = iArr[i3] - 1;
            iArr[i3] = i4;
            if (i4 != -1) {
                return 0;
            }
            i3++;
        }
        return -1;
    }

    public static boolean i(int i2, int[] iArr, int[] iArr2) {
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            if (iArr[i3] != iArr2[i3]) {
                return false;
            }
        }
        return true;
    }

    public static int[] j(int i2, BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > i2) {
            ct0.c();
            return null;
        }
        int[] iArr = new int[(i2 + 31) >> 5];
        int i3 = 0;
        while (bigInteger.signum() != 0) {
            iArr[i3] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
            i3++;
        }
        return iArr;
    }

    public static int k(int[] iArr) {
        return iArr[0] & 1;
    }

    public static boolean l(int i2, int[] iArr, int[] iArr2) {
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            int i4 = iArr[i3] ^ Integer.MIN_VALUE;
            int i5 = Integer.MIN_VALUE ^ iArr2[i3];
            if (i4 < i5) {
                return false;
            }
            if (i4 > i5) {
                return true;
            }
        }
        return true;
    }

    public static int m(int i2, int[] iArr, int[] iArr2) {
        int i3 = 0;
        while (i3 < i2) {
            int i4 = iArr[i3] + 1;
            iArr2[i3] = i4;
            i3++;
            if (i4 != 0) {
                while (i3 < i2) {
                    iArr2[i3] = iArr[i3];
                    i3++;
                }
                return 0;
            }
        }
        return 1;
    }

    public static int n(int[] iArr) {
        for (int i2 = 0; i2 < 16; i2++) {
            int i3 = iArr[i2] + 1;
            iArr[i2] = i3;
            if (i3 != 0) {
                return 0;
            }
        }
        return 1;
    }

    public static int o(int i2, int[] iArr, int i3) {
        while (i3 < i2) {
            int i4 = iArr[i3] + 1;
            iArr[i3] = i4;
            if (i4 != 0) {
                return 0;
            }
            i3++;
        }
        return 1;
    }

    public static int p(int i2, int i3, int[] iArr) {
        while (i3 < i2) {
            int i4 = iArr[i3] + 1;
            iArr[i3] = i4;
            if (i4 != 0) {
                return 0;
            }
            i3++;
        }
        return 1;
    }

    public static boolean q(int i2, int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i3 = 1; i3 < i2; i3++) {
            if (iArr[i3] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean r(int i2, int[] iArr) {
        for (int i3 = 0; i3 < i2; i3++) {
            if (iArr[i3] != 0) {
                return false;
            }
        }
        return true;
    }

    public static int s(int i2, int[] iArr, int i3, int[] iArr2) {
        int i4 = 0;
        while (i4 < i2) {
            int i5 = iArr[i4];
            iArr2[i4] = (i3 >>> 31) | (i5 << 1);
            i4++;
            i3 = i5;
        }
        return i3 >>> 31;
    }

    public static int t(int i2, int[] iArr) {
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = iArr[i3];
            iArr[i3] = (i4 >>> (-2)) | (i5 << 2);
            i3++;
            i4 = i5;
        }
        return i4 >>> (-2);
    }

    public static int u(int i2, int[] iArr, int[] iArr2) {
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = iArr[i3];
            iArr2[i3] = (i4 >>> (-3)) | (i5 << 3);
            i3++;
            i4 = i5;
        }
        return i4 >>> (-3);
    }

    public static int v(int i2, int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            long j3 = ((((long) iArr[i3]) & BodyPartID.bodyIdMax) - (BodyPartID.bodyIdMax & ((long) iArr2[i3]))) + j2;
            iArr3[i3] = (int) j3;
            j2 = j3 >> 32;
        }
        return (int) j2;
    }

    public static void w(int i2, int i3, int[] iArr) {
        long j2 = (((long) iArr[0]) & BodyPartID.bodyIdMax) - (((long) i3) & BodyPartID.bodyIdMax);
        iArr[0] = (int) j2;
        long j3 = ((BodyPartID.bodyIdMax & ((long) iArr[1])) - 1) + (j2 >> 32);
        iArr[1] = (int) j3;
        if ((j3 >> 32) == 0) {
            return;
        }
        h(i2, iArr, 2);
    }

    public static int x(int i2, int i3, int[] iArr, int[] iArr2) {
        long j2 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = i3 + i4;
            long j3 = ((((long) iArr2[i5]) & BodyPartID.bodyIdMax) - (BodyPartID.bodyIdMax & ((long) iArr[i4]))) + j2;
            iArr2[i5] = (int) j3;
            j2 = j3 >> 32;
        }
        return (int) j2;
    }

    public static int y(int i2, int[] iArr, int[] iArr2) {
        long j2 = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            long j3 = ((((long) iArr2[i3]) & BodyPartID.bodyIdMax) - (BodyPartID.bodyIdMax & ((long) iArr[i3]))) + j2;
            iArr2[i3] = (int) j3;
            j2 = j3 >> 32;
        }
        return (int) j2;
    }

    public static BigInteger z(int i2, int[] iArr) {
        byte[] bArr = new byte[i2 << 2];
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = iArr[i3];
            if (i4 != 0) {
                Pack.c(i4, bArr, ((i2 - 1) - i3) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }
}
