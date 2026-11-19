package org.teleal.common.util;

import defpackage.md;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Base64Coder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f78642a = new char[64];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f78643b;

    static {
        char c2 = 'A';
        int i2 = 0;
        while (c2 <= 'Z') {
            f78642a[i2] = c2;
            c2 = (char) (c2 + 1);
            i2++;
        }
        char c3 = 'a';
        while (c3 <= 'z') {
            f78642a[i2] = c3;
            c3 = (char) (c3 + 1);
            i2++;
        }
        char c4 = '0';
        while (c4 <= '9') {
            f78642a[i2] = c4;
            c4 = (char) (c4 + 1);
            i2++;
        }
        char[] cArr = f78642a;
        cArr[i2] = '+';
        cArr[i2 + 1] = '/';
        f78643b = new byte[128];
        int i3 = 0;
        while (true) {
            byte[] bArr = f78643b;
            if (i3 >= bArr.length) {
                break;
            }
            bArr[i3] = -1;
            i3++;
        }
        for (int i4 = 0; i4 < 64; i4++) {
            f78643b[f78642a[i4]] = (byte) i4;
        }
    }

    public static byte[] a(String str) {
        char c2;
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        if (length % 4 != 0) {
            md.n("Length of Base64 encoded input string is not a multiple of 4.");
            return null;
        }
        while (length > 0 && charArray[length - 1] == '=') {
            length--;
        }
        int i2 = (length * 3) / 4;
        byte[] bArr = new byte[i2];
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            char c3 = charArray[i3];
            int i5 = i3 + 2;
            char c4 = charArray[i3 + 1];
            char c5 = 'A';
            if (i5 < length) {
                i3 += 3;
                c2 = charArray[i5];
            } else {
                i3 = i5;
                c2 = 'A';
            }
            if (i3 < length) {
                c5 = charArray[i3];
                i3++;
            }
            if (c3 > 127 || c4 > 127 || c2 > 127 || c5 > 127) {
                md.n("Illegal character in Base64 encoded data.");
                return null;
            }
            byte[] bArr2 = f78643b;
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

    public static char[] b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        int i5;
        int length = bArr.length;
        int i6 = ((length * 4) + 2) / 3;
        char[] cArr = new char[((length + 2) / 3) * 4];
        int i7 = 0;
        int i8 = 0;
        while (i7 < length) {
            int i9 = i7 + 1;
            byte b2 = bArr[i7];
            int i10 = b2 & 255;
            if (i9 < length) {
                i2 = i7 + 2;
                i3 = bArr[i9] & 255;
            } else {
                i2 = i9;
                i3 = 0;
            }
            if (i2 < length) {
                i4 = i2 + 1;
                i5 = bArr[i2] & 255;
            } else {
                i4 = i2;
                i5 = 0;
            }
            int i11 = ((b2 & 3) << 4) | (i3 >>> 4);
            int i12 = ((i3 & 15) << 2) | (i5 >>> 6);
            int i13 = i5 & 63;
            char[] cArr2 = f78642a;
            cArr[i8] = cArr2[i10 >>> 2];
            int i14 = i8 + 2;
            cArr[i8 + 1] = cArr2[i11];
            char c2 = '=';
            cArr[i14] = i14 < i6 ? cArr2[i12] : '=';
            int i15 = i8 + 3;
            if (i15 < i6) {
                c2 = cArr2[i13];
            }
            cArr[i15] = c2;
            i8 += 4;
            i7 = i4;
        }
        return cArr;
    }
}
