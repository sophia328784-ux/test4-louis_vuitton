package com.networkbench.agent.impl.data.d;

import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class i extends com.networkbench.agent.impl.data.b.a {
    public i() {
        this.f36838c = "pages";
        this.f36837b = "pageMetrics";
        this.d = "page";
    }

    @Override // com.networkbench.agent.impl.data.b.a
    public void a(HarvestableArray harvestableArray) {
        try {
            if (a(1)) {
                this.f36836a.remove(0);
            }
            this.f36836a.add(harvestableArray);
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.j("NBSPageData add() has an error : " + th);
        }
    }

    public int e() {
        return this.f36836a.size();
    }

    public void a(List<HarvestableArray> list) {
        if (a(list.size())) {
            Iterator<HarvestableArray> it = list.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
            return;
        }
        this.f36836a.addAll(list);
    }

    private boolean a(int i2) {
        return this.f36836a.size() + i2 > Harvest.getInstance().getConfiguration().getUiPages();
    }
}
