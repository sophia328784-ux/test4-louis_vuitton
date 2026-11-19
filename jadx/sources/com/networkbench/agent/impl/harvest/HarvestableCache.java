package com.networkbench.agent.impl.harvest;

import com.networkbench.agent.impl.harvest.type.Harvestable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public class HarvestableCache {
    private static final int DEFAULT_CACHE_LIMIT = 1024;
    private int limit = 1024;
    private final Collection<Harvestable> cache = new ArrayList();

    public void add(Harvestable harvestable) {
        if (harvestable == null || this.cache.size() >= this.limit) {
            return;
        }
        this.cache.add(harvestable);
    }

    public Collection<Harvestable> flush() {
        ArrayList arrayList;
        if (this.cache.size() == 0) {
            return Collections.EMPTY_LIST;
        }
        synchronized (this) {
            arrayList = new ArrayList(this.cache);
            this.cache.clear();
        }
        return arrayList;
    }

    public int getSize() {
        return this.cache.size();
    }

    public void setLimit(int i2) {
        this.limit = i2;
    }
}
