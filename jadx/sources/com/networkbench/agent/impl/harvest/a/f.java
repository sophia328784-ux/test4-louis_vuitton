package com.networkbench.agent.impl.harvest.a;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.util.ak;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes2.dex */
public class f extends h {
    public f(String str, boolean z) {
        super(str, z);
        b("ControllerDataUrl");
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public String a() {
        return a("/ctl/optimus?version=" + NBSAgent.getVersion() + "&token=" + com.networkbench.agent.impl.util.r.u().K());
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public void b(HttpURLConnection httpURLConnection) {
        httpURLConnection.addRequestProperty("X-Tingyun-Resource", ak.n());
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public com.networkbench.agent.impl.harvest.d.c a(String str, com.networkbench.agent.impl.harvest.d.c cVar) {
        cVar.d(str);
        try {
            cVar.a(str);
        } catch (Exception e2) {
            this.d.a("controller parseResult error", e2);
        }
        return super.a(str, cVar);
    }
}
