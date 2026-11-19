package com.networkbench.agent.impl.performance.coulometry.a.b;

import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.com.google.gson.JsonArray;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class c extends HarvestableArray {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final List<com.networkbench.agent.impl.performance.a> f37826a = new CopyOnWriteArrayList();

    public void a(com.networkbench.agent.impl.performance.a aVar) {
        if (aVar == null) {
            return;
        }
        this.f37826a.add(aVar);
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        Iterator<com.networkbench.agent.impl.performance.a> it = this.f37826a.iterator();
        while (it.hasNext()) {
            jsonArray.add(it.next().a());
        }
        return jsonArray;
    }

    public int b() {
        return this.f37826a.size();
    }

    public void a() {
        this.f37826a.clear();
    }
}
