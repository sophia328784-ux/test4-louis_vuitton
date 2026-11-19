package com.networkbench.agent.impl.performance.coulometry.a.b;

import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes2.dex */
public class a extends HarvestableObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f37821a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f37822b;

    public a(String str, String str2) {
        this.f37821a = str;
        this.f37822b = str2;
    }

    public String a() {
        return this.f37821a;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("name", this.f37821a);
        jsonObject.addProperty("value", this.f37822b);
        return jsonObject;
    }

    public String b() {
        return this.f37822b;
    }

    public void a(String str) {
        this.f37821a = str;
    }

    public void b(String str) {
        this.f37822b = str;
    }
}
