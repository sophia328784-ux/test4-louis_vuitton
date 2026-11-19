package com.networkbench.agent.impl.webview.b;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class f extends HarvestableObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f38492a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f38493b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f38494c = new b();
    private b d = new b();

    public void a() {
        this.d.c();
        this.f38494c.c();
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("type", new JsonPrimitive("webviewPerfMetrics2"));
        jsonObject.add("interval", new JsonPrimitive((Number) Long.valueOf(r.u().r())));
        jsonObject.add("timestamp", new JsonPrimitive((Number) Long.valueOf(r.u().g(System.currentTimeMillis()))));
        jsonObject.add("dev", NBSAgent.getDeviceData().asJson());
        jsonObject.add("pf", this.f38494c.asJsonArray());
        jsonObject.add("err", this.d.asJsonArray());
        return jsonObject;
    }

    public b b() {
        return this.f38494c;
    }

    public b c() {
        return this.d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("type:webviewPerfMetrics2");
        sb.append(", pf:" + this.f38494c.toString());
        sb.append(", err:" + this.d.toString());
        return sb.toString();
    }
}
