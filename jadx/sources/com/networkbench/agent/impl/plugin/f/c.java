package com.networkbench.agent.impl.plugin.f;

import com.networkbench.agent.impl.harvest.ActionData;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes2.dex */
public class c extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.networkbench.agent.impl.data.f f38051a;
    private ActionData g;

    public c(ActionData actionData, com.networkbench.agent.impl.data.f fVar) {
        super(com.networkbench.agent.impl.plugin.e.after_error);
        this.g = actionData;
        this.f38051a = fVar;
        a(ConfigurationName.REQUEST_HEADERS, actionData.requestHeaderParam);
        a(ConfigurationName.RESPONSE_HEADERS, actionData.responseHeaderParam);
        a(ConfigurationName.PLUGIN_HOSTNAME_CONTEXT, ak.n(actionData.getUrl()));
        a(ConfigurationName.PORT, Integer.valueOf(ak.o(actionData.getUrl())));
    }

    @Override // com.networkbench.agent.impl.plugin.f.i
    public void a() {
        com.networkbench.agent.impl.c.g.e("NetworkScene completeSceneData :--------");
        for (com.networkbench.agent.impl.plugin.h hVar : this.f38062b) {
            if (hVar.l && hVar.f38124i.a()) {
                JsonObject jsonObjectA = f.a(hVar);
                ActionData actionData = this.g;
                if (actionData != null && actionData.getUnknown() != null) {
                    this.g.getUnknown().put(hVar.f38124i.f36849e, jsonObjectA);
                }
                com.networkbench.agent.impl.data.f fVar = this.f38051a;
                if (fVar != null && fVar.h() != null) {
                    this.f38051a.h().put(hVar.f38124i.f36849e, jsonObjectA);
                }
            }
        }
        Harvest.addHttpErrorForScene(this.f38051a);
        Harvest.addHttpTransaction(this.g);
    }

    public com.networkbench.agent.impl.data.f b() {
        return this.f38051a;
    }
}
