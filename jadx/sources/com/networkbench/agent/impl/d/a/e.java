package com.networkbench.agent.impl.d.a;

import com.linkplay.network.SecurityConstants;
import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.harvest.ActionData;
import com.networkbench.agent.impl.harvest.NetworkPerfMetrics;
import com.networkbench.agent.impl.plugin.f.h;
import com.networkbench.agent.impl.util.r;
import defpackage.z81;

/* JADX INFO: loaded from: classes2.dex */
public class e extends d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f36702c = f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f36703a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f36704b;

    public e(a aVar, b bVar) {
        super(com.networkbench.agent.impl.d.f.MixNetwork);
        this.f36703a = aVar;
        this.f36704b = bVar;
    }

    @Override // com.networkbench.agent.impl.d.a.d, com.networkbench.agent.impl.d.a.c
    public void a(com.networkbench.agent.impl.d.a aVar) {
        super.a(aVar);
        if (aVar instanceof com.networkbench.agent.impl.d.b.c) {
            com.networkbench.agent.impl.d.b.c cVar = (com.networkbench.agent.impl.d.b.c) aVar;
            if (!h.f38056b || cVar.e() == null) {
                a(cVar);
                return;
            }
            f36702c.a("enter TransactionStateMeasurementConsumer after_error scene");
            ActionData actionDataA = this.f36703a.a(cVar.d());
            com.networkbench.agent.impl.data.f fVar = new com.networkbench.agent.impl.data.f(cVar.e());
            actionDataA.setErrorInfo(fVar.m(), fVar.e());
            try {
                if (r.u().aC()) {
                    NetworkPerfMetrics networkPerfMetrics = new NetworkPerfMetrics();
                    networkPerfMetrics.getActionDatas().add(actionDataA);
                    networkPerfMetrics.getErrorDatas().a(fVar);
                    NBSAppAgent.debugLog(networkPerfMetrics.asJsonObject().toString(), "TingyunSDK_network");
                }
            } catch (Throwable th) {
                z81.k(new StringBuilder("addNetwork error debuglog has error :"), th);
            }
            if (!fVar.j().startsWith(SecurityConstants.SECURITY_NONE)) {
                a(cVar);
                return;
            }
            com.networkbench.agent.impl.plugin.f.c cVar2 = new com.networkbench.agent.impl.plugin.f.c(actionDataA, fVar);
            h.a(cVar2);
            cVar2.d();
        }
    }

    public void a(com.networkbench.agent.impl.d.b.c cVar) {
        f36702c.a("not NetworkErrorScene");
        com.networkbench.agent.impl.d.b.a aVarD = cVar.d();
        com.networkbench.agent.impl.d.b.b bVarE = cVar.e();
        if (cVar.e() != null) {
            this.f36704b.a(bVarE);
            com.networkbench.agent.impl.data.f fVar = new com.networkbench.agent.impl.data.f(bVarE);
            aVarD.a(fVar.m(), fVar.e());
        }
        this.f36703a.a((com.networkbench.agent.impl.d.a) aVarD);
    }
}
