package com.vuitton.foundation.model.domain.extensions;

import defpackage.d21;
import java.net.URI;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import java.util.StringJoiner;
import kotlin.Metadata;
import kotlin.text.CharsKt;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"domain"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StringKtExtKt {
    public static final String a(String str) {
        return (str == null || StringsKt.w(str) || StringsKt.x(str) == '/') ? str : d21.j(str, "/");
    }

    public static final void b(StringJoiner stringJoiner, String str) {
        str.getClass();
        if (str.length() <= 0) {
            str = null;
        }
        if (str != null) {
            stringJoiner.add(str);
        }
    }

    public static final String c(String str, Locale locale) {
        str.getClass();
        locale.getClass();
        if (str.length() <= 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        char cCharAt = str.charAt(0);
        sb.append((Object) (Character.isLowerCase(cCharAt) ? CharsKt.d(cCharAt, locale) : String.valueOf(cCharAt)));
        sb.append(str.substring(1));
        return sb.toString();
    }

    public static /* synthetic */ String d(String str) {
        Locale locale = Locale.getDefault();
        locale.getClass();
        return c(str, locale);
    }

    public static final boolean e(String str) {
        if (str != null) {
            return StringsKt.l(str, ':') || StringsKt.l(str, ';') || StringsKt.l(str, ',') || StringsKt.l(str, '/') || StringsKt.l(str, '%') || StringsKt.l(str, '`') || StringsKt.l(str, '\\') || StringsKt.l(str, '\'');
        }
        return false;
    }

    public static final String f(String str) throws NoSuchAlgorithmException {
        str.getClass();
        MessageDigest messageDigest = MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1);
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        bytes.getClass();
        byte[] bArrDigest = messageDigest.digest(bytes);
        StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
        for (byte b2 : bArrDigest) {
            sb.append("0123456789ABCDEF".charAt((b2 >> 4) & 15));
            sb.append("0123456789ABCDEF".charAt(b2 & 15));
        }
        return sb.toString();
    }

    public static final boolean g(String str) {
        return !(str == null || StringsKt.w(str));
    }

    public static final String h(String str) {
        if (str == null || StringsKt.w(str)) {
            return null;
        }
        return str;
    }

    public static final String i(String str) {
        str.getClass();
        if (StringsKt.w(str)) {
            return null;
        }
        return str;
    }

    public static final String j(String str) {
        str.getClass();
        if (str.length() > 0) {
            return str;
        }
        return null;
    }

    public static final String k(int i2, String str) {
        if (str == null || str.length() > i2) {
            return (str == null || str.length() <= i2) ? "" : StringsKt.V(i2, str);
        }
        return str;
    }

    public static final URI l(String str) {
        str.getClass();
        return new URI(new Regex("\\s").replace(str, "%20"));
    }
}
