package org.bouncycastle.pqc.crypto.falcon;

import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes5.dex */
class FalconCommon {
    static final int[] l2bound = {0, 101498, 208714, 428865, 892039, 1852696, 3842630, 7959734, 16468416, 34034726, 70265242};

    public void hash_to_point_ct(SHAKE256 shake256, short[] sArr, int i2, int i3, short[] sArr2, int i4) {
        int i5;
        short s;
        char c2;
        int i6;
        char c3;
        short s2;
        short[] sArr3 = new short[63];
        int i7 = 1 << i3;
        int i8 = i7 << 1;
        short s3 = new short[]{0, 65, 67, 71, 77, 86, 100, 122, 154, 205, 287}[i3];
        int i9 = i7 + s3;
        int i10 = 0;
        for (int i11 = 0; i11 < i9; i11++) {
            byte[] bArr = new byte[2];
            shake256.inner_shake256_extract(bArr, 0, 2);
            int i12 = ((bArr[0] & 255) << 8) | (bArr[1] & 255);
            int i13 = i12 - ((((i12 - 24578) >>> 31) - 1) & 24578);
            int i14 = i13 - ((((i13 - 24578) >>> 31) - 1) & 24578);
            int i15 = (((i12 - 61445) >>> 31) - 1) | (i14 - ((((i14 - 12289) >>> 31) - 1) & 12289));
            if (i11 < i7) {
                sArr[i2 + i11] = (short) i15;
            } else if (i11 < i8) {
                sArr2[(i4 + i11) - i7] = (short) i15;
            } else {
                sArr3[i11 - i8] = (short) i15;
            }
        }
        int i16 = 1;
        while (i16 <= s3) {
            int i17 = i10;
            int i18 = i17;
            while (i17 < i9) {
                if (i17 < i7) {
                    i5 = i2 + i17;
                    s = sArr[i5];
                    c2 = 1;
                } else if (i17 < i8) {
                    i5 = (i4 + i17) - i7;
                    s = sArr2[i5];
                    c2 = 2;
                } else {
                    i5 = i17 - i8;
                    s = sArr3[i5];
                    c2 = 3;
                }
                int i19 = i17 - i18;
                int i20 = (s >>> 15) - 1;
                i18 -= i20;
                if (i17 >= i16) {
                    int i21 = i17 - i16;
                    if (i21 < i7) {
                        i6 = (i2 + i17) - i16;
                        s2 = sArr[i6];
                        c3 = 1;
                    } else if (i21 < i8) {
                        i6 = (i4 + i21) - i7;
                        s2 = sArr2[i6];
                        c3 = 2;
                    } else {
                        i6 = i21 - i8;
                        c3 = 3;
                        s2 = sArr3[i6];
                    }
                    int i22 = i20 & (-(((i19 & i16) + 511) >> 9));
                    if (c2 == 1) {
                        sArr[i5] = (short) (((s ^ s2) & i22) ^ s);
                    } else if (c2 == 2) {
                        sArr2[i5] = (short) (((s ^ s2) & i22) ^ s);
                    } else {
                        sArr3[i5] = (short) (((s ^ s2) & i22) ^ s);
                    }
                    char c4 = c3;
                    if (c4 == 1) {
                        sArr[i6] = (short) (s2 ^ ((s ^ s2) & i22));
                    } else if (c4 == 2) {
                        sArr2[i6] = (short) (s2 ^ ((s ^ s2) & i22));
                    } else {
                        sArr3[i6] = (short) (s2 ^ ((s ^ s2) & i22));
                    }
                }
                i17++;
            }
            i16 <<= 1;
            i10 = 0;
        }
    }

    public void hash_to_point_vartime(SHAKE256 shake256, short[] sArr, int i2, int i3) {
        int i4 = 1 << i3;
        while (i4 > 0) {
            byte[] bArr = new byte[2];
            shake256.inner_shake256_extract(bArr, 0, 2);
            int i5 = ((bArr[0] & 255) << 8) | (bArr[1] & 255);
            if (i5 < 61445) {
                while (i5 >= 12289) {
                    i5 -= 12289;
                }
                sArr[i2] = (short) i5;
                i4--;
                i2++;
            }
        }
    }

    public int is_short(short[] sArr, int i2, short[] sArr2, int i3, int i4) {
        int i5 = 1 << i4;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i6 < i5) {
            short s = sArr[i2 + i6];
            int i9 = (s * s) + i7;
            int i10 = i8 | i9;
            short s2 = sArr2[i3 + i6];
            int i11 = (s2 * s2) + i9;
            i6++;
            i8 = i10 | i11;
            i7 = i11;
        }
        return (((long) ((-(i8 >>> 31)) | i7)) & BodyPartID.bodyIdMax) <= ((long) l2bound[i4]) ? 1 : 0;
    }

    public int is_short_half(int i2, short[] sArr, int i3, int i4) {
        int i5 = 1 << i4;
        int i6 = -(i2 >>> 31);
        for (int i7 = 0; i7 < i5; i7++) {
            short s = sArr[i3 + i7];
            i2 += s * s;
            i6 |= i2;
        }
        return (((long) (i2 | (-(i6 >>> 31)))) & BodyPartID.bodyIdMax) <= ((long) l2bound[i4]) ? 1 : 0;
    }
}
