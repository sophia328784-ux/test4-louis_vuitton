package com.networkbench.agent.impl.n;

import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonPrimitive;
import java.util.Collection;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class h extends HarvestableArray {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f37558e = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Collection<g> f37559a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f37560b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f37561c;
    private int d;

    public h(h hVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.f37559a = copyOnWriteArrayList;
        if (hVar == null) {
            return;
        }
        this.d = hVar.c();
        this.f37560b = hVar.a();
        this.f37561c = hVar.b();
        Collection<g> collection = hVar.f37559a;
        if (collection != null) {
            copyOnWriteArrayList.addAll(collection);
        }
    }

    public void a(g gVar) {
        if (gVar != null) {
            try {
                this.f37559a.add(gVar);
            } catch (Exception e2) {
                f37558e.e("addPageSpans occur an error " + e2);
            }
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f37560b)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f37561c)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.d)));
        JsonArray jsonArray2 = new JsonArray();
        for (g gVar : this.f37559a) {
            if (gVar != null) {
                jsonArray2.add(gVar.asJsonArray());
            }
        }
        jsonArray.add(jsonArray2);
        return jsonArray;
    }

    public void b(int i2) {
        int i3 = i2 - this.f37560b;
        if (i3 > 1000000 || i3 < 0) {
            i3 = 0;
        }
        if (i3 >= 30) {
            this.f37561c = i3 - 30;
        } else {
            this.f37561c = i3;
        }
    }

    public void c(int i2) {
        this.d += i2;
    }

    public void d() {
        this.f37560b = 0;
        this.f37561c = 0;
        this.d = 0;
        this.f37559a.clear();
    }

    public int c() {
        return this.d;
    }

    public int b() {
        return this.f37561c;
    }

    public int a() {
        return this.f37560b;
    }

    public void a(int i2) {
        this.f37560b = i2;
    }

    public h() {
        this.f37559a = new CopyOnWriteArrayList();
        this.d = 0;
        this.f37560b = 0;
        this.f37561c = 0;
    }
}
