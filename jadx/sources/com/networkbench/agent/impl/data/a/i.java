package com.networkbench.agent.impl.data.a;

import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.util.r;

/* JADX INFO: loaded from: classes2.dex */
public class i extends com.networkbench.agent.impl.data.b.a {
    public i() {
        this.f36837b = "userActions";
        this.f36838c = "actions";
        this.d = "userAction";
    }

    public void a(g gVar) {
        try {
            if (r.u().aC()) {
                NBSAppAgent.debugLog(gVar.toJsonString(), "TingyunSDK_userAction");
            }
            if (gVar.e() >= 18000) {
                return;
            }
            if (this.f36836a.size() >= Harvest.getInstance().getConfiguration().getUserActions()) {
                this.f36836a.remove(0);
            }
            this.f36836a.add(gVar);
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.j("NBSEventActions add() has an error : " + th);
        }
    }
}
