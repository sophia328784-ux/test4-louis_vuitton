package com.sightcall.universal.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public class ReplacementUtils {

    public interface Replacement {
        String replace(Matcher matcher);
    }

    public static String replace(String str, Pattern pattern, Replacement replacement) {
        Matcher matcher = pattern.matcher(str);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String strReplace = replacement.replace(matcher);
            if (strReplace == null) {
                strReplace = "";
            }
            matcher.appendReplacement(stringBuffer, strReplace);
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }
}
