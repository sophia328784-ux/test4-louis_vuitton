package com.networkbench.agent.impl.data.c;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.agent.impl.plugin.h;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class b extends HarvestableObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    h f36843a;

    public b(h hVar) {
        this.f36843a = hVar;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObjectAsJsonObject = this.f36843a.asJsonObject();
        if (jsonObjectAsJsonObject != null) {
            jsonObjectAsJsonObject.add("taskId", new JsonPrimitive(this.f36843a.f38124i.f36846a));
            jsonObjectAsJsonObject.add("timestamp", new JsonPrimitive((Number) Long.valueOf(r.u().e(this.f36843a.c()))));
            jsonObjectAsJsonObject.add("session_id", new JsonPrimitive(NBSBitmapBeansControl.getInstance().getSessionId()));
            jsonObjectAsJsonObject.add("plugin", new JsonPrimitive(this.f36843a.f38124i.f36848c));
            jsonObjectAsJsonObject.add("pluginVer", new JsonPrimitive(NBSAgent.getTaskDataVersion()));
        }
        return jsonObjectAsJsonObject;
    }
}
