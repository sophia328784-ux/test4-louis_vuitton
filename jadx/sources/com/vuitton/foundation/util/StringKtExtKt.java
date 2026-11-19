package com.vuitton.foundation.util;

import com.sightcall.advancedannotations.domain.parser.TextParser;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.l01;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneOffset;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"util"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StringKtExtKt {
    public static final int a(String str, String str2) {
        str.getClass();
        str2.getClass();
        String strB = b(str);
        String strB2 = b(str2);
        int iV = StringsKt.v(strB, strB2, 0, false, 6);
        if (iV != -1) {
            return iV;
        }
        strB2.getClass();
        int iV2 = StringsKt.v(strB, new StringBuilder((CharSequence) strB2).reverse().toString(), 0, false, 6);
        if (iV2 != -1) {
            return iV2;
        }
        String strJ = StringsKt.J(strB2, "%", "٪");
        int iV3 = StringsKt.v(strB, strJ, 0, false, 6);
        return iV3 != -1 ? iV3 : StringsKt.v(strB, new StringBuilder((CharSequence) strJ).reverse().toString(), 0, false, 6);
    }

    public static final String b(String str) {
        return new Regex("\\s+").replace(StringsKt.a0(str).toString(), " ");
    }

    public static final Instant c(String str) {
        Object failure;
        Instant instant;
        str.getClass();
        if (StringsKt.w(str)) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            failure = Instant.parse(str);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        if (Result.a(failure) != null) {
            try {
                String strJ = StringsKt.J(new Regex("([+-]\\d{2})(\\d{2})$").replace(StringsKt.a0(str).toString(), "$1:$2"), " ", "T");
                if (!new Regex("[+-]\\d{2}:\\d{2}$|Z$").a(strJ)) {
                    strJ = strJ.concat("Z");
                }
                failure = Instant.parse(strJ);
            } catch (Throwable th2) {
                Result.Companion companion3 = Result.INSTANCE;
                failure = new Result.Failure(th2);
            }
        }
        if (Result.a(failure) != null) {
            try {
                LocalDateTime localDateTimeD = d(str);
                if (localDateTimeD == null || (instant = localDateTimeD.toInstant(ZoneOffset.UTC)) == null) {
                    throw new IllegalArgumentException("Unrecognized date format");
                }
                failure = instant;
            } catch (Throwable th3) {
                Result.Companion companion4 = Result.INSTANCE;
                failure = new Result.Failure(th3);
            }
        }
        return (Instant) (failure instanceof Result.Failure ? null : failure);
    }

    public static final LocalDateTime d(String str) {
        Object failure;
        str.getClass();
        if (StringsKt.w(str)) {
            return null;
        }
        int length = 0;
        boolean zK = StringsKt.k(str, FileUtils.HIDDEN_PREFIX, false);
        boolean z = true;
        boolean z2 = StringsKt__StringsKt.split$default(str, new String[]{":"}, false, 0, 6, null).size() == 3;
        int iU = StringsKt.u(str, TextParser.TextInstruction, 0, 6);
        String strSubstring = iU != -1 ? str.substring(iU) : str;
        if (!StringsKt.l(strSubstring, '+') && !StringsKt.l(strSubstring, '-')) {
            z = false;
        }
        boolean zL = StringsKt.l(str, Matrix.MATRIX_TYPE_ZERO);
        if (z2 && zK) {
            if (!z && !zL) {
                length = ((String) CollectionsKt.M(StringsKt__StringsKt.split$default(str, new String[]{FileUtils.HIDDEN_PREFIX}, false, 0, 6, null))).length();
            } else if (z) {
                String str2 = (String) CollectionsKt.M(StringsKt__StringsKt.split$default(str, new String[]{FileUtils.HIDDEN_PREFIX}, false, 0, 6, null));
                length = (StringsKt.l(str2, '+') ? (String) CollectionsKt.B(StringsKt__StringsKt.split$default(str2, new String[]{"+"}, false, 0, 6, null)) : (String) CollectionsKt.B(StringsKt__StringsKt.split$default(str2, new String[]{"-"}, false, 0, 6, null))).length();
            } else {
                length = ((String) CollectionsKt.B(StringsKt__StringsKt.split$default((CharSequence) CollectionsKt.M(StringsKt__StringsKt.split$default(str, new String[]{FileUtils.HIDDEN_PREFIX}, false, 0, 6, null)), new String[]{"Z"}, false, 0, 6, null))).length();
            }
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            failure = JavaLocalDateTimeExt.a(z2, str, zL, z, length);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        return (LocalDateTime) (failure instanceof Result.Failure ? null : failure);
    }

    public static final kotlinx.datetime.Instant e(String str) {
        str.getClass();
        Instant instantC = c(str);
        if (instantC != null) {
            return new kotlinx.datetime.Instant(instantC);
        }
        return null;
    }

    public static String f(String str) {
        str.getClass();
        int length = str.length();
        return "…".concat(str.substring(length - (4 > length ? length : 4)));
    }

    public static final String g(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        bytes.getClass();
        byte[] bArrDigest = messageDigest.digest(bytes);
        bArrDigest.getClass();
        return ArraysKt.G(bArrDigest, "", new l01(17), 30);
    }
}
