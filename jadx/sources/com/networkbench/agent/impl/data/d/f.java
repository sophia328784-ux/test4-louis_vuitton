package com.networkbench.agent.impl.data.d;

import com.networkbench.agent.impl.data.a.m;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class f extends HarvestableArray {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static c f36871a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f36873c;
    private String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f36874e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f36875f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private m f36876h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f36872b = 10000;
    private c g = b.a().c();

    public f(int i2, String str, m mVar) {
        this.f36873c = i2;
        this.d = str;
        this.f36876h = mVar;
        this.f36874e = mVar.f36819h.e();
    }

    private int g() {
        int iCalcState = Harvest.getInstance().getConfiguration().calcState(this.f36874e, this.f36876h.f36819h.d());
        this.f36875f = iCalcState;
        return iCalcState;
    }

    private boolean h() {
        return this.f36875f > 0;
    }

    private String i() {
        return h() ? ak.a(r.u().J(), false) : "";
    }

    public m a() {
        return this.f36876h;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f36873c)));
        jsonArray.add(new JsonPrimitive(this.d));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(this.f36874e)));
        if (this.f36876h != null) {
            jsonArray.add(new JsonPrimitive((Number) Long.valueOf(this.f36876h.f36819h.d())));
        } else {
            jsonArray.add(new JsonPrimitive((Number) Long.valueOf(this.f36874e)));
        }
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(g())));
        jsonArray.add(new JsonPrimitive(e()));
        jsonArray.add(new JsonPrimitive(i()));
        if (this.f36876h == null || !h()) {
            jsonArray.add(new JsonPrimitive(""));
        } else {
            jsonArray.add(new JsonPrimitive(d().toString()));
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("suuid", new JsonPrimitive(r.u().d(System.currentTimeMillis())));
        jsonObject.add("bname", new JsonPrimitive(r.u().d()));
        jsonObject.add("timestamp", new JsonPrimitive((Number) Long.valueOf(r.u().e(System.currentTimeMillis()))));
        jsonArray.add(new JsonPrimitive(jsonObject.toString()));
        return jsonArray;
    }

    public int b() {
        return this.f36875f;
    }

    public String c() {
        return this.d;
    }

    public JsonObject d() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("cpu", new JsonArray());
        jsonObject.add("mem", new JsonArray());
        jsonObject.add("stacks", this.f36876h.asJson());
        return jsonObject;
    }

    public String e() {
        c cVar = this.g;
        return cVar == null ? "" : cVar.toJsonString();
    }

    public boolean f() {
        r.A.a("pageLoadTime:" + this.f36874e + ", maxDurationTime:" + this.f36872b);
        return this.f36874e > this.f36872b;
    }
}
