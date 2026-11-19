package com.networkbench.agent.impl.harvest.a;

import com.networkbench.agent.impl.NBSAgent;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes2.dex */
public class t extends h {
    public t(String str, boolean z) {
        super(str, z);
        b("UserProfileUrl");
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public String a() {
        return a("/setUserProfile?version=" + NBSAgent.getHttpDataVersion() + "&token=" + com.networkbench.agent.impl.util.r.u().K());
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public void b(HttpURLConnection httpURLConnection) {
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public com.networkbench.agent.impl.harvest.d.c a(String str, com.networkbench.agent.impl.harvest.d.c cVar) {
        cVar.b(str);
        try {
            cVar.a(str);
        } catch (Exception unused) {
        }
        return super.a(str, cVar);
    }
}
