package com.perfectcorp.uma;

import defpackage.r81;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
abstract class t {
    public static int a(String str, Map map) {
        int length = b(str).length() + 100;
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                length += b((String) entry.getValue()).length() + b((String) entry.getKey()).length() + 12;
            }
        }
        return length;
    }

    public static String b(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            if (!b.d) {
                return str;
            }
            r81.g("Must not be happen! UTF-8 is always supported.", e2);
            return null;
        }
    }
}
