package com.networkbench.agent.impl.harvest.a;

import com.networkbench.agent.impl.NBSAgent;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes2.dex */
public class p extends h {
    public p(String str, boolean z) {
        super(str, z);
        b("TransactionSpanUrl");
    }

    private String d() {
        return a("/reportSpanData?version=" + NBSAgent.getTaskDataVersion() + "&token=" + com.networkbench.agent.impl.util.r.u().K());
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public com.networkbench.agent.impl.harvest.d.c a(String str, com.networkbench.agent.impl.harvest.d.c cVar) {
        cVar.d(str);
        try {
            this.d.a("TransactionSpanUrl response body is:" + str);
            cVar.a(str);
        } catch (Exception e2) {
            this.d.a("error parseResult in TransactionSpanUrl", e2);
        }
        return super.a(str, cVar);
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public void b(HttpURLConnection httpURLConnection) {
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public String a() {
        return d();
    }
}
