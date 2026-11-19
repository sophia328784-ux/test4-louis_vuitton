package com.appsflyer.internal;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Locale;
import kotlin.text.Charsets;
import kotlin.text.MatchGroup;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class AFj1kSDK {
    public static final int AFKeystoreWrapper(String str) {
        String str2;
        Integer intOrNull;
        String str3;
        Integer intOrNull2;
        String str4;
        Integer intOrNull3;
        str.getClass();
        MatchResult matchResultE = new Regex("(\\d+).(\\d+).(\\d+).*").e(str);
        if (matchResultE == null) {
            return -1;
        }
        MatchGroup matchGroupH = matchResultE.getF74548c().h(1);
        int iIntValue = 0;
        int iIntValue2 = ((matchGroupH == null || (str4 = matchGroupH.f74543a) == null || (intOrNull3 = StringsKt.toIntOrNull(str4)) == null) ? 0 : intOrNull3.intValue()) * 1000000;
        MatchGroup matchGroupH2 = matchResultE.getF74548c().h(2);
        int iIntValue3 = (((matchGroupH2 == null || (str3 = matchGroupH2.f74543a) == null || (intOrNull2 = StringsKt.toIntOrNull(str3)) == null) ? 0 : intOrNull2.intValue()) * 1000) + iIntValue2;
        MatchGroup matchGroupH3 = matchResultE.getF74548c().h(3);
        if (matchGroupH3 != null && (str2 = matchGroupH3.f74543a) != null && (intOrNull = StringsKt.toIntOrNull(str2)) != null) {
            iIntValue = intOrNull.intValue();
        }
        return iIntValue3 + iIntValue;
    }

    public static final String registerClient(String str, String str2) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str2);
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        bytes.getClass();
        byte[] bArrDigest = messageDigest.digest(bytes);
        bArrDigest.getClass();
        String strConcat = "";
        for (byte b2 : bArrDigest) {
            strConcat = strConcat.concat(String.format(Locale.US, "%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b2)}, 1)));
        }
        return strConcat;
    }
}
