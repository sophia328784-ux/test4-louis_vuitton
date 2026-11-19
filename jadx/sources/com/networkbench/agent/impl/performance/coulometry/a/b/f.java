package com.networkbench.agent.impl.performance.coulometry.a.b;

import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import defpackage.pq0;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class f extends HarvestableArray {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<g> f37835a = pq0.v();

    public void a() {
        int i2 = r.p;
        this.f37835a.add(new g("app_process", (i2 + 1) + ""));
        this.f37835a.add(new g("session_id", NBSBitmapBeansControl.getInstance().getSessionId()));
        this.f37835a.add(new g("bname", r.u().d()));
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        Iterator<g> it = this.f37835a.iterator();
        while (it.hasNext()) {
            jsonArray.add(it.next().asJsonObject());
        }
        return jsonArray;
    }

    public void b() {
        this.f37835a.clear();
    }

    public synchronized void a(g gVar) {
        if (gVar == null) {
            return;
        }
        this.f37835a.add(gVar);
    }
}
