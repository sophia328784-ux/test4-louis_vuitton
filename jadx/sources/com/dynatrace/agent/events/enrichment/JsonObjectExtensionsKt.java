package com.dynatrace.agent.events.enrichment;

import com.dynatrace.agent.events.enrichment.sanitation.JsonAttribute;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"com.dynatrace.agent_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class JsonObjectExtensionsKt {
    public static final Object a(Object obj) throws JSONException {
        obj.getClass();
        if (!(obj instanceof JSONArray)) {
            return obj instanceof JSONObject ? b((JSONObject) obj) : obj;
        }
        JSONArray jSONArray = (JSONArray) obj;
        JSONArray jSONArray2 = new JSONArray();
        int length = jSONArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            Object obj2 = jSONArray.get(i2);
            obj2.getClass();
            jSONArray2.put(a(obj2));
        }
        return jSONArray2;
    }

    public static final JSONObject b(JSONObject jSONObject) throws JSONException {
        jSONObject.getClass();
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> itKeys = jSONObject.keys();
        itKeys.getClass();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object obj = jSONObject.get(next);
            obj.getClass();
            jSONObject2.put(next, a(obj));
        }
        return jSONObject2;
    }

    public static final boolean c(String str, JSONObject jSONObject) {
        jSONObject.getClass();
        try {
            if (!jSONObject.has(str)) {
                return false;
            }
            Object obj = jSONObject.get(str);
            if (obj instanceof Boolean) {
                return ((Boolean) obj).booleanValue();
            }
            return false;
        } catch (JSONException unused) {
            return false;
        }
    }

    public static final boolean d(JSONObject jSONObject) {
        jSONObject.getClass();
        Iterator<String> itKeys = jSONObject.keys();
        itKeys.getClass();
        for (String str : SequencesKt.b(itKeys)) {
            str.getClass();
            if (StringsKt.P(str, "event_properties.", false)) {
                return true;
            }
        }
        return false;
    }

    public static final void e(JSONObject jSONObject, JsonAttribute jsonAttribute) {
        jSONObject.getClass();
        jSONObject.put(jsonAttribute.f26786a, jsonAttribute.f26787b).getClass();
    }

    public static final void f(JSONObject jSONObject, JSONObject jSONObject2, List list) throws JSONException {
        jSONObject.getClass();
        jSONObject2.getClass();
        list.getClass();
        Iterator<String> itKeys = jSONObject2.keys();
        itKeys.getClass();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!list.contains(next)) {
                jSONObject.put(next, jSONObject2.get(next));
            }
        }
    }
}
