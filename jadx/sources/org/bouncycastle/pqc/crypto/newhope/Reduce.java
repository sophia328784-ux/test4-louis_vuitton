package org.bouncycastle.pqc.crypto.newhope;

import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: loaded from: classes5.dex */
class Reduce {
    static final int QInv = 12287;
    static final int RLog = 18;
    static final int RMask = 262143;

    public static short barrett(short s) {
        int i2 = s & HPKE.aead_EXPORT_ONLY;
        return (short) (i2 - (((i2 * 5) >>> 16) * 12289));
    }

    public static short montgomery(int i2) {
        return (short) (((((i2 * QInv) & RMask) * 12289) + i2) >>> 18);
    }
}
