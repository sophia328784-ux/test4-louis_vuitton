package com.batch.android.json;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class JSONHelper {
    private JSONHelper() {
    }

    public static List<Object> jsonArrayToArray(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            arrayList.add(jsonObjectToObject(jSONArray.get(i2)));
        }
        return arrayList;
    }

    public static Map<String, Object> jsonObjectToMap(JSONObject jSONObject) throws JSONException {
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            map.put(next, jsonObjectToObject(jSONObject.get(next)));
        }
        return map;
    }

    public static Object jsonObjectToObject(Object obj) throws JSONException {
        if (obj instanceof JSONObject) {
            return jsonObjectToMap((JSONObject) obj);
        }
        return obj instanceof JSONArray ? jsonArrayToArray((JSONArray) obj) : obj;
    }
}
