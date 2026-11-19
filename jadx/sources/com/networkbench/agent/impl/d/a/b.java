package com.networkbench.agent.impl.d.a;

import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.d.f;
import com.networkbench.agent.impl.data.g;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.NetworkPerfMetrics;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.v;
import defpackage.z81;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class b extends d {
    public b() {
        super(f.HttpError);
    }

    @Override // com.networkbench.agent.impl.d.a.d, com.networkbench.agent.impl.d.a.c
    public void a(com.networkbench.agent.impl.d.a aVar) {
        com.networkbench.agent.impl.data.f fVar = new com.networkbench.agent.impl.data.f((com.networkbench.agent.impl.d.b.b) aVar);
        Harvest.addHttpErrorForScene(fVar);
        try {
            if (r.u().aC()) {
                NetworkPerfMetrics networkPerfMetrics = new NetworkPerfMetrics();
                networkPerfMetrics.getErrorDatas().a(fVar);
                NBSAppAgent.debugLog(networkPerfMetrics.asJsonObject().toString(), "TingyunSDK_network");
            }
        } catch (Throwable th) {
            z81.k(new StringBuilder("addNetwork error debuglog has error :"), th);
        }
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestAdapter, com.networkbench.agent.impl.harvest.HarvestLifecycleAware
    public void onHarvestFilter() {
        g httpErrors = Harvest.getInstance().getHarvestData().getHttpErrors();
        if (httpErrors != null) {
            ArrayList arrayList = new ArrayList();
            for (com.networkbench.agent.impl.data.f fVar : httpErrors.b()) {
                if (v.e(fVar.j()) || v.a(fVar.k(), fVar.j())) {
                    arrayList.add(fVar);
                }
                if (!v.c(fVar.k())) {
                    com.networkbench.agent.impl.c.g.g(" NBSNetworkUtil.isError :  此条数据不为error 特此删除 : " + fVar.toString());
                    arrayList.add(fVar);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                httpErrors.b((com.networkbench.agent.impl.data.f) it.next());
            }
        }
    }
}
