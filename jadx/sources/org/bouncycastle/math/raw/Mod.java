package org.bouncycastle.math.raw;

import defpackage.lc0;
import defpackage.z81;
import java.util.Random;
import org.bouncycastle.util.Integers;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Mod {
    private static final int M30 = 1073741823;
    private static final long M32L = 4294967295L;

    private static int add30(int i2, int[] iArr, int[] iArr2) {
        int i3 = i2 - 1;
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = iArr[i5] + iArr2[i5] + i4;
            iArr[i5] = M30 & i6;
            i4 = i6 >> 30;
        }
        int i7 = iArr[i3] + iArr2[i3] + i4;
        iArr[i3] = i7;
        return i7 >> 30;
    }

    public static void checkedModOddInverse(int[] iArr, int[] iArr2, int[] iArr3) {
        if (modOddInverse(iArr, iArr2, iArr3) != 0) {
            return;
        }
        lc0.l("Inverse does not exist.");
    }

    public static void checkedModOddInverseVar(int[] iArr, int[] iArr2, int[] iArr3) {
        if (modOddInverseVar(iArr, iArr2, iArr3)) {
            return;
        }
        lc0.l("Inverse does not exist.");
    }

    private static void cnegate30(int i2, int i3, int[] iArr) {
        int i4 = i2 - 1;
        int i5 = 0;
        for (int i6 = 0; i6 < i4; i6++) {
            int i7 = ((iArr[i6] ^ i3) - i3) + i5;
            iArr[i6] = M30 & i7;
            i5 = i7 >> 30;
        }
        iArr[i4] = ((iArr[i4] ^ i3) - i3) + i5;
    }

    private static void cnormalize30(int i2, int i3, int[] iArr, int[] iArr2) {
        int i4 = i2 - 1;
        int i5 = iArr[i4] >> 31;
        int i6 = 0;
        for (int i7 = 0; i7 < i4; i7++) {
            int i8 = (((iArr[i7] + (iArr2[i7] & i5)) ^ i3) - i3) + i6;
            iArr[i7] = i8 & M30;
            i6 = i8 >> 30;
        }
        int i9 = (((iArr[i4] + (i5 & iArr2[i4])) ^ i3) - i3) + i6;
        iArr[i4] = i9;
        int i10 = i9 >> 31;
        int i11 = 0;
        for (int i12 = 0; i12 < i4; i12++) {
            int i13 = iArr[i12] + (iArr2[i12] & i10) + i11;
            iArr[i12] = i13 & M30;
            i11 = i13 >> 30;
        }
        iArr[i4] = iArr[i4] + (i10 & iArr2[i4]) + i11;
    }

    private static void decode30(int i2, int[] iArr, int[] iArr2) {
        int i3 = 0;
        long j2 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i2 > 0) {
            while (i3 < Math.min(32, i2)) {
                j2 |= ((long) iArr[i4]) << i3;
                i3 += 30;
                i4++;
            }
            iArr2[i5] = (int) j2;
            j2 >>>= 32;
            i3 -= 32;
            i2 -= 32;
            i5++;
        }
    }

    private static int divsteps30Var(int i2, int i3, int i4, int[] iArr) {
        int i5;
        int i6 = 30;
        int i7 = 1;
        int i8 = 1;
        int i9 = 0;
        int i10 = 0;
        while (true) {
            int iNumberOfTrailingZeros = Integers.numberOfTrailingZeros(((-1) << i6) | i4);
            int i11 = i4 >> iNumberOfTrailingZeros;
            i7 <<= iNumberOfTrailingZeros;
            i9 <<= iNumberOfTrailingZeros;
            i2 -= iNumberOfTrailingZeros;
            i6 -= iNumberOfTrailingZeros;
            if (i6 <= 0) {
                iArr[0] = i7;
                iArr[1] = i9;
                iArr[2] = i10;
                iArr[3] = i8;
                return i2;
            }
            if (i2 <= 0) {
                i2 = 2 - i2;
                int i12 = -i3;
                int i13 = -i7;
                int i14 = -i9;
                i5 = ((-1) >>> (32 - (i2 > i6 ? i6 : i2))) & 63 & (((i11 * i11) - 2) * i11 * i12);
                i11 = i12;
                i3 = i11;
                int i15 = i10;
                i10 = i13;
                i7 = i15;
                int i16 = i8;
                i8 = i14;
                i9 = i16;
            } else {
                i5 = ((-1) >>> (32 - (i2 > i6 ? i6 : i2))) & 15 & (((((i3 + 1) & 4) << 1) + i3) * (-i11));
            }
            i4 = i11 + (i3 * i5);
            i10 += i7 * i5;
            i8 += i5 * i9;
        }
    }

    private static void encode30(int i2, int[] iArr, int[] iArr2) {
        int i3 = 0;
        long j2 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i2 > 0) {
            if (i3 < Math.min(30, i2)) {
                j2 |= (((long) iArr[i4]) & 4294967295L) << i3;
                i3 += 32;
                i4++;
            }
            iArr2[i5] = ((int) j2) & M30;
            j2 >>>= 30;
            i3 -= 30;
            i2 -= 30;
            i5++;
        }
    }

    private static int equalTo(int i2, int[] iArr, int i3) {
        int i4 = i3 ^ iArr[0];
        for (int i5 = 1; i5 < i2; i5++) {
            i4 |= iArr[i5];
        }
        return (((i4 >>> 1) | (i4 & 1)) - 1) >> 31;
    }

    private static boolean equalToVar(int i2, int[] iArr, int i3) {
        int i4 = i3 ^ iArr[0];
        if (i4 != 0) {
            return false;
        }
        for (int i5 = 1; i5 < i2; i5++) {
            i4 |= iArr[i5];
        }
        return i4 == 0;
    }

    private static int getMaximumDivsteps(int i2) {
        return (int) (((((long) i2) * 188898) + ((long) (i2 < 46 ? 308405 : 181188))) >>> 16);
    }

    private static int getMaximumHDDivsteps(int i2) {
        return (int) (((((long) i2) * 150964) + 99243) >>> 16);
    }

    private static int hddivsteps30(int i2, int i3, int i4, int[] iArr) {
        int i5 = 1073741824;
        int i6 = 1073741824;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < 30; i9++) {
            int i10 = i2 >> 31;
            int i11 = -(i4 & 1);
            int i12 = i4 - ((i3 ^ i10) & i11);
            int i13 = i8 - ((i5 ^ i10) & i11);
            int i14 = i6 - ((i7 ^ i10) & i11);
            int i15 = (~i10) & i11;
            i2 = (i2 ^ i15) + 1;
            i3 += i12 & i15;
            i5 += i13 & i15;
            i7 += i15 & i14;
            i4 = i12 >> 1;
            i8 = i13 >> 1;
            i6 = i14 >> 1;
        }
        iArr[0] = i5;
        iArr[1] = i7;
        iArr[2] = i8;
        iArr[3] = i6;
        return i2;
    }

    public static int inverse32(int i2) {
        int i3 = (2 - (i2 * i2)) * i2;
        int i4 = (2 - (i2 * i3)) * i3;
        int i5 = (2 - (i2 * i4)) * i4;
        return (2 - (i2 * i5)) * i5;
    }

    public static int modOddInverse(int[] iArr, int[] iArr2, int[] iArr3) {
        int length = iArr.length;
        int iNumberOfLeadingZeros = (length << 5) - Integers.numberOfLeadingZeros(iArr[length - 1]);
        int i2 = (iNumberOfLeadingZeros + 29) / 30;
        int[] iArr4 = new int[4];
        int[] iArr5 = new int[i2];
        int[] iArr6 = new int[i2];
        int[] iArr7 = new int[i2];
        int[] iArr8 = new int[i2];
        int[] iArr9 = new int[i2];
        iArr6[0] = 1;
        encode30(iNumberOfLeadingZeros, iArr2, iArr8);
        encode30(iNumberOfLeadingZeros, iArr, iArr9);
        System.arraycopy(iArr9, 0, iArr7, 0, i2);
        int iInverse32 = inverse32(iArr9[0]);
        int maximumHDDivsteps = getMaximumHDDivsteps(iNumberOfLeadingZeros);
        int iHddivsteps30 = 0;
        for (int i3 = 0; i3 < maximumHDDivsteps; i3 += 30) {
            iHddivsteps30 = hddivsteps30(iHddivsteps30, iArr7[0], iArr8[0], iArr4);
            updateDE30(i2, iArr5, iArr6, iArr4, iInverse32, iArr9);
            updateFG30(i2, iArr7, iArr8, iArr4);
        }
        int i4 = iArr7[i2 - 1] >> 31;
        cnegate30(i2, i4, iArr7);
        cnormalize30(i2, i4, iArr5, iArr9);
        decode30(iNumberOfLeadingZeros, iArr5, iArr3);
        return equalTo(i2, iArr7, 1) & equalTo(i2, iArr8, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r16v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    public static boolean modOddInverseVar(int[] iArr, int[] iArr2, int[] iArr3) {
        int length = iArr.length;
        int iNumberOfLeadingZeros = (length << 5) - Integers.numberOfLeadingZeros(iArr[length - 1]);
        int i2 = (iNumberOfLeadingZeros + 29) / 30;
        int bitLength = iNumberOfLeadingZeros - Nat.getBitLength(length, iArr2);
        int[] iArr4 = new int[4];
        int[] iArr5 = new int[i2];
        int[] iArr6 = new int[i2];
        int[] iArr7 = new int[i2];
        int[] iArr8 = new int[i2];
        int[] iArr9 = new int[i2];
        ?? r12 = 0;
        iArr6[0] = 1;
        encode30(iNumberOfLeadingZeros, iArr2, iArr8);
        encode30(iNumberOfLeadingZeros, iArr, iArr9);
        System.arraycopy(iArr9, 0, iArr7, 0, i2);
        int iDivsteps30Var = -bitLength;
        int iInverse32 = inverse32(iArr9[0]);
        int maximumDivsteps = getMaximumDivsteps(iNumberOfLeadingZeros);
        int iTrimFG30 = i2;
        while (!equalToVar(iTrimFG30, iArr8, r12)) {
            if (bitLength >= maximumDivsteps) {
                return r12;
            }
            bitLength += 30;
            ?? r16 = r12;
            iDivsteps30Var = divsteps30Var(iDivsteps30Var, iArr7[r12], iArr8[r16 == true ? 1 : 0], iArr4);
            updateDE30(i2, iArr5, iArr6, iArr4, iInverse32, iArr9);
            updateFG30(iTrimFG30, iArr7, iArr8, iArr4);
            iTrimFG30 = trimFG30(iTrimFG30, iArr7, iArr8);
            r12 = r16 == true ? 1 : 0;
        }
        ?? r17 = r12;
        int i3 = iArr7[iTrimFG30 - 1] >> 31;
        int iNegate30 = iArr5[i2 - 1] >> 31;
        if (iNegate30 < 0) {
            iNegate30 = add30(i2, iArr5, iArr9);
        }
        if (i3 < 0) {
            iNegate30 = negate30(i2, iArr5);
            negate30(iTrimFG30, iArr7);
        }
        if (!equalToVar(iTrimFG30, iArr7, 1)) {
            return r17;
        }
        if (iNegate30 < 0) {
            add30(i2, iArr5, iArr9);
        }
        decode30(iNumberOfLeadingZeros, iArr5, iArr3);
        return true;
    }

    public static int modOddIsCoprime(int[] iArr, int[] iArr2) {
        int length = iArr.length;
        int iNumberOfLeadingZeros = (length << 5) - Integers.numberOfLeadingZeros(iArr[length - 1]);
        int i2 = (iNumberOfLeadingZeros + 29) / 30;
        int[] iArr3 = new int[4];
        int[] iArr4 = new int[i2];
        int[] iArr5 = new int[i2];
        int[] iArr6 = new int[i2];
        encode30(iNumberOfLeadingZeros, iArr2, iArr5);
        encode30(iNumberOfLeadingZeros, iArr, iArr6);
        System.arraycopy(iArr6, 0, iArr4, 0, i2);
        int maximumHDDivsteps = getMaximumHDDivsteps(iNumberOfLeadingZeros);
        int iHddivsteps30 = 0;
        for (int i3 = 0; i3 < maximumHDDivsteps; i3 += 30) {
            iHddivsteps30 = hddivsteps30(iHddivsteps30, iArr4[0], iArr5[0], iArr3);
            updateFG30(i2, iArr4, iArr5, iArr3);
        }
        cnegate30(i2, iArr4[i2 - 1] >> 31, iArr4);
        return equalTo(i2, iArr5, 0) & equalTo(i2, iArr4, 1);
    }

    public static boolean modOddIsCoprimeVar(int[] iArr, int[] iArr2) {
        int length = iArr.length;
        int iNumberOfLeadingZeros = (length << 5) - Integers.numberOfLeadingZeros(iArr[length - 1]);
        int iTrimFG30 = (iNumberOfLeadingZeros + 29) / 30;
        int bitLength = iNumberOfLeadingZeros - Nat.getBitLength(length, iArr2);
        int[] iArr3 = new int[4];
        int[] iArr4 = new int[iTrimFG30];
        int[] iArr5 = new int[iTrimFG30];
        int[] iArr6 = new int[iTrimFG30];
        encode30(iNumberOfLeadingZeros, iArr2, iArr5);
        encode30(iNumberOfLeadingZeros, iArr, iArr6);
        System.arraycopy(iArr6, 0, iArr4, 0, iTrimFG30);
        int iDivsteps30Var = -bitLength;
        int maximumDivsteps = getMaximumDivsteps(iNumberOfLeadingZeros);
        while (!equalToVar(iTrimFG30, iArr5, 0)) {
            if (bitLength >= maximumDivsteps) {
                return false;
            }
            bitLength += 30;
            iDivsteps30Var = divsteps30Var(iDivsteps30Var, iArr4[0], iArr5[0], iArr3);
            updateFG30(iTrimFG30, iArr4, iArr5, iArr3);
            iTrimFG30 = trimFG30(iTrimFG30, iArr4, iArr5);
        }
        if ((iArr4[iTrimFG30 - 1] >> 31) < 0) {
            negate30(iTrimFG30, iArr4);
        }
        return equalToVar(iTrimFG30, iArr4, 1);
    }

    private static int negate30(int i2, int[] iArr) {
        int i3 = i2 - 1;
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = i4 - iArr[i5];
            iArr[i5] = M30 & i6;
            i4 = i6 >> 30;
        }
        int i7 = i4 - iArr[i3];
        iArr[i3] = i7;
        return i7 >> 30;
    }

    public static int[] random(int[] iArr) {
        int length = iArr.length;
        Random random = new Random();
        int[] iArrCreate = Nat.create(length);
        int i2 = length - 1;
        int i3 = iArr[i2];
        int i4 = i3 | (i3 >>> 1);
        int i5 = i4 | (i4 >>> 2);
        int i6 = i5 | (i5 >>> 4);
        int i7 = i6 | (i6 >>> 8);
        int i8 = i7 | (i7 >>> 16);
        do {
            for (int i9 = 0; i9 != length; i9++) {
                iArrCreate[i9] = random.nextInt();
            }
            iArrCreate[i2] = iArrCreate[i2] & i8;
        } while (Nat.gte(length, iArrCreate, iArr));
        return iArrCreate;
    }

    private static int trimFG30(int i2, int[] iArr, int[] iArr2) {
        int i3 = i2 - 1;
        int i4 = iArr[i3];
        int i5 = iArr2[i3];
        int i6 = i2 - 2;
        if (((i6 >> 31) | ((i4 >> 31) ^ i4) | ((i5 >> 31) ^ i5)) != 0) {
            return i2;
        }
        iArr[i6] = (i4 << 30) | iArr[i6];
        iArr2[i6] = iArr2[i6] | (i5 << 30);
        return i2 - 1;
    }

    private static void updateDE30(int i2, int[] iArr, int[] iArr2, int[] iArr3, int i3, int[] iArr4) {
        int i4 = i2;
        int i5 = iArr3[0];
        int i6 = iArr3[1];
        int i7 = iArr3[2];
        int i8 = iArr3[3];
        int i9 = i4 - 1;
        int i10 = iArr[i9] >> 31;
        int i11 = iArr2[i9] >> 31;
        int i12 = (i5 & i10) + (i6 & i11);
        int i13 = (i10 & i7) + (i11 & i8);
        int i14 = iArr4[0];
        long j2 = i5;
        long j3 = iArr[0];
        long j4 = i6;
        long j5 = iArr2[0];
        long j6 = (j4 * j5) + (j2 * j3);
        long j7 = i7;
        long j8 = i8;
        long j9 = (j8 * j5) + (j3 * j7);
        int i15 = i12 - (((((int) j6) * i3) + i12) & M30);
        long j10 = i14;
        long j11 = i15;
        long j12 = (j10 * j11) + j6;
        long j13 = i13 - (((((int) j9) * i3) + i13) & M30);
        char c2 = 30;
        long j14 = j12 >> 30;
        long j15 = ((j10 * j13) + j9) >> 30;
        int i16 = 1;
        while (i16 < i4) {
            int i17 = iArr4[i16];
            char c3 = c2;
            long j16 = j13;
            long j17 = iArr[i16];
            long j18 = j2 * j17;
            long j19 = iArr2[i16];
            long j20 = i17;
            long j21 = j11;
            long jC = z81.c(j20, j21, (j4 * j19) + j18, j14);
            long jC2 = z81.c(j20, j16, (j19 * j8) + (j7 * j17), j15);
            int i18 = i16 - 1;
            iArr[i18] = ((int) jC) & M30;
            j14 = jC >> c3;
            iArr2[i18] = ((int) jC2) & M30;
            j15 = jC2 >> c3;
            i16++;
            i4 = i2;
            c2 = c3;
            j11 = j21;
            j13 = j16;
        }
        iArr[i9] = (int) j14;
        iArr2[i9] = (int) j15;
    }

    private static void updateFG30(int i2, int[] iArr, int[] iArr2, int[] iArr3) {
        int i3 = iArr3[0];
        int i4 = 1;
        int i5 = iArr3[1];
        int i6 = iArr3[2];
        int i7 = iArr3[3];
        long j2 = i3;
        long j3 = iArr[0];
        long j4 = i5;
        long j5 = iArr2[0];
        long j6 = (j4 * j5) + (j2 * j3);
        long j7 = i6;
        long j8 = i7;
        long j9 = ((j5 * j8) + (j3 * j7)) >> 30;
        int i8 = 1;
        long j10 = j6 >> 30;
        while (i8 < i2) {
            long j11 = iArr[i8];
            int i9 = i4;
            long j12 = j7;
            long j13 = iArr2[i8];
            long jC = z81.c(j4, j13, j2 * j11, j10);
            long j14 = j8;
            long jC2 = z81.c(j14, j13, j12 * j11, j9);
            int i10 = i8 - 1;
            iArr[i10] = ((int) jC) & M30;
            j10 = jC >> 30;
            iArr2[i10] = ((int) jC2) & M30;
            j9 = jC2 >> 30;
            i8++;
            i4 = i9;
            j8 = j14;
            j7 = j12;
        }
        int i11 = i2 - i4;
        iArr[i11] = (int) j10;
        iArr2[i11] = (int) j9;
    }
}
