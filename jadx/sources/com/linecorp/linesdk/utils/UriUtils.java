package com.linecorp.linesdk.utils;

import android.net.Uri;
import defpackage.md;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class UriUtils {
    public static void a(Uri.Builder builder, Map map) {
        for (Map.Entry entry : map.entrySet()) {
            builder.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
    }

    public static LinkedHashMap b(String... strArr) {
        if (strArr.length % 2 != 0) {
            md.n("Odd number of key and Value");
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int i2 = 0; i2 < strArr.length; i2 += 2) {
            linkedHashMap.put(strArr[i2], strArr[i2 + 1]);
        }
        return linkedHashMap;
    }

    public static Uri c(Uri uri, String... strArr) {
        Uri.Builder builderBuildUpon = uri.buildUpon();
        for (String str : strArr) {
            builderBuildUpon.appendEncodedPath(str);
        }
        return builderBuildUpon.build();
    }
}
