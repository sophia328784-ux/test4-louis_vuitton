package com.dynatrace.agent.communication.network.response;

import kotlin.Metadata;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"com.dynatrace.agent_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class JsonExtensionKt {
    public static final Long a(JSONObject jSONObject) {
        Object objOpt = jSONObject.opt("revision");
        if (objOpt instanceof Long) {
            return (Long) objOpt;
        }
        if (objOpt instanceof Number) {
            return Long.valueOf(((Number) objOpt).longValue());
        }
        if (!(objOpt instanceof String)) {
            return null;
        }
        try {
            return Long.valueOf((long) Double.parseDouble((String) objOpt));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static final String b(String str, JSONObject jSONObject) {
        jSONObject.getClass();
        String strC = c(str, jSONObject);
        if (strC == null || strC.length() <= 0) {
            return null;
        }
        return strC;
    }

    public static final String c(String str, JSONObject jSONObject) {
        jSONObject.getClass();
        Object objOpt = jSONObject.opt(str);
        if (objOpt instanceof String) {
            return (String) objOpt;
        }
        if (objOpt != null) {
            return objOpt.toString();
        }
        return null;
    }
}
