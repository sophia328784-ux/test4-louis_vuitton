package com.appsflyer.internal;

/* JADX INFO: loaded from: classes.dex */
public final class AFk1oSDK {
    public int AFKeystoreWrapper;
    public int AFLogger;
    public int d;

    public static int d(int i2) {
        int[][] iArr = AFj1dSDK.d.registerClient;
        return ((iArr[0][(i2 >>> 24) & 255] + iArr[1][(i2 >>> 16) & 255]) ^ iArr[2][(i2 >>> 8) & 255]) + iArr[3][i2 & 255];
    }

    public static void unregisterClient(int[] iArr) {
        for (int i2 = 0; i2 < iArr.length / 2; i2++) {
            int i3 = iArr[i2];
            iArr[i2] = iArr[(iArr.length - i2) - 1];
            iArr[(iArr.length - i2) - 1] = i3;
        }
    }
}
