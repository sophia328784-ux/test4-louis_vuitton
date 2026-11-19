package com.dynatrace.agent.events.enrichment;

import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"com.dynatrace.agent_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class TimeMetricsSupplierKt {
    public static final boolean a(String str, JSONObject jSONObject) throws JSONException {
        jSONObject.getClass();
        if (!jSONObject.has(str)) {
            return false;
        }
        Object obj = jSONObject.get(str);
        if (!(obj instanceof Long) || ((Number) obj).longValue() < 0) {
            return !(obj instanceof Integer) || ((long) ((Number) obj).intValue()) < 0;
        }
        return false;
    }
}
