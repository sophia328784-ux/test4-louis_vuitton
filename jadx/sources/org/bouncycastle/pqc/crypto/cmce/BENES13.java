package org.bouncycastle.pqc.crypto.cmce;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes5.dex */
class BENES13 extends BENES {
    public BENES13(int i2, int i3, int i4) {
        super(i2, i3, i4);
    }

    public static void layer_ex(long[] jArr, long[] jArr2, int i2) {
        int i3 = 1 << i2;
        int i4 = 0;
        for (int i5 = 0; i5 < 128; i5 += i3 * 2) {
            int i6 = i5;
            while (i6 < i5 + i3) {
                long j2 = jArr[i6];
                int i7 = i6 + i3;
                long j3 = (jArr[i7] ^ j2) & jArr2[i4];
                jArr[i6] = j2 ^ j3;
                jArr[i7] = jArr[i7] ^ j3;
                i6++;
                i4++;
            }
        }
    }

    public static void layer_in(long[] jArr, long[] jArr2, int i2) {
        int i3 = 1 << i2;
        int i4 = 0;
        for (int i5 = 0; i5 < 64; i5 += i3 * 2) {
            for (int i6 = i5; i6 < i5 + i3; i6++) {
                long j2 = jArr[i6];
                int i7 = i6 + i3;
                int i8 = i4 + 1;
                long j3 = (jArr[i7] ^ j2) & jArr2[i4];
                jArr[i6] = j2 ^ j3;
                jArr[i7] = jArr[i7] ^ j3;
                int i9 = i6 + 64;
                long j4 = jArr[i9];
                int i10 = i9 + i3;
                i4 += 2;
                long j5 = jArr2[i8] & (jArr[i10] ^ j4);
                jArr[i9] = j4 ^ j5;
                jArr[i10] = jArr[i10] ^ j5;
            }
        }
    }

    public void apply_benes(byte[] bArr, byte[] bArr2, int i2) {
        int i3;
        int i4;
        int i5;
        long[] jArr = new long[128];
        long[] jArr2 = new long[128];
        long[] jArr3 = new long[64];
        long[] jArr4 = new long[64];
        int i6 = this.SYS_T * 2;
        if (i2 == 0) {
            i3 = i6 + 40;
            i4 = 0;
        } else {
            i3 = i6 + 12328;
            i4 = -1024;
        }
        for (int i7 = 0; i7 < 64; i7++) {
            int i8 = i7 * 16;
            jArr[i7] = Utils.load8(bArr, i8);
            jArr[i7 + 64] = Utils.load8(bArr, i8 + 8);
        }
        BENES.transpose_64x64(jArr2, jArr, 0);
        BENES.transpose_64x64(jArr2, jArr, 64);
        int i9 = 0;
        while (true) {
            if (i9 > 6) {
                break;
            }
            for (int i10 = 0; i10 < 64; i10++) {
                jArr3[i10] = Utils.load8(bArr2, i3);
                i3 += 8;
            }
            i3 += i4;
            BENES.transpose_64x64(jArr4, jArr3);
            layer_ex(jArr2, jArr4, i9);
            i9++;
        }
        BENES.transpose_64x64(jArr, jArr2, 0);
        BENES.transpose_64x64(jArr, jArr2, 64);
        for (int i11 = 0; i11 <= 5; i11++) {
            for (int i12 = 0; i12 < 64; i12++) {
                jArr3[i12] = Utils.load8(bArr2, i3);
                i3 += 8;
            }
            i3 += i4;
            layer_in(jArr, jArr3, i11);
        }
        for (int i13 = 4; i13 >= 0; i13--) {
            for (int i14 = 0; i14 < 64; i14++) {
                jArr3[i14] = Utils.load8(bArr2, i3);
                i3 += 8;
            }
            i3 += i4;
            layer_in(jArr, jArr3, i13);
        }
        BENES.transpose_64x64(jArr2, jArr, 0);
        BENES.transpose_64x64(jArr2, jArr, 64);
        for (i5 = 6; i5 >= 0; i5--) {
            for (int i15 = 0; i15 < 64; i15++) {
                jArr3[i15] = Utils.load8(bArr2, i3);
                i3 += 8;
            }
            i3 += i4;
            BENES.transpose_64x64(jArr4, jArr3);
            layer_ex(jArr2, jArr4, i5);
        }
        BENES.transpose_64x64(jArr, jArr2, 0);
        BENES.transpose_64x64(jArr, jArr2, 64);
        for (int i16 = 0; i16 < 64; i16++) {
            int i17 = i16 * 16;
            Utils.store8(bArr, i17, jArr[i16]);
            Utils.store8(bArr, i17 + 8, jArr[i16 + 64]);
        }
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.BENES
    public void support_gen(short[] sArr, byte[] bArr) {
        int i2 = this.GFBITS;
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i2, (1 << i2) / 8);
        for (int i3 = 0; i3 < this.GFBITS; i3++) {
            for (int i4 = 0; i4 < (1 << this.GFBITS) / 8; i4++) {
                bArr2[i3][i4] = 0;
            }
        }
        int i5 = 0;
        while (true) {
            int i6 = this.GFBITS;
            if (i5 >= (1 << i6)) {
                break;
            }
            short sBitrev = Utils.bitrev((short) i5, i6);
            for (int i7 = 0; i7 < this.GFBITS; i7++) {
                byte[] bArr3 = bArr2[i7];
                int i8 = i5 / 8;
                bArr3[i8] = (byte) (bArr3[i8] | (((sBitrev >> i7) & 1) << (i5 % 8)));
            }
            i5++;
        }
        for (int i9 = 0; i9 < this.GFBITS; i9++) {
            apply_benes(bArr2[i9], bArr, 0);
        }
        for (int i10 = 0; i10 < this.SYS_N; i10++) {
            sArr[i10] = 0;
            for (int i11 = this.GFBITS - 1; i11 >= 0; i11--) {
                short s = (short) (sArr[i10] << 1);
                sArr[i10] = s;
                sArr[i10] = (short) (s | ((bArr2[i11][i10 / 8] >> (i10 % 8)) & 1));
            }
        }
    }
}
