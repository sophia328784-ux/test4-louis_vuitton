package org.bouncycastle.util.encoders;

import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes5.dex */
public class UTF8 {
    private static final byte C_CR1 = 1;
    private static final byte C_CR2 = 2;
    private static final byte C_CR3 = 3;
    private static final byte C_ILL = 0;
    private static final byte C_L2A = 4;
    private static final byte C_L3A = 5;
    private static final byte C_L3B = 6;
    private static final byte C_L3C = 7;
    private static final byte C_L4A = 8;
    private static final byte C_L4B = 9;
    private static final byte C_L4C = 10;
    private static final byte S_CS1 = 0;
    private static final byte S_CS2 = 16;
    private static final byte S_CS3 = 32;
    private static final byte S_END = -1;
    private static final byte S_ERR = -2;
    private static final byte S_P3A = 48;
    private static final byte S_P3B = 64;
    private static final byte S_P4A = 80;
    private static final byte S_P4B = 96;
    private static final short[] firstUnitTable = new short[128];
    private static final byte[] transitionTable;

    static {
        byte[] bArr = new byte[112];
        transitionTable = bArr;
        byte[] bArr2 = new byte[128];
        fill(bArr2, 0, 15, (byte) 1);
        fill(bArr2, 16, 31, (byte) 2);
        fill(bArr2, 32, 63, (byte) 3);
        fill(bArr2, 64, 65, (byte) 0);
        fill(bArr2, 66, 95, (byte) 4);
        fill(bArr2, 96, 96, C_L3A);
        fill(bArr2, 97, 108, C_L3B);
        fill(bArr2, 109, 109, C_L3C);
        fill(bArr2, 110, 111, C_L3B);
        fill(bArr2, 112, 112, C_L4A);
        fill(bArr2, 113, 115, C_L4B);
        fill(bArr2, 116, 116, C_L4C);
        fill(bArr2, 117, CertificateBody.profileType, (byte) 0);
        fill(bArr, 0, bArr.length - 1, S_ERR);
        fill(bArr, 8, 11, S_END);
        fill(bArr, 24, 27, (byte) 0);
        fill(bArr, 40, 43, S_CS2);
        fill(bArr, 58, 59, (byte) 0);
        fill(bArr, 72, 73, (byte) 0);
        fill(bArr, 89, 91, S_CS2);
        fill(bArr, 104, 104, S_CS2);
        byte[] bArr3 = {0, 0, 0, 0, 31, 15, 15, 15, C_L3C, C_L3C, C_L3C};
        byte[] bArr4 = {S_ERR, S_ERR, S_ERR, S_ERR, 0, S_P3A, S_CS2, S_P3B, S_P4A, S_CS3, S_P4B};
        for (int i2 = 0; i2 < 128; i2++) {
            byte b2 = bArr2[i2];
            firstUnitTable[i2] = (short) (bArr4[b2] | ((bArr3[b2] & i2) << 8));
        }
    }

    private static void fill(byte[] bArr, int i2, int i3, byte b2) {
        while (i2 <= i3) {
            bArr[i2] = b2;
            i2++;
        }
    }

    public static int transcodeToUTF16(byte[] bArr, int i2, int i3, char[] cArr) {
        int i4 = i3 + i2;
        int i5 = 0;
        while (i2 < i4) {
            int i6 = i2 + 1;
            byte b2 = bArr[i2];
            if (b2 < 0) {
                short s = firstUnitTable[b2 & 127];
                int i7 = s >>> 8;
                byte b3 = (byte) s;
                while (b3 >= 0) {
                    if (i6 >= i4) {
                        return -1;
                    }
                    int i8 = i6 + 1;
                    byte b4 = bArr[i6];
                    i7 = (i7 << 6) | (b4 & 63);
                    b3 = transitionTable[b3 + ((b4 & S_END) >>> 4)];
                    i6 = i8;
                }
                if (b3 == -2) {
                    return -1;
                }
                if (i7 <= 65535) {
                    if (i5 >= cArr.length) {
                        return -1;
                    }
                    cArr[i5] = (char) i7;
                    i5++;
                } else {
                    if (i5 >= cArr.length - 1) {
                        return -1;
                    }
                    int i9 = i5 + 1;
                    cArr[i5] = (char) ((i7 >>> 10) + 55232);
                    i5 += 2;
                    cArr[i9] = (char) ((i7 & 1023) | 56320);
                }
                i2 = i6;
            } else {
                if (i5 >= cArr.length) {
                    return -1;
                }
                cArr[i5] = (char) b2;
                i2 = i6;
                i5++;
            }
        }
        return i5;
    }

    public static int transcodeToUTF16(byte[] bArr, char[] cArr) {
        return transcodeToUTF16(bArr, 0, bArr.length, cArr);
    }
}
