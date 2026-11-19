package com.networkbench.agent.impl.data;

import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.com.google.gson.JsonArray;
import defpackage.pq0;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class g extends HarvestableArray {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f36902b = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AtomicBoolean f36903a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<f> f36904c = pq0.v();
    private final List<f> d = pq0.v();

    public void a(f fVar) {
        if (this.f36903a.get()) {
            this.d.add(fVar);
        } else {
            this.f36904c.add(fVar);
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public synchronized JsonArray asJsonArray() {
        JsonArray jsonArray;
        jsonArray = new JsonArray();
        Iterator<f> it = this.f36904c.iterator();
        while (it.hasNext()) {
            jsonArray.add(it.next().asJson());
        }
        return jsonArray;
    }

    public synchronized void b(f fVar) {
        this.f36904c.remove(fVar);
    }

    public int c() {
        return this.f36904c.size();
    }

    public synchronized void d() {
        try {
            Iterator<f> it = this.d.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
            this.d.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    public String toString() {
        return defpackage.a.o(new StringBuilder("ErrorDatas{errorDatas="), this.f36904c, "}");
    }

    public Collection<f> b() {
        return this.f36904c;
    }

    public synchronized void a(int i2) {
        this.f36904c.remove(i2);
    }

    public synchronized void a() {
        this.f36904c.clear();
    }
}
