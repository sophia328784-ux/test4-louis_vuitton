package com.android.wiimu.model.cling_callback.playqueue.xml;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    public static String a(String str) {
        return str.replace("&lt;", "<").replace("&gt;", ">").replace("&apos;", "'").replace("&quot;", "\"").replace("&amp;", "&");
    }

    public static String b(String str) {
        return str.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;").replace("'", "&apos;").replace("\"", "&quot;");
    }

    public static String c(String str) {
        char[] charArray = str.toCharArray();
        boolean z = false;
        for (int i2 = 0; i2 < charArray.length; i2++) {
            char c2 = charArray[i2];
            if (c2 > 0 && c2 < ' ') {
                charArray[i2] = ' ';
                z = true;
            }
        }
        return z ? new String(charArray).trim() : str;
    }
}
