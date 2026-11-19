package com.networkbench.agent.impl.n;

import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonPrimitive;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class a extends HarvestableArray {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f37531a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f37532b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<String, Object> f37533c;
    private long d;

    public a(String str, String str2, Map<String, Object> map) {
        this.f37531a = str;
        this.f37532b = str2;
        HashMap map2 = new HashMap();
        this.f37533c = map2;
        if (map != null) {
            map2.putAll(map);
        }
        this.d = r.u().g(System.currentTimeMillis());
    }

    public String a() {
        return this.f37531a;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(this.d)));
        jsonArray.add(new JsonPrimitive(this.f37531a));
        String str = this.f37532b;
        if (str == null) {
            str = "";
        }
        jsonArray.add(new JsonPrimitive(str));
        jsonArray.add(ak.a(this.f37533c));
        return jsonArray;
    }

    public String b() {
        return this.f37532b;
    }

    public Map<String, Object> c() {
        return this.f37533c;
    }

    public long d() {
        return this.d;
    }

    public void a(String str) {
        this.f37531a = str;
    }

    public void b(String str) {
        this.f37532b = str;
    }

    public void a(Map<String, Object> map) {
        this.f37533c = map;
    }

    public void a(long j2) {
        this.d = j2;
    }
}
