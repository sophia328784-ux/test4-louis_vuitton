package com.networkbench.agent.impl.performance.coulometry.a.b;

import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class d implements com.networkbench.agent.impl.performance.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f37827a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f37828b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f37829c;
    private List<b> d = new ArrayList();

    public d(String str, String str2, String str3) {
        this.f37827a = str;
        this.f37828b = str2;
        this.f37829c = str3;
    }

    private synchronized JsonArray g() {
        JsonArray jsonArray;
        jsonArray = new JsonArray();
        Iterator<b> it = this.d.iterator();
        while (it.hasNext()) {
            jsonArray.add(it.next().asJsonObject());
        }
        return jsonArray;
    }

    @Override // com.networkbench.agent.impl.performance.a
    public JsonObject a() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("name", this.f37827a);
        jsonObject.addProperty("description", this.f37828b);
        jsonObject.addProperty("unit", this.f37829c);
        jsonObject.add("dataPoints", g());
        return jsonObject;
    }

    public String b() {
        return this.f37827a;
    }

    public String c() {
        return this.f37828b;
    }

    public String d() {
        return this.f37829c;
    }

    public List<b> e() {
        return this.d;
    }

    public synchronized void f() {
        this.d.clear();
    }

    public void b(String str) {
        this.f37828b = str;
    }

    public void c(String str) {
        this.f37829c = str;
    }

    public void a(b bVar, String str) {
        if (bVar == null) {
            return;
        }
        StringBuilder sbR = pq0.r("addDataPoint  : name ", str, " ");
        sbR.append(bVar.asJsonObject().toString());
        com.networkbench.agent.impl.c.g.y(sbR.toString());
        this.d.add(bVar);
    }

    public void a(String str) {
        this.f37827a = str;
    }

    public void a(List<b> list) {
        this.d = list;
    }
}
