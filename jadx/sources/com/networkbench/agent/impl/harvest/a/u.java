package com.networkbench.agent.impl.harvest.a;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.util.ak;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes2.dex */
public class u extends h {
    public u(String str, boolean z) {
        super(str, z);
        b("uploadReplay");
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public String a() {
        return a("/uploadReplay?version=" + NBSAgent.getHttpDataVersion() + "&token=" + com.networkbench.agent.impl.util.r.u().K());
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public void b(HttpURLConnection httpURLConnection) {
        httpURLConnection.setRequestProperty("Content-Type", "application/octet-stream");
        httpURLConnection.addRequestProperty("X-Tingyun-Resource", ak.n());
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public com.networkbench.agent.impl.harvest.d.c a(String str, com.networkbench.agent.impl.harvest.d.c cVar) {
        cVar.d(str);
        try {
            cVar.a(str);
        } catch (Exception e2) {
            this.d.a("error parseResult in VideoCaptureDataUrl", e2);
        }
        return super.a(str, cVar);
    }
}
