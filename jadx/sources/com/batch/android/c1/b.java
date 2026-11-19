package com.batch.android.c1;

import com.batch.android.json.JSONArray;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f23010a = "email";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f23011b = "email_marketing";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f23012c = "phone_number";
    private static final String d = "sms_marketing";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f23013e = "language";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f23014f = "region";
    private static final String g = "custom_attributes";

    public static JSONObject a(e eVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        c cVarB = eVar.b();
        if (cVarB != null) {
            jSONObject.put(f23010a, cVarB.a());
        }
        c cVarE = eVar.e();
        if (cVarE != null) {
            jSONObject.put(f23012c, cVarE.a());
        }
        c cVarD = eVar.d();
        if (cVarD != null) {
            jSONObject.put(f23013e, cVarD.a());
        }
        c cVarF = eVar.f();
        if (cVarF != null) {
            jSONObject.put(f23014f, cVarF.a());
        }
        if (eVar.c() != null) {
            jSONObject.put(f23011b, eVar.c().name().toLowerCase(Locale.US));
        }
        if (eVar.g() != null) {
            jSONObject.put(d, eVar.g().name().toLowerCase(Locale.US));
        }
        Map<String, com.batch.android.l1.d> mapA = eVar.a();
        if (!mapA.isEmpty()) {
            JSONObject jSONObject2 = new JSONObject();
            for (Map.Entry<String, Object> entry : com.batch.android.l1.d.a(mapA, false).entrySet()) {
                if (entry.getValue() instanceof List) {
                    jSONObject2.put(entry.getKey(), new JSONArray((Collection) entry.getValue()));
                } else if (entry.getValue() instanceof d) {
                    jSONObject2.put(entry.getKey(), a((d) entry.getValue()));
                } else {
                    jSONObject2.put(entry.getKey(), entry.getValue() == null ? JSONObject.NULL : entry.getValue());
                }
            }
            jSONObject.put(g, jSONObject2);
        }
        return jSONObject;
    }

    public static JSONObject a(d dVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        List<String> listA = dVar.a();
        List<String> listB = dVar.b();
        if (listA != null && !listA.isEmpty()) {
            jSONObject.put("$add", new JSONArray((Collection) dVar.a()));
        }
        if (listB != null && !listB.isEmpty()) {
            jSONObject.put("$remove", new JSONArray((Collection) dVar.b()));
        }
        return jSONObject;
    }
}
