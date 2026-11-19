package com.google.android.gms.internal.gtm;

import com.linkplay.medialib.ContentTree;
import defpackage.md;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzab {
    public static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            if ((b2 & 240) == 0) {
                sb.append(ContentTree.ROOT_ID);
            }
            sb.append(Integer.toHexString(b2 & 255));
        }
        return sb.toString().toUpperCase(Locale.ENGLISH);
    }

    public static byte[] b(String str) {
        int length = str.length();
        if (length % 2 != 0) {
            md.n("purported base16 string has odd number of characters");
            return null;
        }
        byte[] bArr = new byte[length / 2];
        for (int i2 = 0; i2 < length; i2 += 2) {
            int iDigit = Character.digit(str.charAt(i2), 16);
            int iDigit2 = Character.digit(str.charAt(i2 + 1), 16);
            if (iDigit == -1 || iDigit2 == -1) {
                md.n("purported base16 string has illegal char");
                return null;
            }
            bArr[i2 / 2] = (byte) ((iDigit << 4) + iDigit2);
        }
        return bArr;
    }
}
