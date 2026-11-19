package com.google.android.gms.internal.gtm;

import com.batch.android.x0.h;
import com.google.android.gms.common.internal.Preconditions;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgo extends zzdk {
    public static String c(String str, String str2) throws UnsupportedEncodingException {
        Charset charsetForName = Charset.forName("UTF-8");
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        while (i2 < str.length()) {
            char cCharAt = str.charAt(i2);
            if (cCharAt != '%') {
                sb.append(cCharAt);
                i2++;
            } else {
                byte bD = d(i2, str);
                int i3 = i2 + 3;
                if ((bD & 128) != 0) {
                    int i4 = 0;
                    while (((bD << i4) & 128) != 0) {
                        i4++;
                    }
                    if (i4 < 2 || i4 > 4) {
                        throw new UnsupportedEncodingException();
                    }
                    byte[] bArr = new byte[i4];
                    bArr[0] = bD;
                    for (int i5 = 1; i5 < i4; i5++) {
                        byte bD2 = d(i3, str);
                        i3 += 3;
                        if ((bD2 & h.a.f24176e) != 128) {
                            throw new UnsupportedEncodingException();
                        }
                        bArr[i5] = bD2;
                    }
                    CharBuffer charBufferDecode = charsetForName.decode(ByteBuffer.wrap(bArr));
                    if (charBufferDecode.length() != 1 || str2.indexOf(charBufferDecode.charAt(0)) == -1) {
                        sb.append((CharSequence) charBufferDecode);
                    } else {
                        sb.append(str.substring(i2, i3));
                    }
                } else if (str2.indexOf(bD) == -1) {
                    sb.append((char) bD);
                } else {
                    sb.append(str.substring(i2, i3));
                }
                i2 = i3;
            }
        }
        return sb.toString();
    }

    public static byte d(int i2, String str) throws UnsupportedEncodingException {
        int i3 = i2 + 3;
        if (i3 > str.length() || str.charAt(i2) != '%') {
            throw new UnsupportedEncodingException();
        }
        String strSubstring = str.substring(i2 + 1, i3);
        if (strSubstring.charAt(0) == '+' || strSubstring.charAt(0) == '-') {
            throw new UnsupportedEncodingException();
        }
        try {
            return (byte) Integer.parseInt(strSubstring, 16);
        } catch (NumberFormatException unused) {
            throw new UnsupportedEncodingException();
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        zzkk zzkkVar;
        if (zzkkVarArr.length > 0) {
            zzkkVar = zzkkVarArr[0];
            Preconditions.h(zzkkVar);
        } else {
            zzkkVar = zzko.f30172h;
        }
        try {
            return new zzkv(c(zzdj.d(zzkkVar), "#;/?:@&=+$,"));
        } catch (UnsupportedEncodingException unused) {
            return zzko.f30172h;
        }
    }
}
