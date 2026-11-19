package org.bouncycastle.pqc.crypto.hqc;

import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
class Utils {
    public static long bitMask(long j2, long j3) {
        return (1 << ((int) (j2 % j3))) - 1;
    }

    public static void copyBytes(int[] iArr, int i2, int[] iArr2, int i3, int i4) {
        System.arraycopy(iArr, i2, iArr2, i3, i4 / 2);
    }

    public static void fromByte16ArrayToLongArray(long[] jArr, int[] iArr) {
        for (int i2 = 0; i2 != iArr.length; i2 += 4) {
            int i3 = i2 / 4;
            long j2 = ((long) iArr[i2]) & 65535;
            jArr[i3] = j2;
            long j3 = j2 | (((long) iArr[i2 + 1]) << 16);
            jArr[i3] = j3;
            long j4 = j3 | (((long) iArr[i2 + 2]) << 32);
            jArr[i3] = j4;
            jArr[i3] = j4 | (((long) iArr[i2 + 3]) << 48);
        }
    }

    public static void fromByte32ArrayToLongArray(long[] jArr, int[] iArr) {
        for (int i2 = 0; i2 != iArr.length; i2 += 2) {
            int i3 = i2 / 2;
            long j2 = ((long) iArr[i2]) & BodyPartID.bodyIdMax;
            jArr[i3] = j2;
            jArr[i3] = j2 | (((long) iArr[i2 + 1]) << 32);
        }
    }

    public static void fromByteArrayToByte16Array(int[] iArr, byte[] bArr) {
        if (bArr.length % 2 != 0) {
            byte[] bArr2 = new byte[((bArr.length + 1) / 2) * 2];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            bArr = bArr2;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            iArr[i3] = Pack.littleEndianToShort(bArr, i2) & HPKE.aead_EXPORT_ONLY;
            i2 += 2;
        }
    }

    public static void fromByteArrayToLongArray(long[] jArr, byte[] bArr) {
        if (bArr.length % 8 != 0) {
            byte[] bArr2 = new byte[((bArr.length + 7) / 8) * 8];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            bArr = bArr2;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < jArr.length; i3++) {
            jArr[i3] = Pack.littleEndianToLong(bArr, i2);
            i2 += 8;
        }
    }

    public static void fromLongArrayToByte32Array(int[] iArr, long[] jArr) {
        for (int i2 = 0; i2 != jArr.length; i2++) {
            int i3 = i2 * 2;
            long j2 = jArr[i2];
            iArr[i3] = (int) j2;
            iArr[i3 + 1] = (int) (j2 >> 32);
        }
    }

    public static void fromLongArrayToByteArray(byte[] bArr, long[] jArr) {
        int length = bArr.length / 8;
        int i2 = 0;
        for (int i3 = 0; i3 != length; i3++) {
            Pack.longToLittleEndian(jArr[i3], bArr, i3 * 8);
        }
        if (bArr.length % 8 != 0) {
            int i4 = length * 8;
            while (i4 < bArr.length) {
                bArr[i4] = (byte) (jArr[length] >>> (i2 * 8));
                i4++;
                i2++;
            }
        }
    }

    public static int getByte64SizeFromBitSize(int i2) {
        return (i2 + 63) / 64;
    }

    public static int getByteSizeFromBitSize(int i2) {
        return (i2 + 7) / 8;
    }

    public static void resizeArray(long[] jArr, int i2, long[] jArr2, int i3, int i4, int i5) {
        if (i2 >= i3) {
            System.arraycopy(jArr2, 0, jArr, 0, (i3 + 7) / 8);
            return;
        }
        int i6 = i2 % 64;
        int i7 = i6 != 0 ? 64 - i6 : 0;
        System.arraycopy(jArr2, 0, jArr, 0, i4);
        for (int i8 = 0; i8 < i7; i8++) {
            int i9 = i5 - 1;
            jArr[i9] = jArr[i9] & (9223372036854775807 >> i8);
        }
    }

    public static int toUnsigned16Bits(int i2) {
        return i2 & 65535;
    }

    public static int toUnsigned8bits(int i2) {
        return i2 & 255;
    }

    public static void xorLongToByte16Array(int[] iArr, long j2, int i2) {
        iArr[i2] = iArr[i2] ^ (((int) j2) & 65535);
        int i3 = i2 + 1;
        iArr[i3] = iArr[i3] ^ (((int) (j2 >>> 16)) & 65535);
        int i4 = i2 + 2;
        iArr[i4] = iArr[i4] ^ (((int) (j2 >>> 32)) & 65535);
        int i5 = i2 + 3;
        iArr[i5] = (((int) (j2 >>> 48)) & 65535) ^ iArr[i5];
    }
}
