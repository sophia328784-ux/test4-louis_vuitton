package com.sightcall.pratik.utils;

import kotlin.Metadata;
import kotlin.Pair;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u001a7\u0010\u0000\u001a\u00020\u00012*\u0010\u0002\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00050\u00040\u0003\"\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"toJsonString", "", "pairs", "", "Lkotlin/Pair;", "", "([Lkotlin/Pair;)Ljava/lang/String;", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class StringUtilsKt {
    public static final String toJsonString(Pair<String, ? extends Object>... pairArr) throws JSONException {
        pairArr.getClass();
        JSONObject jSONObject = new JSONObject();
        for (Pair<String, ? extends Object> pair : pairArr) {
            String str = (String) pair.f71705b;
            Object obj = pair.f71706c;
            if (obj instanceof Integer) {
                jSONObject.put(str, ((Number) obj).intValue());
            } else if (obj instanceof String) {
                jSONObject.put(str, obj);
            } else if (obj instanceof Long) {
                jSONObject.put(str, ((Number) obj).longValue());
            } else if (obj instanceof Float) {
                jSONObject.put(str, obj);
            } else if (obj instanceof Boolean) {
                jSONObject.put(str, ((Boolean) obj).booleanValue());
            } else if (obj instanceof Double) {
                jSONObject.put(str, ((Number) obj).doubleValue());
            } else {
                try {
                    jSONObject.put(str, obj);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        String string = jSONObject.toString();
        string.getClass();
        return string;
    }
}
