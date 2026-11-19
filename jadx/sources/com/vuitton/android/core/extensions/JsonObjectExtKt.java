package com.vuitton.android.core.extensions;

import kotlin.Metadata;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"core"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class JsonObjectExtKt {
    public static String a(String str, JSONObject jSONObject) throws JSONException {
        jSONObject.getClass();
        if (!jSONObject.has(str) || jSONObject.isNull(str)) {
            return null;
        }
        String string = jSONObject.getString(str);
        string.getClass();
        if (StringsKt.w(string)) {
            return null;
        }
        return jSONObject.getString(str);
    }
}
