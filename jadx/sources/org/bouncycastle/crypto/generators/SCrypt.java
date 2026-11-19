package org.bouncycastle.crypto.generators;

import defpackage.fc;
import defpackage.md;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.engines.Salsa20Engine;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class SCrypt {
    private SCrypt() {
    }

    private static void BlockMix(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int i2) {
        System.arraycopy(iArr, iArr.length - 16, iArr2, 0, 16);
        int length = iArr.length >>> 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = i2 * 2; i5 > 0; i5--) {
            Xor(iArr2, iArr, i3, iArr3);
            Salsa20Engine.salsaCore(8, iArr3, iArr2);
            System.arraycopy(iArr2, 0, iArr4, i4, 16);
            i4 = (length + i3) - i4;
            i3 += 16;
        }
    }

    private static void Clear(byte[] bArr) {
        if (bArr != null) {
            Arrays.fill(bArr, (byte) 0);
        }
    }

    private static void ClearAll(int[][] iArr) {
        for (int[] iArr2 : iArr) {
            Clear(iArr2);
        }
    }

    private static byte[] MFcrypt(byte[] bArr, byte[] bArr2, int i2, int i3, int i4, int i5) {
        int i6 = i3 * 128;
        byte[] bArrSingleIterationPBKDF2 = SingleIterationPBKDF2(bArr, bArr2, i4 * i6);
        int[] iArr = null;
        try {
            int length = bArrSingleIterationPBKDF2.length >>> 2;
            iArr = new int[length];
            Pack.littleEndianToInt(bArrSingleIterationPBKDF2, 0, iArr);
            int i7 = 0;
            for (int i8 = i2 * i3; i2 - i7 > 2 && i8 > 1024; i8 >>>= 1) {
                i7++;
            }
            int i9 = i6 >>> 2;
            for (int i10 = 0; i10 < length; i10 += i9) {
                SMix(iArr, i10, i2, i7, i3);
            }
            Pack.intToLittleEndian(iArr, bArrSingleIterationPBKDF2, 0);
            return SingleIterationPBKDF2(bArr, bArrSingleIterationPBKDF2, i5);
        } finally {
            Clear(bArrSingleIterationPBKDF2);
            Clear(iArr);
        }
    }

    private static void SMix(int[] iArr, int i2, int i3, int i4, int i5) {
        int i6 = i3 >>> i4;
        int i7 = 1 << i4;
        int i8 = i6 - 1;
        int iNumberOfTrailingZeros = Integers.numberOfTrailingZeros(i3) - i4;
        int i9 = i5 * 32;
        int[] iArr2 = new int[16];
        int[] iArr3 = new int[16];
        int[] iArr4 = new int[i9];
        int[] iArr5 = new int[i9];
        int[][] iArr6 = new int[i7][];
        try {
            System.arraycopy(iArr, i2, iArr5, 0, i9);
            int i10 = 0;
            while (i10 < i7) {
                int[] iArr7 = new int[i6 * i9];
                iArr6[i10] = iArr7;
                int i11 = iNumberOfTrailingZeros;
                int i12 = i7;
                int i13 = 0;
                for (int i14 = 0; i14 < i6; i14 += 2) {
                    System.arraycopy(iArr5, 0, iArr7, i13, i9);
                    int i15 = i13 + i9;
                    BlockMix(iArr5, iArr2, iArr3, iArr4, i5);
                    System.arraycopy(iArr4, 0, iArr7, i15, i9);
                    i13 = i15 + i9;
                    BlockMix(iArr4, iArr2, iArr3, iArr5, i5);
                }
                i10++;
                iNumberOfTrailingZeros = i11;
                i7 = i12;
            }
            int i16 = iNumberOfTrailingZeros;
            int i17 = i3 - 1;
            for (int i18 = 0; i18 < i3; i18++) {
                int i19 = iArr5[i9 - 16] & i17;
                System.arraycopy(iArr6[i19 >>> i16], (i19 & i8) * i9, iArr4, 0, i9);
                Xor(iArr4, iArr5, 0, iArr4);
                BlockMix(iArr4, iArr2, iArr3, iArr5, i5);
            }
            System.arraycopy(iArr5, 0, iArr, i2, i9);
            ClearAll(iArr6);
            ClearAll(new int[][]{iArr5, iArr2, iArr3, iArr4});
        } catch (Throwable th) {
            ClearAll(iArr6);
            ClearAll(new int[][]{iArr5, iArr2, iArr3, iArr4});
            throw th;
        }
    }

    private static byte[] SingleIterationPBKDF2(byte[] bArr, byte[] bArr2, int i2) {
        PKCS5S2ParametersGenerator pKCS5S2ParametersGenerator = new PKCS5S2ParametersGenerator(SHA256Digest.newInstance());
        pKCS5S2ParametersGenerator.init(bArr, bArr2, 1);
        return ((KeyParameter) pKCS5S2ParametersGenerator.generateDerivedMacParameters(i2 * 8)).getKey();
    }

    private static void Xor(int[] iArr, int[] iArr2, int i2, int[] iArr3) {
        for (int length = iArr3.length - 1; length >= 0; length--) {
            iArr3[length] = iArr[length] ^ iArr2[i2 + length];
        }
    }

    public static byte[] generate(byte[] bArr, byte[] bArr2, int i2, int i3, int i4, int i5) {
        if (bArr == null) {
            md.n("Passphrase P must be provided.");
            return null;
        }
        if (bArr2 == null) {
            md.n("Salt S must be provided.");
            return null;
        }
        if (i2 <= 1 || !isPowerOf2(i2)) {
            md.n("Cost parameter N must be > 1 and a power of 2");
            return null;
        }
        if (i3 == 1 && i2 >= 65536) {
            md.n("Cost parameter N must be > 1 and < 65536.");
            return null;
        }
        if (i3 < 1) {
            md.n("Block size r must be >= 1.");
            return null;
        }
        int i6 = Integer.MAX_VALUE / (i3 * 1024);
        if (i4 < 1 || i4 > i6) {
            md.n(fc.f(i6, i3, "Parallelisation parameter p must be >= 1 and <= ", " (based on block size r of ", ")"));
            return null;
        }
        if (i5 >= 1) {
            return MFcrypt(bArr, bArr2, i2, i3, i4, i5);
        }
        md.n("Generated key length dkLen must be >= 1.");
        return null;
    }

    private static boolean isPowerOf2(int i2) {
        return (i2 & (i2 + (-1))) == 0;
    }

    private static void Clear(int[] iArr) {
        if (iArr != null) {
            Arrays.fill(iArr, 0);
        }
    }
}
