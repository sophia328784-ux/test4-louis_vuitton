package com.networkbench.agent.impl.harvest.type;

import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class HarvestableDouble extends HarvestableValue {
    private double value;

    public HarvestableDouble(double d) {
        this();
        this.value = d;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableValue, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonPrimitive asJsonPrimitive() {
        return new JsonPrimitive((Number) Double.valueOf(this.value));
    }

    public HarvestableDouble() {
    }
}
