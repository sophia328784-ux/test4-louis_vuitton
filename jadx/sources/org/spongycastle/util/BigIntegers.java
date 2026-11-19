package org.spongycastle.util;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class BigIntegers {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f78264a = 0;

    static {
        BigInteger.valueOf(0L);
    }

    public static BigInteger a(byte[] bArr, int i2, int i3) {
        if (i2 != 0 || i3 != bArr.length) {
            byte[] bArr2 = new byte[i3];
            System.arraycopy(bArr, i2, bArr2, 0, i3);
            bArr = bArr2;
        }
        return new BigInteger(1, bArr);
    }
}
