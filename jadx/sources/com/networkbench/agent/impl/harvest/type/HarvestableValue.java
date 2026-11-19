package com.networkbench.agent.impl.harvest.type;

import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public abstract class HarvestableValue extends BaseHarvestable {
    public HarvestableValue() {
        super(HarvestableType.VALUE);
    }

    @Override // com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public abstract JsonPrimitive asJsonPrimitive();
}
