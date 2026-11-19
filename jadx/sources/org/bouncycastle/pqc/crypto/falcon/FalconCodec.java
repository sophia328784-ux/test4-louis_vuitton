package org.bouncycastle.pqc.crypto.falcon;

import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: loaded from: classes5.dex */
class FalconCodec {
    final byte[] max_fg_bits = {0, 8, 8, 8, 8, 8, 7, 7, 6, 6, 5};
    final byte[] max_FG_bits = {0, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8};
    final byte[] max_sig_bits = {0, 10, 11, 11, 12, 12, 12, 12, 12, 12, 12};

    public int comp_decode(short[] sArr, int i2, int i3, byte[] bArr, int i4, int i5) {
        int i6 = 1 << i3;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        for (int i10 = 0; i10 < i6; i10++) {
            if (i9 >= i5) {
                return 0;
            }
            i7 = (i7 << 8) | (bArr[i4 + i9] & 255);
            i9++;
            int i11 = i7 >>> i8;
            int i12 = i11 & 128;
            int i13 = i11 & CertificateBody.profileType;
            do {
                if (i8 == 0) {
                    if (i9 >= i5) {
                        return 0;
                    }
                    i7 = (i7 << 8) | (bArr[i4 + i9] & 255);
                    i9++;
                    i8 = 8;
                }
                i8--;
                if (((i7 >>> i8) & 1) == 0) {
                    i13 += 128;
                } else {
                    if (i12 != 0 && i13 == 0) {
                        return 0;
                    }
                    int i14 = i2 + i10;
                    if (i12 != 0) {
                        i13 = -i13;
                    }
                    sArr[i14] = (short) i13;
                }
            } while (i13 <= 2047);
            return 0;
        }
        if ((i7 & ((1 << i8) - 1)) != 0) {
            return 0;
        }
        return i9;
    }

    public int comp_encode(byte[] bArr, int i2, int i3, short[] sArr, int i4, int i5) {
        int i6;
        int i7 = 1 << i5;
        for (int i8 = 0; i8 < i7; i8++) {
            short s = sArr[i4 + i8];
            if (s < -2047 || s > 2047) {
                return 0;
            }
        }
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < i7; i12++) {
            int i13 = i10 << 1;
            short s2 = sArr[i4 + i12];
            if (s2 < 0) {
                i6 = s2;
                i13 |= 1;
                i6 = -s2;
            }
            i6 = s2;
            int i14 = (i13 << 7) | (i6 & CertificateBody.profileType);
            int i15 = (i6 >>> 7) + 1;
            i10 = (i14 << i15) | 1;
            i9 = i9 + 8 + i15;
            while (i9 >= 8) {
                i9 -= 8;
                if (bArr != null) {
                    if (i11 >= i3) {
                        return 0;
                    }
                    bArr[i2 + i11] = (byte) (i10 >>> i9);
                }
                i11++;
            }
        }
        if (i9 <= 0) {
            return i11;
        }
        if (bArr != null) {
            if (i11 >= i3) {
                return 0;
            }
            bArr[i2 + i11] = (byte) (i10 << (8 - i9));
        }
        return i11 + 1;
    }

    public int modq_decode(short[] sArr, int i2, int i3, byte[] bArr, int i4, int i5) {
        int i6 = 1 << i3;
        int i7 = ((i6 * 14) + 7) >> 3;
        if (i7 > i5) {
            return 0;
        }
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (i8 < i6) {
            int i11 = i4 + 1;
            i9 = (i9 << 8) | (bArr[i4] & 255);
            int i12 = i10 + 8;
            if (i12 >= 14) {
                i10 -= 6;
                int i13 = (i9 >>> i10) & 16383;
                if (i13 >= 12289) {
                    return 0;
                }
                sArr[i2 + i8] = (short) i13;
                i8++;
            } else {
                i10 = i12;
            }
            i4 = i11;
        }
        if ((i9 & ((1 << i10) - 1)) != 0) {
            return 0;
        }
        return i7;
    }

    public int modq_encode(byte[] bArr, int i2, int i3, short[] sArr, int i4, int i5) {
        int i6 = 1 << i5;
        for (int i7 = 0; i7 < i6; i7++) {
            if ((65535 & sArr[i4 + i7]) >= 12289) {
                return 0;
            }
        }
        int i8 = ((i6 * 14) + 7) >> 3;
        if (bArr != null) {
            if (i8 > i3) {
                return 0;
            }
            int i9 = 0;
            int i10 = 0;
            for (int i11 = 0; i11 < i6; i11++) {
                i10 = (i10 << 14) | (sArr[i4 + i11] & HPKE.aead_EXPORT_ONLY);
                i9 += 14;
                while (i9 >= 8) {
                    i9 -= 8;
                    bArr[i2] = (byte) (i10 >> i9);
                    i2++;
                }
            }
            if (i9 > 0) {
                bArr[i2] = (byte) (i10 << (8 - i9));
            }
        }
        return i8;
    }

    public int trim_i16_decode(short[] sArr, int i2, int i3, int i4, byte[] bArr, int i5, int i6) {
        int i7 = 1 << i3;
        int i8 = ((i7 * i4) + 7) >> 3;
        if (i8 > i6) {
            return 0;
        }
        int i9 = (1 << i4) - 1;
        int i10 = 1 << (i4 - 1);
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < i7) {
            int i14 = i5 + 1;
            i12 = (i12 << 8) | (bArr[i5] & 255);
            i13 += 8;
            while (i13 >= i4 && i11 < i7) {
                i13 -= i4;
                int i15 = (i12 >>> i13) & i9;
                int i16 = i15 | (-(i15 & i10));
                if (i16 == (-i10)) {
                    return 0;
                }
                sArr[i2 + i11] = (short) (i16 | (-(i16 & i10)));
                i11++;
            }
            i5 = i14;
        }
        if ((i12 & ((1 << i13) - 1)) != 0) {
            return 0;
        }
        return i8;
    }

    public int trim_i16_encode(byte[] bArr, int i2, int i3, short[] sArr, int i4, int i5, int i6) {
        int i7 = 1 << i5;
        int i8 = (1 << (i6 - 1)) - 1;
        int i9 = -i8;
        for (int i10 = 0; i10 < i7; i10++) {
            short s = sArr[i4 + i10];
            if (s < i9 || s > i8) {
                return 0;
            }
        }
        int i11 = ((i7 * i6) + 7) >> 3;
        if (bArr != null) {
            if (i11 > i3) {
                return 0;
            }
            int i12 = (1 << i6) - 1;
            int i13 = 0;
            int i14 = 0;
            for (int i15 = 0; i15 < i7; i15++) {
                i14 = (i14 << i6) | (sArr[i4 + i15] & 4095 & i12);
                i13 += i6;
                while (i13 >= 8) {
                    i13 -= 8;
                    bArr[i2] = (byte) (i14 >> i13);
                    i2++;
                }
            }
            if (i13 > 0) {
                bArr[i2] = (byte) (i14 << (8 - i13));
            }
        }
        return i11;
    }

    public int trim_i8_decode(byte[] bArr, int i2, int i3, int i4, byte[] bArr2, int i5, int i6) {
        int i7 = 1 << i3;
        int i8 = ((i7 * i4) + 7) >> 3;
        if (i8 > i6) {
            return 0;
        }
        int i9 = (1 << i4) - 1;
        int i10 = 1 << (i4 - 1);
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < i7) {
            int i14 = i5 + 1;
            i12 = (i12 << 8) | (bArr2[i5] & 255);
            i13 += 8;
            while (i13 >= i4 && i11 < i7) {
                i13 -= i4;
                int i15 = (i12 >>> i13) & i9;
                int i16 = i15 | (-(i15 & i10));
                if (i16 == (-i10)) {
                    return 0;
                }
                bArr[i2 + i11] = (byte) i16;
                i11++;
            }
            i5 = i14;
        }
        if ((i12 & ((1 << i13) - 1)) != 0) {
            return 0;
        }
        return i8;
    }

    public int trim_i8_encode(byte[] bArr, int i2, int i3, byte[] bArr2, int i4, int i5, int i6) {
        int i7 = 1 << i5;
        int i8 = (1 << (i6 - 1)) - 1;
        int i9 = -i8;
        for (int i10 = 0; i10 < i7; i10++) {
            int i11 = bArr2[i4 + i10];
            if (i11 < i9 || i11 > i8) {
                return 0;
            }
        }
        int i12 = ((i7 * i6) + 7) >> 3;
        if (bArr != null) {
            if (i12 > i3) {
                return 0;
            }
            int i13 = (1 << i6) - 1;
            int i14 = 0;
            int i15 = 0;
            for (int i16 = 0; i16 < i7; i16++) {
                i15 = (i15 << i6) | (bArr2[i4 + i16] & 65535 & i13);
                i14 += i6;
                while (i14 >= 8) {
                    i14 -= 8;
                    bArr[i2] = (byte) (i15 >>> i14);
                    i2++;
                }
            }
            if (i14 > 0) {
                bArr[i2] = (byte) (i15 << (8 - i14));
            }
        }
        return i12;
    }
}
