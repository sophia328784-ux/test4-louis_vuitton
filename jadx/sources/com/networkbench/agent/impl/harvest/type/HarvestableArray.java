package com.networkbench.agent.impl.harvest.type;

import com.networkbench.com.google.gson.JsonArray;

/* JADX INFO: loaded from: classes2.dex */
public abstract class HarvestableArray extends BaseHarvestable {
    public HarvestableArray() {
        super(HarvestableType.ARRAY);
    }

    @Override // com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public abstract JsonArray asJsonArray();
}
