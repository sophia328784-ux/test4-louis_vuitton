package com.appsflyer.internal;

import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.text.MatchGroup;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class AFd1ySDK {
    /* JADX WARN: Code duplicated, block: B:43:0x00f0  */
    public static boolean registerClient(String str, String str2) {
        Pair pair;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        str.getClass();
        str2.getClass();
        int iAFKeystoreWrapper = AFj1kSDK.AFKeystoreWrapper(str);
        int iAFKeystoreWrapper2 = AFj1kSDK.AFKeystoreWrapper(str2);
        MatchResult matchResultE = new Regex("(\\d+).(\\d+).(\\d+)-(\\d+).(\\d+).(\\d+)").e(str2);
        Pair pair2 = null;
        if (matchResultE == null) {
            pair = null;
        } else {
            MatchGroup matchGroupH = matchResultE.getF74548c().h(1);
            Integer intOrNull = (matchGroupH == null || (str11 = matchGroupH.f74543a) == null) ? null : StringsKt.toIntOrNull(str11);
            MatchGroup matchGroupH2 = matchResultE.getF74548c().h(2);
            Integer intOrNull2 = (matchGroupH2 == null || (str10 = matchGroupH2.f74543a) == null) ? null : StringsKt.toIntOrNull(str10);
            MatchGroup matchGroupH3 = matchResultE.getF74548c().h(3);
            Integer intOrNull3 = (matchGroupH3 == null || (str9 = matchGroupH3.f74543a) == null) ? null : StringsKt.toIntOrNull(str9);
            MatchGroup matchGroupH4 = matchResultE.getF74548c().h(4);
            Integer intOrNull4 = (matchGroupH4 == null || (str8 = matchGroupH4.f74543a) == null) ? null : StringsKt.toIntOrNull(str8);
            MatchGroup matchGroupH5 = matchResultE.getF74548c().h(5);
            Integer intOrNull5 = (matchGroupH5 == null || (str7 = matchGroupH5.f74543a) == null) ? null : StringsKt.toIntOrNull(str7);
            MatchGroup matchGroupH6 = matchResultE.getF74548c().h(6);
            Integer intOrNull6 = (matchGroupH6 == null || (str6 = matchGroupH6.f74543a) == null) ? null : StringsKt.toIntOrNull(str6);
            Integer num = intOrNull6;
            if (ArraysKt.f(null, new Object[]{intOrNull, intOrNull2, intOrNull3, intOrNull4, intOrNull5, intOrNull6})) {
                pair = null;
            } else {
                intOrNull.getClass();
                int iIntValue = intOrNull.intValue() * 1000000;
                intOrNull2.getClass();
                int iIntValue2 = (intOrNull2.intValue() * 1000) + iIntValue;
                intOrNull3.getClass();
                Integer numValueOf = Integer.valueOf(intOrNull3.intValue() + iIntValue2);
                intOrNull4.getClass();
                int iIntValue3 = intOrNull4.intValue() * 1000000;
                intOrNull5.getClass();
                int iIntValue4 = (intOrNull5.intValue() * 1000) + iIntValue3;
                num.getClass();
                pair = new Pair(numValueOf, Integer.valueOf(num.intValue() + iIntValue4));
            }
        }
        MatchResult matchResultE2 = new Regex("^(\\d+).(\\+)$|^(\\d+).(\\d+).(\\+)$").e(str2);
        if (matchResultE2 != null) {
            MatchGroup matchGroupH7 = matchResultE2.getF74548c().h(1);
            Integer intOrNull7 = (matchGroupH7 == null || (str5 = matchGroupH7.f74543a) == null) ? null : StringsKt.toIntOrNull(str5);
            MatchGroup matchGroupH8 = matchResultE2.getF74548c().h(3);
            Integer intOrNull8 = (matchGroupH8 == null || (str4 = matchGroupH8.f74543a) == null) ? null : StringsKt.toIntOrNull(str4);
            MatchGroup matchGroupH9 = matchResultE2.getF74548c().h(4);
            Integer intOrNull9 = (matchGroupH9 == null || (str3 = matchGroupH9.f74543a) == null) ? null : StringsKt.toIntOrNull(str3);
            if (intOrNull7 != null) {
                pair2 = new Pair(Integer.valueOf(intOrNull7.intValue() * 1000000), Integer.valueOf(((intOrNull7.intValue() + 1) * 1000000) - 1));
            } else if (intOrNull8 != null && intOrNull9 != null) {
                pair2 = new Pair(Integer.valueOf((intOrNull9.intValue() * 1000) + (intOrNull8.intValue() * 1000000)), Integer.valueOf((((intOrNull9.intValue() + 1) * 1000) + (intOrNull8.intValue() * 1000000)) - 1));
            }
        }
        if (iAFKeystoreWrapper2 == -1 || pair != null) {
            if (pair2 != null) {
                if (((Number) pair2.f71705b).intValue() > iAFKeystoreWrapper || iAFKeystoreWrapper > ((Number) pair2.f71706c).intValue()) {
                    return false;
                }
            } else if (pair == null || ((Number) pair.f71705b).intValue() > iAFKeystoreWrapper || iAFKeystoreWrapper > ((Number) pair.f71706c).intValue()) {
                return false;
            }
        } else if (iAFKeystoreWrapper2 != iAFKeystoreWrapper) {
            return false;
        }
        return true;
    }
}
