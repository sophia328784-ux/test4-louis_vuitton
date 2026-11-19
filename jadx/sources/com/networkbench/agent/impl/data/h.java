package com.networkbench.agent.impl.data;

import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.com.google.gson.JsonArray;
import java.util.Collection;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes2.dex */
public class h extends HarvestableArray {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Collection<i> f36905a = new ConcurrentLinkedQueue();

    public void a(i iVar) {
        if (iVar != null) {
            this.f36905a.add(iVar);
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        for (i iVar : this.f36905a) {
            if (iVar != null) {
                jsonArray.add(iVar.asJson());
            }
        }
        return jsonArray;
    }

    public void a() {
        this.f36905a.clear();
    }
}
