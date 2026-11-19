package com.networkbench.agent.impl.performance.coulometry.a.b;

import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class g extends HarvestableObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f37836a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f37837b;

    public g(String str, String str2) {
        this.f37836a = str;
        this.f37837b = str2;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("name", new JsonPrimitive(this.f37836a));
        jsonObject.add("value", new JsonPrimitive(this.f37837b));
        return jsonObject;
    }
}
