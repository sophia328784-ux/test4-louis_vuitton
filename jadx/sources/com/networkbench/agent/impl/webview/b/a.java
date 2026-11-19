package com.networkbench.agent.impl.webview.b;

import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class a extends c {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f38439j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f38440k;
    private String l;
    private int m;

    public a(c.a aVar) {
        super(aVar);
        this.f38439j = "";
        this.f38440k = "";
        this.l = "";
    }

    public void a(String str) {
        if (str == null) {
            str = "";
        }
        this.f38439j = str;
    }

    @Override // com.networkbench.agent.impl.webview.b.c, com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive(this.f38439j));
        jsonArray.add(new JsonPrimitive(this.f38440k));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.m)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38442a)));
        jsonArray.add(new JsonPrimitive(this.f38443b));
        jsonArray.add(new JsonPrimitive(this.f38444c));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.d)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38445e)));
        jsonArray.add(new JsonPrimitive(this.f38446f));
        jsonArray.add(new JsonPrimitive(this.g));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38447h)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38448i)));
        jsonArray.add(new JsonPrimitive(this.l));
        return jsonArray;
    }

    public void b(String str) {
        if (str == null) {
            str = "";
        }
        this.f38440k = str;
    }

    public void c(String str) {
        if (str == null) {
            str = "";
        }
        this.l = str;
    }

    @Override // com.networkbench.agent.impl.webview.b.c
    public String toString() {
        return "pvId:" + this.f38439j + ", pageStartTimeInSec:" + this.m + ", pageUrl:" + this.f38440k + ", cdnvendor:" + this.l + ", " + super.toString();
    }

    public void a(int i2) {
        this.m = i2;
    }
}
