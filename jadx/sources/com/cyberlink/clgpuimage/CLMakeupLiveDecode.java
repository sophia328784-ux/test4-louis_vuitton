package com.cyberlink.clgpuimage;

/* JADX INFO: loaded from: classes2.dex */
public class CLMakeupLiveDecode {
    public static String a(char[] cArr) {
        char[] cArr2 = (char[]) cArr.clone();
        for (int i2 = 0; i2 < cArr2.length; i2++) {
            char c2 = (char) (cArr2[i2] ^ 200);
            cArr2[i2] = c2;
            if (c2 >= '!' && c2 <= '~') {
                char c3 = (char) (c2 + '/');
                cArr2[i2] = c3;
                if (c3 > '~') {
                    cArr2[i2] = (char) (c3 - '^');
                }
            }
        }
        return new String(cArr2);
    }
}
