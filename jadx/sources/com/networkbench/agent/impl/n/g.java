package com.networkbench.agent.impl.n;

import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class g extends HarvestableArray {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f37555a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f37556b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f37557c;
    private String d;

    public g(g gVar) {
        if (gVar == null) {
            return;
        }
        this.f37555a = gVar.b();
        this.f37556b = gVar.c();
        this.f37557c = gVar.a();
        this.d = gVar.d;
    }

    private long f() {
        long j2 = this.f37556b - this.f37555a;
        if (j2 < 0 || j2 > 1000000) {
            return 0L;
        }
        return j2;
    }

    public void a(long j2) {
        this.f37555a = j2;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive(this.f37557c));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf((int) (f() / 1000))));
        return jsonArray;
    }

    public void b(long j2) {
        this.f37556b = j2;
    }

    public long c() {
        return this.f37556b;
    }

    public String d() {
        return this.d;
    }

    public void e() {
        this.f37556b = 0L;
        this.f37555a = 0L;
        this.f37557c = "";
    }

    public String toString() {
        return "curPageName:" + this.f37557c + ",timeStampStart:" + this.f37555a + ", timeStampStop:" + this.f37556b;
    }

    public void a(String str) {
        this.f37557c = str;
    }

    public long b() {
        return this.f37555a;
    }

    public String a() {
        return this.f37557c;
    }

    public void b(String str) {
        this.d = str;
    }

    public g() {
        this.f37556b = 0L;
        this.f37555a = 0L;
        this.f37557c = "";
        this.d = "";
    }
}
