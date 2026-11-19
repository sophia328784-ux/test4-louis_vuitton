package com.networkbench.agent.impl.plugin.f;

import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.b.k;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.util.r;

/* JADX INFO: loaded from: classes2.dex */
public class a extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f38048a;
    private k g;

    public a(k kVar, boolean z) {
        super(com.networkbench.agent.impl.plugin.e.after_anr);
        this.f38048a = z;
        this.g = kVar;
    }

    @Override // com.networkbench.agent.impl.plugin.f.i
    public void a() {
        for (com.networkbench.agent.impl.plugin.h hVar : this.f38062b) {
            if (hVar.l && hVar.f38124i.a()) {
                this.g.a().put(hVar.f38124i.f36849e, f.a(hVar));
            }
        }
        try {
            Harvest.getInstance().getHarvestData().blockInfos.add(this.g);
            if (r.u().aC()) {
                NBSAppAgent.debugLog(this.g.toJsonString(), "TingyunSDK_anr");
            }
        } catch (Throwable unused) {
        }
    }
}
