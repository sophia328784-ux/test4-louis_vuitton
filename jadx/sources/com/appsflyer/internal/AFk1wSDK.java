package com.appsflyer.internal;

import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final class AFk1wSDK {
    public static long[] AFKeystoreWrapper(int i2, int i3) {
        long[] jArr = new long[4];
        jArr[0] = (((long) i3) & BodyPartID.bodyIdMax) | ((((long) i2) & BodyPartID.bodyIdMax) << 32);
        for (int i4 = 1; i4 < 4; i4++) {
            long j2 = jArr[i4 - 1];
            jArr[i4] = ((j2 ^ (j2 >> 30)) * 1812433253) + ((long) i4);
        }
        return jArr;
    }
}
