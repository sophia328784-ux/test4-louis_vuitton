package com.networkbench.agent.impl.util.a;

import java.util.Arrays;
import org.bouncycastle.crypto.digests.SM3Digest;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.params.KeyParameter;

/* JADX INFO: loaded from: classes5.dex */
public class g extends b {
    public static byte[] a(byte[] bArr) {
        SM3Digest sM3Digest = new SM3Digest();
        sM3Digest.update(bArr, 0, bArr.length);
        byte[] bArr2 = new byte[sM3Digest.getDigestSize()];
        sM3Digest.doFinal(bArr2, 0);
        return bArr2;
    }

    public static byte[] b(byte[] bArr, byte[] bArr2) {
        KeyParameter keyParameter = new KeyParameter(bArr);
        HMac hMac = new HMac(new SM3Digest());
        hMac.init(keyParameter);
        hMac.update(bArr2, 0, bArr2.length);
        byte[] bArr3 = new byte[hMac.getMacSize()];
        hMac.doFinal(bArr3, 0);
        return bArr3;
    }

    public static boolean a(byte[] bArr, byte[] bArr2) {
        return Arrays.equals(a(bArr), bArr2);
    }
}
