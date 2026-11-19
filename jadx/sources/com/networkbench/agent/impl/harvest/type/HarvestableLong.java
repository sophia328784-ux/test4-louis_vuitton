package com.networkbench.agent.impl.harvest.type;

import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class HarvestableLong extends HarvestableValue {
    private long value;

    public HarvestableLong(long j2) {
        this();
        this.value = j2;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableValue, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonPrimitive asJsonPrimitive() {
        return new JsonPrimitive((Number) Long.valueOf(this.value));
    }

    public HarvestableLong() {
    }
}
