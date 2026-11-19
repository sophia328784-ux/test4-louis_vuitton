package com.networkbench.agent.impl.harvest.type;

import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonElement;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public interface Harvestable {
    JsonElement asJson();

    JsonArray asJsonArray();

    JsonObject asJsonObject();

    JsonPrimitive asJsonPrimitive();

    HarvestableType getType();

    String toJsonString();
}
