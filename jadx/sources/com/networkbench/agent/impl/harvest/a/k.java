package com.networkbench.agent.impl.harvest.a;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.util.ak;
import java.net.HttpURLConnection;
import java.text.MessageFormat;

/* JADX INFO: loaded from: classes2.dex */
public class k extends h {
    public k(String str, boolean z) {
        super(str, z);
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public com.networkbench.agent.impl.harvest.d.c a(String str, com.networkbench.agent.impl.harvest.d.c cVar) {
        cVar.d(str);
        try {
            cVar.a(str);
        } catch (Exception unused) {
            this.d.e("LogTaskUrl error parse result:" + str);
        }
        return super.a(str, cVar);
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public void b(HttpURLConnection httpURLConnection) {
        httpURLConnection.addRequestProperty("X-Tingyun-Resource", ak.n());
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public String a() {
        return MessageFormat.format("{0}?version={1}&token={2}", a("/reportLogTaskData"), NBSAgent.getHttpDataVersion(), com.networkbench.agent.impl.util.r.u().K());
    }
}
