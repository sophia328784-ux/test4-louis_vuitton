package com.networkbench.agent.impl.socket;

import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HarvestLifecycleAware;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.com.google.gson.JsonArray;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class q extends HarvestableArray implements HarvestLifecycleAware {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Collection<p> f38215a = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f38216b = new Object();

    public q() {
        Harvest.addHarvestListener(this);
    }

    public void a(p pVar) {
        synchronized (this.f38216b) {
            this.f38215a.add(pVar);
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        Iterator<p> it = this.f38215a.iterator();
        while (it.hasNext()) {
            jsonArray.add(it.next().asJson());
        }
        return jsonArray;
    }

    public void b(p pVar) {
        this.f38215a.remove(pVar);
    }

    public int c() {
        return this.f38215a.size();
    }

    public void d() {
        Iterator<p> it = this.f38215a.iterator();
        while (it.hasNext()) {
            it.next().c(true);
        }
        a();
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestLifecycleAware
    public void onHarvest() {
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestLifecycleAware
    public void onHarvestBefore() {
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestLifecycleAware
    public void onHarvestComplete() {
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestLifecycleAware
    public void onHarvestConnected() {
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestLifecycleAware
    public void onHarvestDeviceIdError() {
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestLifecycleAware
    public void onHarvestDisabled() {
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestLifecycleAware
    public void onHarvestDisconnected() {
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestLifecycleAware
    public void onHarvestError() {
        a();
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestLifecycleAware
    public void onHarvestFilter() {
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestLifecycleAware
    public void onHarvestFinalize() {
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestLifecycleAware
    public void onHarvestSendFailed() {
        a();
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestLifecycleAware
    public void onHarvestStart() {
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestLifecycleAware
    public void onHarvestStop() {
    }

    public String toString() {
        return "SocketDatasInfo{SocketDatas=" + this.f38215a + "}";
    }

    public Collection<p> b() {
        return this.f38215a;
    }

    public void a() {
        this.f38215a.clear();
    }
}
