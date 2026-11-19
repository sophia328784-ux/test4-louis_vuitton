package com.batch.android.h1;

import com.batch.android.e.t;
import com.batch.android.json.JSONArray;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import defpackage.a61;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class c extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f23472c = "LocalCampaignsResponseDeserializer";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.batch.android.w.a f23473b;

    public c(JSONObject jSONObject) {
        super(jSONObject);
        this.f23473b = new com.batch.android.w.a();
    }

    private List<com.batch.android.g1.c.b.a> a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                Integer numReallyOptInteger = jSONObject.reallyOptInteger("views", null);
                Integer numReallyOptInteger2 = jSONObject.reallyOptInteger("duration", null);
                if (numReallyOptInteger != null && numReallyOptInteger.intValue() != 0 && numReallyOptInteger2 != null && numReallyOptInteger2.intValue() != 0) {
                    arrayList.add(new com.batch.android.g1.c.b.a(numReallyOptInteger, numReallyOptInteger2));
                }
            } catch (Exception e2) {
                t.c(f23472c, "An error occurred while parsing an In-App TimeBasedCapping. Skipping.", e2);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    private com.batch.android.g1.c.a f() throws JSONException {
        JSONObject jSONObject = this.f23474a;
        if (jSONObject == null || !jSONObject.hasNonNull("error")) {
            return null;
        }
        com.batch.android.g1.c.a aVar = new com.batch.android.g1.c.a();
        JSONObject jSONObject2 = this.f23474a.getJSONObject("error");
        if (jSONObject2.hasNonNull(m.v)) {
            aVar.a(jSONObject2.getInt(m.v));
        }
        if (jSONObject2.has("message")) {
            aVar.a(jSONObject2.getString("message"));
        }
        return aVar;
    }

    @Override // com.batch.android.h1.e
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public com.batch.android.g1.c a() throws JSONException {
        if (this.f23474a == null) {
            a61.o("Cannot deserialize a null json object");
            return null;
        }
        com.batch.android.g1.c cVar = new com.batch.android.g1.c(b(), e());
        cVar.a(f());
        cVar.a(this.f23473b.a(this.f23474a.optJSONArray("campaigns"), cVar.g() == com.batch.android.g1.c.EnumC0054c.CEP));
        cVar.a(d());
        return cVar;
    }

    public com.batch.android.g1.c.b d() throws JSONException {
        JSONObject jSONObject = this.f23474a;
        if (jSONObject == null || !jSONObject.hasNonNull("cappings")) {
            return null;
        }
        JSONObject jSONObject2 = this.f23474a.getJSONObject("cappings");
        return new com.batch.android.g1.c.b(jSONObject2.reallyOptInteger("session", null), jSONObject2.hasNonNull("time") ? a(jSONObject2.getJSONArray("time")) : null);
    }

    public com.batch.android.g1.c.EnumC0054c e() throws JSONException {
        return com.batch.android.g1.c.EnumC0054c.valueOf(this.f23474a.getString("campaigns_version"));
    }

    public List<com.batch.android.t.b> a(boolean z) {
        return this.f23473b.a(this.f23474a.optJSONArray("campaigns"), z);
    }
}
