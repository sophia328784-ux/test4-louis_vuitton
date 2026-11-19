package com.networkbench.agent.impl.crash.a;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.agent.impl.session.SpanFormat;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class b extends HarvestableObject implements SpanFormat {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f36597c = 60;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f36598a = 60;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    JsonArray f36599b;

    public b(JsonArray jsonArray) {
        this.f36599b = jsonArray;
    }

    private JsonArray a() {
        try {
            return NBSAgent.getDeviceData().asJsonArray();
        } catch (Throwable unused) {
            return new JsonArray();
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("type", new JsonPrimitive("customError"));
        jsonObject.add("interval", new JsonPrimitive((Number) Integer.valueOf(this.f36598a)));
        jsonObject.add("timestamp", new JsonPrimitive((Number) Long.valueOf(r.u().g(System.currentTimeMillis()))));
        jsonObject.add("dev", a());
        jsonObject.add("errs", this.f36599b);
        return jsonObject;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public boolean checkData() {
        return this.f36599b.size() == 0;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public String formatInfo() {
        if (checkData()) {
            return "";
        }
        return "customError" + asJsonObject().toString() + "\n";
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public void reset() {
        this.f36599b = null;
    }
}
