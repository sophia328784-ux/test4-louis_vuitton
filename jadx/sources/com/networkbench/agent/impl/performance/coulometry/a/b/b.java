package com.networkbench.agent.impl.performance.coulometry.a.b;

import com.batch.android.v0.l;
import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b extends HarvestableObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f37823a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f37824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<a> f37825c = new ArrayList();

    public b(long j2, float f2) {
        this.f37823a = j2;
        this.f37824b = f2;
    }

    private JsonArray d() {
        JsonArray jsonArray = new JsonArray();
        Iterator<a> it = this.f37825c.iterator();
        while (it.hasNext()) {
            jsonArray.add(it.next().asJson());
        }
        return jsonArray;
    }

    public void a(a aVar) {
        if (aVar == null) {
            return;
        }
        this.f37825c.add(aVar);
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("timestamp", Long.valueOf(this.f37823a));
        jsonObject.addProperty("value", Float.valueOf(this.f37824b));
        jsonObject.add(l.f24145h, d());
        return jsonObject;
    }

    public double b() {
        return this.f37824b;
    }

    public List<a> c() {
        return this.f37825c;
    }

    public long a() {
        return this.f37823a;
    }

    public void a(long j2) {
        this.f37823a = j2;
    }

    public void a(float f2) {
        this.f37824b = f2;
    }

    public void a(List<a> list) {
        this.f37825c = list;
    }
}
