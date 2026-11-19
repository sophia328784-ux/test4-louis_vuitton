package com.networkbench.agent.impl.webview.b;

import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.com.google.gson.JsonArray;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class b extends HarvestableArray {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Collection<HarvestableArray> f38441a = Collections.synchronizedCollection(new ArrayList());

    public void a(HarvestableArray harvestableArray) {
        if (harvestableArray != null) {
            this.f38441a.add(harvestableArray);
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        HarvestableArray next;
        JsonArray jsonArray = new JsonArray();
        Iterator<HarvestableArray> it = this.f38441a.iterator();
        while (it.hasNext() && (next = it.next()) != null) {
            jsonArray.add(next.asJsonArray());
        }
        return jsonArray;
    }

    public void b(HarvestableArray harvestableArray) {
        if (harvestableArray != null) {
            this.f38441a.remove(harvestableArray);
        }
    }

    public void c() {
        this.f38441a.clear();
    }

    public String toString() {
        return this.f38441a.toString();
    }

    public Collection<HarvestableArray> a() {
        return this.f38441a;
    }

    public int b() {
        return this.f38441a.size();
    }
}
