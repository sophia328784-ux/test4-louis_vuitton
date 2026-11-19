package org.bouncycastle.pqc.crypto.bike;

import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.Xof;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
class BIKEUtils {
    public static int CHECK_BIT(byte[] bArr, int i2) {
        return (bArr[i2 / 8] >>> (i2 % 8)) & 1;
    }

    public static void SET_BIT(byte[] bArr, int i2) {
        int i3 = i2 / 8;
        bArr[i3] = (byte) (((long) bArr[i3]) | (1 << (i2 % 8)));
    }

    public static void fromBitArrayToByteArray(byte[] bArr, byte[] bArr2, int i2, int i3) {
        long j2 = i3;
        int i4 = 0;
        int i5 = 0;
        while (i4 < j2) {
            int i6 = i4 + 8;
            if (i6 >= i3) {
                int i7 = i2 + i4;
                int i8 = bArr2[i7];
                for (int i9 = (i3 - i4) - 1; i9 >= 1; i9--) {
                    i8 |= bArr2[i7 + i9] << i9;
                }
                bArr[i5] = (byte) i8;
            } else {
                int i10 = i4 + i2;
                int i11 = bArr2[i10];
                for (int i12 = 7; i12 >= 1; i12--) {
                    i11 |= bArr2[i10 + i12] << i12;
                }
                bArr[i5] = (byte) i11;
            }
            i5++;
            i4 = i6;
        }
    }

    public static void generateRandomByteArray(byte[] bArr, int i2, int i3, Xof xof) {
        byte[] bArr2 = new byte[4];
        for (int i4 = i3 - 1; i4 >= 0; i4--) {
            xof.doOutput(bArr2, 0, 4);
            int iLittleEndianToInt = ((int) (((((long) Pack.littleEndianToInt(bArr2, 0)) & BodyPartID.bodyIdMax) * ((long) (i2 - i4))) >> 32)) + i4;
            if (CHECK_BIT(bArr, iLittleEndianToInt) != 0) {
                iLittleEndianToInt = i4;
            }
            SET_BIT(bArr, iLittleEndianToInt);
        }
    }

    public static int getHammingWeight(byte[] bArr) {
        int i2 = 0;
        for (byte b2 : bArr) {
            i2 += b2;
        }
        return i2;
    }
}
