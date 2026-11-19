package org.bouncycastle.pqc.crypto.crystals.kyber;

/* JADX INFO: loaded from: classes5.dex */
final class CBD {
    private static long convertByteTo24BitUnsignedInt(byte[] bArr, int i2) {
        return (((long) (bArr[i2 + 2] & 255)) << 16) | ((long) (bArr[i2] & 255)) | (((long) (bArr[i2 + 1] & 255)) << 8);
    }

    private static long convertByteTo32BitUnsignedInt(byte[] bArr, int i2) {
        return (((long) (bArr[i2 + 3] & 255)) << 24) | ((long) (bArr[i2] & 255)) | (((long) (bArr[i2 + 1] & 255)) << 8) | (((long) (bArr[i2 + 2] & 255)) << 16);
    }

    public static void kyberCBD(Poly poly, byte[] bArr, int i2) {
        if (i2 != 3) {
            for (int i3 = 0; i3 < 32; i3++) {
                long jConvertByteTo32BitUnsignedInt = convertByteTo32BitUnsignedInt(bArr, i3 * 4);
                long j2 = (jConvertByteTo32BitUnsignedInt & 1431655765) + ((jConvertByteTo32BitUnsignedInt >> 1) & 1431655765);
                for (int i4 = 0; i4 < 8; i4++) {
                    int i5 = i4 * 4;
                    poly.setCoeffIndex((i3 * 8) + i4, (short) (((short) ((j2 >> i5) & 3)) - ((short) (3 & (j2 >> (i5 + i2))))));
                }
            }
            return;
        }
        for (int i6 = 0; i6 < 64; i6++) {
            long jConvertByteTo24BitUnsignedInt = convertByteTo24BitUnsignedInt(bArr, i6 * 3);
            long j3 = (jConvertByteTo24BitUnsignedInt & 2396745) + ((jConvertByteTo24BitUnsignedInt >> 1) & 2396745) + ((jConvertByteTo24BitUnsignedInt >> 2) & 2396745);
            for (int i7 = 0; i7 < 4; i7++) {
                int i8 = i7 * 6;
                poly.setCoeffIndex((i6 * 4) + i7, (short) (((short) ((j3 >> i8) & 7)) - ((short) (7 & (j3 >> (i8 + 3))))));
            }
        }
    }
}
