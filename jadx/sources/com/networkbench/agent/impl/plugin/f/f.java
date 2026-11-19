package com.networkbench.agent.impl.plugin.f;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class f {
    public static JsonObject a(com.networkbench.agent.impl.plugin.h hVar) {
        JsonObject jsonObjectAsJsonObject = hVar.asJsonObject();
        jsonObjectAsJsonObject.add("plugin", new JsonPrimitive(hVar.f38124i.f36848c));
        jsonObjectAsJsonObject.add("pluginVer", new JsonPrimitive(NBSAgent.getTaskDataVersion()));
        com.networkbench.agent.impl.c.g.e("createUnknownData : " + jsonObjectAsJsonObject.toString());
        return jsonObjectAsJsonObject;
    }
}
