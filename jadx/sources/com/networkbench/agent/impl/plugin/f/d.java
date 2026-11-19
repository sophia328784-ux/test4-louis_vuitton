package com.networkbench.agent.impl.plugin.f;

import com.networkbench.agent.impl.harvest.ActionData;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.util.ak;

/* JADX INFO: loaded from: classes2.dex */
public class d extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ActionData f38052a;

    public d(ActionData actionData) {
        super(com.networkbench.agent.impl.plugin.e.after_net);
        this.f38052a = actionData;
        a(ConfigurationName.REQUEST_HEADERS, actionData.requestHeaderParam);
        a(ConfigurationName.RESPONSE_HEADERS, actionData.responseHeaderParam);
        a(ConfigurationName.PLUGIN_HOSTNAME_CONTEXT, ak.n(actionData.getUrl()));
        a(ConfigurationName.PORT, Integer.valueOf(ak.o(actionData.getUrl())));
    }

    @Override // com.networkbench.agent.impl.plugin.f.i
    public void a() {
        ActionData actionData;
        com.networkbench.agent.impl.c.g.e("NetworkScene completeSceneData :--------");
        for (com.networkbench.agent.impl.plugin.h hVar : this.f38062b) {
            if (hVar.l && hVar.f38124i.a() && (actionData = this.f38052a) != null && actionData.getUnknown() != null) {
                this.f38052a.getUnknown().put(hVar.f38124i.f36849e, f.a(hVar));
            }
        }
        Harvest.addHttpTransactionForScene(this.f38052a);
    }
}
