package com.batch.android.i1;

import com.batch.android.g1.c;
import com.batch.android.json.JSONArray;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.batch.android.w.b;
import defpackage.a61;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f23490a = new b();

    public JSONObject a(c.b bVar) throws JSONException {
        if (bVar == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.putOpt("session", bVar.a());
        if (bVar.b() != null) {
            JSONArray jSONArray = new JSONArray();
            for (c.b.a aVar : bVar.b()) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("views", aVar.b());
                jSONObject2.put("duration", aVar.a());
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("time", jSONArray);
        }
        return jSONObject;
    }

    public JSONArray a(List<com.batch.android.t.b> list) throws JSONException {
        return this.f23490a.b(list);
    }

    public JSONObject a(c cVar) throws JSONException {
        if (cVar != null) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(com.batch.android.s.b.a.f24015b, cVar.a());
            if (!cVar.c().isEmpty()) {
                jSONObject.put("campaigns", this.f23490a.b(cVar.c()));
                jSONObject.put("campaigns_version", cVar.g().toString());
                jSONObject.putOpt("cappings", a(cVar.e()));
                return jSONObject;
            }
            a61.o("Cannot serialize an empty campaigns list");
            return null;
        }
        a61.o("Cannot serialize a null response");
        return null;
    }
}
