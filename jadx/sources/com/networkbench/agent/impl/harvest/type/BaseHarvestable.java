package com.networkbench.agent.impl.harvest.type;

import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonElement;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import com.networkbench.com.google.gson.reflect.TypeToken;
import defpackage.md;
import java.lang.reflect.Type;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class BaseHarvestable implements Harvestable {
    protected final Type GSON_STRING_MAP_TYPE = new TypeToken<Map>() { // from class: com.networkbench.agent.impl.harvest.type.BaseHarvestable.1
    }.getType();
    private final HarvestableType type;

    public BaseHarvestable(HarvestableType harvestableType) {
        this.type = harvestableType;
    }

    @Override // com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonElement asJson() {
        int iOrdinal = this.type.ordinal();
        if (iOrdinal == 0) {
            return asJsonObject();
        }
        if (iOrdinal == 1) {
            return asJsonArray();
        }
        if (iOrdinal != 2) {
            return null;
        }
        return asJsonPrimitive();
    }

    @Override // com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        return null;
    }

    @Override // com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        return null;
    }

    @Override // com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonPrimitive asJsonPrimitive() {
        return null;
    }

    @Override // com.networkbench.agent.impl.harvest.type.Harvestable
    public HarvestableType getType() {
        return this.type;
    }

    public void notEmpty(String str) {
        if (str == null || str.length() == 0) {
            md.n("Missing Harvestable field.");
        }
    }

    public void notNull(Object obj) {
        if (obj != null) {
            return;
        }
        md.n("Null field in Harvestable object");
    }

    public String optional(String str) {
        return str == null ? "" : str;
    }

    @Override // com.networkbench.agent.impl.harvest.type.Harvestable
    public String toJsonString() {
        return asJson().toString();
    }
}
