package org.bouncycastle.pqc.crypto.lms;

import defpackage.r81;
import org.bouncycastle.crypto.Digest;

/* JADX INFO: loaded from: classes5.dex */
class LmsUtils {
    public static void byteArray(byte[] bArr, Digest digest) {
        digest.update(bArr, 0, bArr.length);
    }

    public static int calculateStrength(LMSParameters lMSParameters) {
        if (lMSParameters == null) {
            r81.d("lmsParameters cannot be null");
            return 0;
        }
        LMSigParameters lMSigParam = lMSParameters.getLMSigParam();
        return lMSigParam.getM() * (1 << lMSigParam.getH());
    }

    public static void u16str(short s, Digest digest) {
        digest.update((byte) (s >>> 8));
        digest.update((byte) s);
    }

    public static void u32str(int i2, Digest digest) {
        digest.update((byte) (i2 >>> 24));
        digest.update((byte) (i2 >>> 16));
        digest.update((byte) (i2 >>> 8));
        digest.update((byte) i2);
    }

    public static void byteArray(byte[] bArr, int i2, int i3, Digest digest) {
        digest.update(bArr, i2, i3);
    }
}
