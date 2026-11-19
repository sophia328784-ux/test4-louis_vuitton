package com.sensorsdata.analytics.android.sdk.util;

import com.sensorsdata.analytics.android.sdk.SALog;
import defpackage.md;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes3.dex */
public class Base64Coder {
    public static final String CHARSET_UTF8 = "UTF-8";
    private static char[] map1 = new char[64];
    private static byte[] map2 = new byte[128];

    static {
        char c2 = 'A';
        int i2 = 0;
        while (c2 <= 'Z') {
            map1[i2] = c2;
            c2 = (char) (c2 + 1);
            i2++;
        }
        char c3 = 'a';
        while (c3 <= 'z') {
            map1[i2] = c3;
            c3 = (char) (c3 + 1);
            i2++;
        }
        char c4 = '0';
        while (c4 <= '9') {
            map1[i2] = c4;
            c4 = (char) (c4 + 1);
            i2++;
        }
        char[] cArr = map1;
        cArr[i2] = '+';
        cArr[i2 + 1] = '/';
        int i3 = 0;
        while (true) {
            byte[] bArr = map2;
            if (i3 >= bArr.length) {
                break;
            }
            bArr[i3] = -1;
            i3++;
        }
        for (int i4 = 0; i4 < 64; i4++) {
            map2[map1[i4]] = (byte) i4;
        }
    }

    public static byte[] decode(char[] cArr) {
        char c2;
        int length = cArr.length;
        if (length % 4 != 0) {
            md.n("Length of Base64 encoded input string is not a multiple of 4.");
            return null;
        }
        while (length > 0 && cArr[length - 1] == '=') {
            length--;
        }
        int i2 = (length * 3) / 4;
        byte[] bArr = new byte[i2];
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            char c3 = cArr[i3];
            int i5 = i3 + 2;
            char c4 = cArr[i3 + 1];
            char c5 = 'A';
            if (i5 < length) {
                i3 += 3;
                c2 = cArr[i5];
            } else {
                i3 = i5;
                c2 = 'A';
            }
            if (i3 < length) {
                c5 = cArr[i3];
                i3++;
            }
            if (c3 > 127 || c4 > 127 || c2 > 127 || c5 > 127) {
                md.n("Illegal character in Base64 encoded data.");
                return null;
            }
            byte[] bArr2 = map2;
            byte b2 = bArr2[c3];
            byte b3 = bArr2[c4];
            byte b4 = bArr2[c2];
            byte b5 = bArr2[c5];
            if (b2 < 0 || b3 < 0 || b4 < 0 || b5 < 0) {
                md.n("Illegal character in Base64 encoded data.");
                return null;
            }
            int i6 = (b2 << 2) | (b3 >>> 4);
            int i7 = ((b3 & 15) << 4) | (b4 >>> 2);
            int i8 = ((b4 & 3) << 6) | b5;
            int i9 = i4 + 1;
            bArr[i4] = (byte) i6;
            if (i9 < i2) {
                bArr[i9] = (byte) i7;
                i9 = i4 + 2;
            }
            if (i9 < i2) {
                i4 = i9 + 1;
                bArr[i9] = (byte) i8;
            } else {
                i4 = i9;
            }
        }
        return bArr;
    }

    public static String decodeString(String str) {
        return new String(decode(str));
    }

    public static char[] encode(byte[] bArr, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = ((i2 * 4) + 2) / 3;
        char[] cArr = new char[((i2 + 2) / 3) * 4];
        int i8 = 0;
        int i9 = 0;
        while (i8 < i2) {
            int i10 = i8 + 1;
            byte b2 = bArr[i8];
            int i11 = b2 & 255;
            if (i10 < i2) {
                i3 = i8 + 2;
                i4 = bArr[i10] & 255;
            } else {
                i3 = i10;
                i4 = 0;
            }
            if (i3 < i2) {
                i5 = i3 + 1;
                i6 = bArr[i3] & 255;
            } else {
                i5 = i3;
                i6 = 0;
            }
            int i12 = ((b2 & 3) << 4) | (i4 >>> 4);
            int i13 = ((i4 & 15) << 2) | (i6 >>> 6);
            int i14 = i6 & 63;
            char[] cArr2 = map1;
            cArr[i9] = cArr2[i11 >>> 2];
            int i15 = i9 + 2;
            cArr[i9 + 1] = cArr2[i12];
            char c2 = '=';
            cArr[i15] = i15 < i7 ? cArr2[i13] : '=';
            int i16 = i9 + 3;
            if (i16 < i7) {
                c2 = cArr2[i14];
            }
            cArr[i16] = c2;
            i9 += 4;
            i8 = i5;
        }
        return cArr;
    }

    public static String encodeString(String str) {
        try {
            return new String(encode(str.getBytes("UTF-8")));
        } catch (UnsupportedEncodingException e2) {
            SALog.printStackTrace(e2);
            return "";
        }
    }

    public static char[] encode(byte[] bArr) {
        return encode(bArr, bArr.length);
    }

    public static byte[] decode(String str) {
        return decode(str.toCharArray());
    }
}
