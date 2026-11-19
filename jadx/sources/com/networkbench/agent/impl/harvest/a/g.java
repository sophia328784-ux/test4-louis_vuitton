package com.networkbench.agent.impl.harvest.a;

import android.text.TextUtils;
import com.networkbench.agent.impl.NBSAgent;
import java.net.HttpURLConnection;
import java.text.MessageFormat;

/* JADX INFO: loaded from: classes2.dex */
public class g extends h {
    public g(String str, boolean z) {
        super(str, z);
        b("CrashDataUrl");
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public String a() {
        return TextUtils.isEmpty(com.networkbench.agent.impl.util.r.u().K()) ? MessageFormat.format("{0}?version={1}", a("/reportCrash"), NBSAgent.getHttpDataVersion()) : MessageFormat.format("{0}?version={1}&token={2}", a("/reportCrash"), NBSAgent.getHttpDataVersion(), com.networkbench.agent.impl.util.r.u().K());
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public void b(HttpURLConnection httpURLConnection) {
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public com.networkbench.agent.impl.harvest.d.c a(String str, com.networkbench.agent.impl.harvest.d.c cVar) {
        try {
            cVar.a(str);
        } catch (Throwable unused) {
        }
        return super.a(str, cVar);
    }
}
