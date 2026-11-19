package org.spongycastle.util;

import defpackage.md;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.PrivilegedAction;
import org.bouncycastle.asn1.BERTags;

/* JADX INFO: loaded from: classes5.dex */
public final class Strings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f78268a = 0;

    /* JADX INFO: renamed from: org.spongycastle.util.Strings$1, reason: invalid class name */
    public static class AnonymousClass1 implements PrivilegedAction<String> {
        @Override // java.security.PrivilegedAction
        public final String run() {
            return System.getProperty("line.separator");
        }
    }

    static {
        try {
            try {
            } catch (Exception unused) {
                String.format("%n", new Object[0]);
            }
        } catch (Exception unused2) {
        }
    }

    public static String a(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length];
        for (int i2 = 0; i2 != length; i2++) {
            cArr[i2] = (char) (bArr[i2] & 255);
        }
        return new String(cArr);
    }

    public static byte[] b(String str) {
        int length = str.length();
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 != length; i2++) {
            bArr[i2] = (byte) str.charAt(i2);
        }
        return bArr;
    }

    public static String c(String str) {
        char[] charArray = str.toCharArray();
        boolean z = false;
        for (int i2 = 0; i2 != charArray.length; i2++) {
            char c2 = charArray[i2];
            if ('A' <= c2 && 'Z' >= c2) {
                charArray[i2] = (char) (c2 + ' ');
                z = true;
            }
        }
        return z ? new String(charArray) : str;
    }

    public static void d(char[] cArr, ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        int i2 = 0;
        while (i2 < cArr.length) {
            char c2 = cArr[i2];
            if (c2 < 128) {
                byteArrayOutputStream.write(c2);
            } else if (c2 < 2048) {
                byteArrayOutputStream.write((c2 >> 6) | 192);
                byteArrayOutputStream.write((c2 & '?') | 128);
            } else if (c2 < 55296 || c2 > 57343) {
                byteArrayOutputStream.write((c2 >> '\f') | BERTags.FLAGS);
                byteArrayOutputStream.write(((c2 >> 6) & 63) | 128);
                byteArrayOutputStream.write((c2 & '?') | 128);
            } else {
                i2++;
                if (i2 >= cArr.length) {
                    md.k("invalid UTF-16 codepoint");
                    return;
                }
                char c3 = cArr[i2];
                if (c2 > 56319) {
                    md.k("invalid UTF-16 codepoint");
                    return;
                }
                int i3 = (((c2 & 1023) << 10) | (c3 & 1023)) + 65536;
                byteArrayOutputStream.write((i3 >> 18) | 240);
                byteArrayOutputStream.write(((i3 >> 12) & 63) | 128);
                byteArrayOutputStream.write(((i3 >> 6) & 63) | 128);
                byteArrayOutputStream.write((i3 & 63) | 128);
            }
            i2++;
        }
    }
}
