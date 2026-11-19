package com.linkplay.preset;

/* JADX INFO: loaded from: classes2.dex */
public class PresetUtil {
    public static String convertFromQueueContext(String str) {
        return str.replaceAll("<Key\\d{1,2}>", "<Key>").replaceAll("</Key\\d{1,2}>", "</Key>");
    }

    public static String decode(String str) {
        return str.replace("&lt;", "<").replace("&gt;", ">").replace("&apos;", "'").replace("&quot;", "\"").replace("&amp;", "&");
    }

    public static String encode(String str) {
        return str.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;").replace("'", "&apos;").replace("\"", "&quot;");
    }
}
