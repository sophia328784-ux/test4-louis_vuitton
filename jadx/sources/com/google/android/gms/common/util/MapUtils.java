package com.google.android.gms.common.util;

import defpackage.a;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class MapUtils {
    public static void a(StringBuilder sb, HashMap map) {
        sb.append("{");
        boolean z = true;
        for (String str : map.keySet()) {
            if (!z) {
                sb.append(",");
            }
            String str2 = (String) map.get(str);
            a.B(sb, "\"", str, "\":");
            if (str2 == null) {
                sb.append("null");
            } else {
                a.B(sb, "\"", str2, "\"");
            }
            z = false;
        }
        sb.append("}");
    }
}
