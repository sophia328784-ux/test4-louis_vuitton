package com.networkbench.agent.impl.performance.a.c;

import com.batch.android.v0.l;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes2.dex */
public class c implements com.networkbench.agent.impl.performance.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public double f37697b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f37698c;
    public long d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f37696a = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f37699e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f37700f = "";

    private JsonObject b() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("timestamp", Long.valueOf(this.d));
        jsonObject.addProperty("value", Double.valueOf(this.f37697b));
        if (!ak.r(this.f37699e)) {
            JsonArray jsonArray = new JsonArray();
            JsonObject jsonObject2 = new JsonObject();
            jsonObject2.addProperty("name", this.f37699e);
            jsonObject2.addProperty("value", this.f37700f);
            jsonArray.add(jsonObject2);
            jsonObject.add(l.f24145h, jsonArray);
        }
        return jsonObject;
    }

    @Override // com.networkbench.agent.impl.performance.a
    public JsonObject a() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("name", this.f37698c);
        jsonObject.addProperty("unit", "");
        jsonObject.addProperty("description", "");
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(b());
        jsonObject.add("dataPoints", jsonArray);
        return jsonObject;
    }
}
