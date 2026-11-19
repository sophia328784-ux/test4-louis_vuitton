package com.networkbench.agent.impl.harvest.a;

import com.linkplay.medialib.server.HttpServer;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.util.ak;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes2.dex */
public class d extends h {
    public d(String str, boolean z) {
        super(str, z);
        b("CollectorDataUrl");
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public String a() {
        return a("/reportBatchData?version=" + NBSAgent.getHttpDataVersion() + "&token=" + com.networkbench.agent.impl.util.r.u().K());
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public void b(HttpURLConnection httpURLConnection) {
        httpURLConnection.setRequestProperty("Content-Type", HttpServer.MIME_PLAINTEXT);
        httpURLConnection.addRequestProperty("X-Tingyun-Resource", ak.n());
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public com.networkbench.agent.impl.harvest.d.c b() {
        return new com.networkbench.agent.impl.harvest.d.a();
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public com.networkbench.agent.impl.harvest.d.c a(String str, com.networkbench.agent.impl.harvest.d.c cVar) {
        cVar.d(str);
        try {
            cVar.a(str);
        } catch (Exception unused) {
        }
        return super.a(str, cVar);
    }
}
