package com.networkbench.agent.impl.harvest.a;

import com.networkbench.agent.impl.harvest.InitUrlConnection;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes2.dex */
public class a extends h {
    public a(String str, boolean z) {
        super(str, z);
        b("ActionSelectUrl");
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public com.networkbench.agent.impl.harvest.d.c a(String str, com.networkbench.agent.impl.harvest.d.c cVar) {
        cVar.b(str);
        try {
            cVar.a(str);
        } catch (Throwable th) {
            this.d.a("ActionSelectUrl get response error", th);
        }
        return super.a(str, cVar);
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public void b(HttpURLConnection httpURLConnection) {
        httpURLConnection.setRequestProperty("Content-Type", InitUrlConnection.CONTENT_TYPE_VALUE);
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public String a() {
        return a("/getMobileAPIHost");
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public HttpURLConnection a(HttpURLConnection httpURLConnection) {
        return httpURLConnection;
    }
}
