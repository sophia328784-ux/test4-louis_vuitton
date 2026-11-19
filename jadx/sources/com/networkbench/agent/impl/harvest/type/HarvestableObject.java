package com.networkbench.agent.impl.harvest.type;

import com.networkbench.com.google.gson.Gson;
import com.networkbench.com.google.gson.JsonObject;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class HarvestableObject extends BaseHarvestable {
    public HarvestableObject() {
        super(HarvestableType.OBJECT);
    }

    public static HarvestableObject fromMap(final Map<String, Object> map) {
        return new HarvestableObject() { // from class: com.networkbench.agent.impl.harvest.type.HarvestableObject.1
            @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
            public JsonObject asJsonObject() {
                return (JsonObject) new Gson().toJsonTree(map, this.GSON_STRING_MAP_TYPE);
            }
        };
    }

    public static HarvestableObject fromMapString(final Map<String, String> map) {
        return new HarvestableObject() { // from class: com.networkbench.agent.impl.harvest.type.HarvestableObject.2
            @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
            public JsonObject asJsonObject() {
                return (JsonObject) new Gson().toJsonTree(map, this.GSON_STRING_MAP_TYPE);
            }
        };
    }

    @Override // com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public abstract JsonObject asJsonObject();
}
