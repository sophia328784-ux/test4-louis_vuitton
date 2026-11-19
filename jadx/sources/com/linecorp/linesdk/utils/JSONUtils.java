package com.linecorp.linesdk.utils;

import java.util.ArrayList;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public final class JSONUtils {
    public static ArrayList a(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            arrayList.add(jSONArray.getString(i2));
        }
        return arrayList;
    }
}
