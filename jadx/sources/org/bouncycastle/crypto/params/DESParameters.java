package org.bouncycastle.crypto.params;

import com.batch.android.x0.h;
import defpackage.md;

/* JADX INFO: loaded from: classes5.dex */
public class DESParameters extends KeyParameter {
    public static final int DES_KEY_LENGTH = 8;
    private static byte[] DES_weak_keys = {1, 1, 1, 1, 1, 1, 1, 1, 31, 31, 31, 31, 14, 14, 14, 14, h.a.K, h.a.K, h.a.K, h.a.K, -15, -15, -15, -15, -2, -2, -2, -2, -2, -2, -2, -2, 1, -2, 1, -2, 1, -2, 1, -2, 31, h.a.K, 31, h.a.K, 14, -15, 14, -15, 1, h.a.K, 1, h.a.K, 1, -15, 1, -15, 31, -2, 31, -2, 14, -2, 14, -2, 1, 31, 1, 31, 1, 14, 1, 14, h.a.K, -2, h.a.K, -2, -15, -2, -15, -2, -2, 1, -2, 1, -2, 1, -2, 1, h.a.K, 31, h.a.K, 31, -15, 14, -15, 14, h.a.K, 1, h.a.K, 1, -15, 1, -15, 1, -2, 31, -2, 31, -2, 14, -2, 14, 31, 1, 31, 1, 14, 1, 14, 1, -2, h.a.K, -2, h.a.K, -2, -15, -2, -15};
    private static final int N_DES_WEAK_KEYS = 16;

    public DESParameters(byte[] bArr) {
        super(bArr);
        if (isWeakKey(bArr, 0)) {
            md.n("attempt to create weak DES key");
            throw null;
        }
    }

    public static boolean isWeakKey(byte[] bArr, int i2) {
        if (bArr.length - i2 < 8) {
            md.n("key material too short.");
            return false;
        }
        for (int i3 = 0; i3 < 16; i3++) {
            for (int i4 = 0; i4 < 8; i4++) {
                if (bArr[i4 + i2] != DES_weak_keys[(i3 * 8) + i4]) {
                }
            }
            return true;
        }
        return false;
    }

    public static void setOddParity(byte[] bArr) {
        for (int i2 = 0; i2 < bArr.length; i2++) {
            byte b2 = bArr[i2];
            bArr[i2] = (byte) (((((b2 >> 7) ^ ((((((b2 >> 1) ^ (b2 >> 2)) ^ (b2 >> 3)) ^ (b2 >> 4)) ^ (b2 >> 5)) ^ (b2 >> 6))) ^ 1) & 1) | (b2 & 254));
        }
    }
}
