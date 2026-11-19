package com.batch.android.r;

import com.batch.android.json.JSONArray;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static boolean a(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray == null) {
            return jSONArray2 == null;
        }
        if (jSONArray2 == null || jSONArray.length() > jSONArray2.length()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
            try {
                arrayList.add(jSONArray2.get(i2));
            } catch (JSONException unused) {
                return false;
            }
        }
        for (int i3 = 0; i3 < jSONArray.length(); i3++) {
            try {
                Object obj = jSONArray.get(i3);
                for (int i4 = 0; i4 < arrayList.size(); i4++) {
                    Object obj2 = arrayList.get(i4);
                    if ((obj instanceof JSONObject) && (obj2 instanceof JSONObject)) {
                        if (a((JSONObject) obj, (JSONObject) obj2)) {
                            arrayList.remove(i4);
                        }
                    } else if ((obj instanceof JSONArray) && (obj2 instanceof JSONArray)) {
                        if (a((JSONArray) obj, (JSONArray) obj2)) {
                            arrayList.remove(i4);
                        }
                    } else if (obj.equals(obj2)) {
                        arrayList.remove(i4);
                    }
                }
            } catch (JSONException unused2) {
            }
            return false;
        }
        return true;
    }

    public static boolean a(JSONObject jSONObject, JSONObject jSONObject2) {
        boolean zA;
        if (jSONObject == null) {
            return jSONObject2 == null;
        }
        if (jSONObject2 == jSONObject) {
            return true;
        }
        if (jSONObject2 == null) {
            return false;
        }
        for (String str : jSONObject.keySet()) {
            try {
                if (!jSONObject2.has(str)) {
                    return false;
                }
                if (!jSONObject.get(str).equals(jSONObject2.get(str))) {
                    if (jSONObject.get(str) instanceof JSONObject) {
                        zA = a(jSONObject.getJSONObject(str), jSONObject2.getJSONObject(str));
                    } else {
                        zA = jSONObject.get(str) instanceof JSONArray ? a(jSONObject.getJSONArray(str), jSONObject2.getJSONArray(str)) : false;
                    }
                    if (!zA) {
                        return false;
                    }
                }
            } catch (JSONException unused) {
            }
        }
        return true;
    }
}
