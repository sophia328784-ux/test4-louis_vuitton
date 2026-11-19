package org.bouncycastle.pqc.crypto.cmce;

import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes5.dex */
abstract class BENES {
    private static final long[] TRANSPOSE_MASKS = {6148914691236517205L, 3689348814741910323L, 1085102592571150095L, 71777214294589695L, 281470681808895L, BodyPartID.bodyIdMax};
    protected final int GFBITS;
    protected final int SYS_N;
    protected final int SYS_T;

    public BENES(int i2, int i3, int i4) {
        this.SYS_N = i2;
        this.SYS_T = i3;
        this.GFBITS = i4;
    }

    public static void transpose_64x64(long[] jArr, long[] jArr2, int i2) {
        int i3;
        System.arraycopy(jArr2, i2, jArr, i2, 64);
        int i4 = 5;
        do {
            long j2 = TRANSPOSE_MASKS[i4];
            int i5 = 1 << i4;
            int i6 = i2;
            while (true) {
                i3 = i2 + 64;
                if (i6 >= i3) {
                    break;
                }
                for (int i7 = i6; i7 < i6 + i5; i7 += 4) {
                    long j3 = jArr[i7];
                    int i8 = i7 + 1;
                    long j4 = jArr[i8];
                    int i9 = i7 + 2;
                    long j5 = jArr[i9];
                    int i10 = i7 + 3;
                    long j6 = jArr[i10];
                    int i11 = i7 + i5;
                    long j7 = jArr[i11];
                    int i12 = i11 + 1;
                    long j8 = jArr[i12];
                    int i13 = i11 + 2;
                    long j9 = jArr[i13];
                    int i14 = i11 + 3;
                    long j10 = jArr[i14];
                    long j11 = ((j3 >>> i5) ^ j7) & j2;
                    long j12 = ((j4 >>> i5) ^ j8) & j2;
                    long j13 = ((j5 >>> i5) ^ j9) & j2;
                    long j14 = ((j6 >>> i5) ^ j10) & j2;
                    jArr[i7] = j3 ^ (j11 << i5);
                    jArr[i8] = (j12 << i5) ^ j4;
                    jArr[i9] = (j13 << i5) ^ j5;
                    jArr[i10] = j6 ^ (j14 << i5);
                    jArr[i11] = j7 ^ j11;
                    jArr[i12] = j8 ^ j12;
                    jArr[i13] = j9 ^ j13;
                    jArr[i14] = j10 ^ j14;
                }
                i6 += i5 * 2;
            }
            i4--;
        } while (i4 >= 2);
        do {
            long j15 = TRANSPOSE_MASKS[i4];
            int i15 = 1 << i4;
            for (int i16 = i2; i16 < i3; i16 += i15 * 2) {
                for (int i17 = i16; i17 < i16 + i15; i17++) {
                    long j16 = jArr[i17];
                    int i18 = i17 + i15;
                    long j17 = jArr[i18];
                    long j18 = ((j16 >>> i15) ^ j17) & j15;
                    jArr[i17] = j16 ^ (j18 << i15);
                    jArr[i18] = j17 ^ j18;
                }
            }
            i4--;
        } while (i4 >= 0);
    }

    public abstract void support_gen(short[] sArr, byte[] bArr);

    public static void transpose_64x64(long[] jArr, long[] jArr2) {
        transpose_64x64(jArr, jArr2, 0);
    }
}
