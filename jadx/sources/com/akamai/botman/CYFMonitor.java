package com.akamai.botman;

/* JADX INFO: loaded from: classes.dex */
public class CYFMonitor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static char[] f22334a;

    public interface CYFSDKInitCallback {
    }

    public interface ChallengeActionCallback {
    }

    public static /* synthetic */ String a() {
        if (f22334a == null) {
            f22334a = new char[32767];
            int i2 = 3;
            for (int i3 = 0; i3 < 32767; i3++) {
                i2 = ((i2 + (i2 ^ i3)) + 37) % 63;
                f22334a[i3] = (char) i2;
            }
        }
        char[] cArr = new char[14];
        char[] charArray = "O^}xiwj0u`[{zr".toCharArray();
        for (int i4 = 0; i4 < 14; i4++) {
            cArr[i4] = (char) (cArr[i4] + ((char) (charArray[i4] ^ f22334a[i4])));
        }
        return new String(cArr);
    }
}
