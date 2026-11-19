package com.networkbench.agent.impl.plugin.e;

import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class a extends HarvestableArray {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f38032a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f38033b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f38034c = -1;
    float d = -1.0f;

    public void a() {
        this.d = Math.round(this.d * 1000.0f) / 1000.0f;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38032a)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38033b)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38034c)));
        jsonArray.add(new JsonPrimitive((Number) Float.valueOf(this.d)));
        return jsonArray;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PingData{ps=");
        sb.append(this.f38032a);
        sb.append(", seq=");
        sb.append(this.f38033b);
        sb.append(", ttl=");
        sb.append(this.f38034c);
        sb.append(", time=");
        return defpackage.a.m(sb, this.d, '}');
    }
}
