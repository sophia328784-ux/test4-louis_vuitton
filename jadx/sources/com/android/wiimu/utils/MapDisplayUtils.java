package com.android.wiimu.utils;

import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class MapDisplayUtils {
    public static String displayMap(Map map) {
        StringBuffer stringBuffer = new StringBuffer("");
        if (map == null) {
            stringBuffer.append("data map is null,it must be initialized");
            return stringBuffer.toString();
        }
        Object[] array = map.keySet().toArray(new Object[0]);
        stringBuffer.append("{");
        boolean z = false;
        for (Object obj : array) {
            stringBuffer.append("\"" + obj + "\":\"" + map.get(obj) + "\",");
            if (!z) {
                z = true;
            }
        }
        if (z) {
            stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        }
        stringBuffer.append("}");
        return stringBuffer.toString();
    }
}
