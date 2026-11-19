package org.bouncycastle.pqc.crypto.rainbow;

import defpackage.cj;
import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class RainbowUtil {
    public static short[][][] cloneArray(short[][][] sArr) {
        short[][][] sArr2 = (short[][][]) Array.newInstance((Class<?>) short[].class, sArr.length, sArr[0].length);
        for (int i2 = 0; i2 < sArr.length; i2++) {
            for (int i3 = 0; i3 < sArr[0].length; i3++) {
                sArr2[i2][i3] = Arrays.clone(sArr[i2][i3]);
            }
        }
        return sArr2;
    }

    public static short[] convertArray(byte[] bArr) {
        short[] sArr = new short[bArr.length];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            sArr[i2] = (short) (bArr[i2] & 255);
        }
        return sArr;
    }

    public static boolean equals(short[] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            return false;
        }
        boolean z = true;
        for (int length = sArr.length - 1; length >= 0; length--) {
            z &= sArr[length] == sArr2[length];
        }
        return z;
    }

    public static short[][][] generate_random(SecureRandom secureRandom, int i2, int i3, int i4, boolean z) {
        byte[] bArr = new byte[z ? (((i3 + 1) * i3) / 2) * i2 : i2 * i3 * i4];
        secureRandom.nextBytes(bArr);
        short[][][] sArr = (short[][][]) Array.newInstance((Class<?>) Short.TYPE, i2, i3, i4);
        int i5 = 0;
        for (int i6 = 0; i6 < i3; i6++) {
            for (int i7 = 0; i7 < i4; i7++) {
                for (int i8 = 0; i8 < i2; i8++) {
                    if (!z || i6 <= i7) {
                        sArr[i8][i6][i7] = (short) (bArr[i5] & 255);
                        i5++;
                    }
                }
            }
        }
        return sArr;
    }

    public static short[][] generate_random_2d(SecureRandom secureRandom, int i2, int i3) {
        byte[] bArr = new byte[i2 * i3];
        secureRandom.nextBytes(bArr);
        short[][] sArr = (short[][]) Array.newInstance((Class<?>) Short.TYPE, i2, i3);
        for (int i4 = 0; i4 < i3; i4++) {
            for (int i5 = 0; i5 < i2; i5++) {
                sArr[i5][i4] = (short) (bArr[(i4 * i2) + i5] & 255);
            }
        }
        return sArr;
    }

    public static byte[] getEncoded(short[][][] sArr, boolean z) {
        int length = sArr.length;
        short[][] sArr2 = sArr[0];
        int length2 = sArr2.length;
        int length3 = sArr2[0].length;
        byte[] bArr = new byte[z ? (((length2 + 1) * length2) / 2) * length : length * length2 * length3];
        int i2 = 0;
        for (int i3 = 0; i3 < length2; i3++) {
            for (int i4 = 0; i4 < length3; i4++) {
                for (short[][] sArr3 : sArr) {
                    if (!z || i3 <= i4) {
                        bArr[i2] = (byte) sArr3[i3][i4];
                        i2++;
                    }
                }
            }
        }
        return bArr;
    }

    public static byte[] hash(Digest digest, byte[] bArr, int i2) {
        int digestSize = digest.getDigestSize();
        digest.update(bArr, 0, bArr.length);
        byte[] bArr2 = new byte[digestSize];
        digest.doFinal(bArr2, 0);
        if (i2 == digestSize) {
            return bArr2;
        }
        if (i2 < digestSize) {
            return Arrays.copyOf(bArr2, i2);
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr2, digestSize);
        while (true) {
            i2 -= digestSize;
            if (i2 < digestSize) {
                break;
            }
            digest.update(bArr2, 0, digestSize);
            bArr2 = new byte[digestSize];
            digest.doFinal(bArr2, 0);
            bArrCopyOf = Arrays.concatenate(bArrCopyOf, bArr2);
        }
        if (i2 <= 0) {
            return bArrCopyOf;
        }
        digest.update(bArr2, 0, digestSize);
        byte[] bArr3 = new byte[digestSize];
        digest.doFinal(bArr3, 0);
        int length = bArrCopyOf.length;
        byte[] bArrCopyOf2 = Arrays.copyOf(bArrCopyOf, length + i2);
        System.arraycopy(bArr3, 0, bArrCopyOf2, length, i2);
        return bArrCopyOf2;
    }

    public static int loadEncoded(short[][][] sArr, byte[] bArr, int i2, boolean z) {
        short[][] sArr2 = sArr[0];
        int length = sArr2.length;
        int length2 = sArr2[0].length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            for (int i5 = 0; i5 < length2; i5++) {
                for (short[][] sArr3 : sArr) {
                    if (!z || i4 <= i5) {
                        sArr3[i4][i5] = (short) (bArr[i3 + i2] & 255);
                        i3++;
                    }
                }
            }
        }
        return i3;
    }

    public static byte[] convertArray(short[] sArr) {
        byte[] bArr = new byte[sArr.length];
        for (int i2 = 0; i2 < sArr.length; i2++) {
            bArr[i2] = (byte) sArr[i2];
        }
        return bArr;
    }

    public static boolean equals(short[][] sArr, short[][] sArr2) {
        if (sArr.length != sArr2.length) {
            return false;
        }
        boolean zEquals = true;
        for (int length = sArr.length - 1; length >= 0; length--) {
            zEquals &= equals(sArr[length], sArr2[length]);
        }
        return zEquals;
    }

    public static boolean equals(short[][][] sArr, short[][][] sArr2) {
        if (sArr.length != sArr2.length) {
            return false;
        }
        boolean zEquals = true;
        for (int length = sArr.length - 1; length >= 0; length--) {
            zEquals &= equals(sArr[length], sArr2[length]);
        }
        return zEquals;
    }

    public static int loadEncoded(short[][] sArr, byte[] bArr, int i2) {
        int length = sArr.length;
        int length2 = sArr[0].length;
        for (int i3 = 0; i3 < length2; i3++) {
            for (int i4 = 0; i4 < length; i4++) {
                sArr[i4][i3] = (short) (bArr[cj.a(i3, length, i2, i4)] & 255);
            }
        }
        return length * length2;
    }

    public static short[][] cloneArray(short[][] sArr) {
        short[][] sArr2 = new short[sArr.length][];
        for (int i2 = 0; i2 < sArr.length; i2++) {
            sArr2[i2] = Arrays.clone(sArr[i2]);
        }
        return sArr2;
    }

    public static byte[] getEncoded(short[][] sArr) {
        int length = sArr.length;
        int length2 = sArr[0].length;
        byte[] bArr = new byte[length * length2];
        for (int i2 = 0; i2 < length2; i2++) {
            for (int i3 = 0; i3 < length; i3++) {
                bArr[(i2 * length) + i3] = (byte) sArr[i3][i2];
            }
        }
        return bArr;
    }

    public static byte[] hash(Digest digest, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int digestSize = digest.getDigestSize();
        digest.update(bArr, 0, bArr.length);
        digest.update(bArr2, 0, bArr2.length);
        if (bArr3.length == digestSize) {
            digest.doFinal(bArr3, 0);
            return bArr3;
        }
        byte[] bArr4 = new byte[digestSize];
        digest.doFinal(bArr4, 0);
        if (bArr3.length < digestSize) {
            System.arraycopy(bArr4, 0, bArr3, 0, bArr3.length);
            return bArr3;
        }
        System.arraycopy(bArr4, 0, bArr3, 0, digestSize);
        int length = bArr3.length - digestSize;
        int i2 = digestSize;
        while (length >= digestSize) {
            digest.update(bArr4, 0, digestSize);
            digest.doFinal(bArr4, 0);
            System.arraycopy(bArr4, 0, bArr3, i2, digestSize);
            length -= digestSize;
            i2 += digestSize;
        }
        if (length > 0) {
            digest.update(bArr4, 0, digestSize);
            digest.doFinal(bArr4, 0);
            System.arraycopy(bArr4, 0, bArr3, i2, length);
        }
        return bArr3;
    }
}
