package com.android.wiimu.utils;

import defpackage.o60;

/* JADX INFO: loaded from: classes2.dex */
public class TextQuoteUtils {
    public static String makeTextQuote(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        if (str.charAt(0) != '\"') {
            stringBuffer.append('\"');
        }
        stringBuffer.append(str);
        if (str.charAt(str.length() - 1) != '\"') {
            stringBuffer.append('\"');
        }
        return stringBuffer.toString();
    }

    public static String trimTextQuote(String str) {
        if (str.charAt(0) == '\"') {
            str = str.substring(1);
        }
        return str.charAt(str.length() - 1) == '\"' ? o60.g(2, 0, str) : str;
    }
}
