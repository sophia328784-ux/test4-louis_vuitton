package com.networkbench.agent.impl.data.a;

import android.text.TextUtils;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import defpackage.tr;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class d extends c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public f f36773f;
    JsonObject g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f36774h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f36775i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f36776j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Map<String, Object> f36777k;
    private int o;
    private int p;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f36772e = false;
    private int l = 2;
    private long m = -1;
    private int n = 0;
    private int q = 0;
    private int r = 0;

    public d(String str, String str2) {
        this.f36769a = System.currentTimeMillis();
        this.f36774h = str;
        this.f36770b = new UUID(ak.a().nextLong(), ak.a().nextLong()).toString().replace("-", "");
        this.f36773f = new f(System.currentTimeMillis());
        if (TextUtils.isEmpty(str2)) {
            this.f36775i = tr.g("customAction#", str);
        } else {
            this.f36775i = tr.h(str2, "#", str);
        }
        com.networkbench.agent.impl.k.b bVarQ = ak.q();
        this.d = bVarQ;
        bVarQ.f37423c = this.f36770b;
    }

    private JsonObject d() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("name", new JsonPrimitive(this.f36774h));
        jsonObject.add("tag", new JsonPrimitive(this.f36776j));
        jsonObject.add("cust", new JsonPrimitive(ak.a(this.f36777k).toString()));
        return jsonObject;
    }

    private String e() {
        return ak.a(r.u().J(), false);
    }

    private long f() {
        return this.f36773f.b() - this.f36773f.a();
    }

    public void a(String str) {
        if (str == null) {
            str = "";
        }
        this.f36776j = str;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        f fVar = this.f36773f;
        if (fVar != null) {
            this.g = fVar.c();
            f fVar2 = this.f36773f;
            this.o = fVar2.f36784e;
            this.p = fVar2.f36783c;
            this.q = fVar2.d;
            this.r = fVar2.f36782b;
        }
        long jF = f();
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.l)));
        jsonArray.add(new JsonPrimitive(this.f36775i));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(jF)));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(this.m)));
        jsonArray.add(new JsonPrimitive((Number) 0));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.o)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.p)));
        jsonArray.add(new JsonPrimitive(e()));
        jsonArray.add(new JsonPrimitive(""));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.q)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.r)));
        jsonArray.add(new JsonPrimitive(this.g.toString()));
        jsonArray.add(new JsonPrimitive(d().toString()));
        jsonArray.add(new JsonPrimitive(""));
        r rVarU = r.u();
        com.networkbench.agent.impl.k.b bVar = this.d;
        f fVar3 = this.f36773f;
        jsonArray.add(new JsonPrimitive(new com.networkbench.agent.impl.data.a(rVarU, bVar, fVar3 != null ? fVar3.a() : System.currentTimeMillis()).asJsonObject().toString()));
        jsonArray.add(new JsonPrimitive(""));
        return jsonArray;
    }

    public long c() {
        return this.f36769a;
    }

    public void a(Map map) {
        this.f36777k = map;
    }
}
