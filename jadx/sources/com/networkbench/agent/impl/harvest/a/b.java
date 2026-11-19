package com.networkbench.agent.impl.harvest.a;

import android.text.TextUtils;
import com.networkbench.agent.impl.NBSAgent;
import java.text.MessageFormat;

/* JADX INFO: loaded from: classes2.dex */
public class b extends g {
    public b(String str, boolean z) {
        super(str, z);
        b("AnrDataUrl");
    }

    @Override // com.networkbench.agent.impl.harvest.a.g, com.networkbench.agent.impl.harvest.a.h
    public String a() {
        return TextUtils.isEmpty(com.networkbench.agent.impl.util.r.u().K()) ? MessageFormat.format("{0}?version={1}", a("/reportAnr"), NBSAgent.getHttpDataVersion()) : MessageFormat.format("{0}?version={1}&token={2}", a("/reportAnr"), NBSAgent.getHttpDataVersion(), com.networkbench.agent.impl.util.r.u().K());
    }

    @Override // com.networkbench.agent.impl.harvest.a.g, com.networkbench.agent.impl.harvest.a.h
    public com.networkbench.agent.impl.harvest.d.c a(String str, com.networkbench.agent.impl.harvest.d.c cVar) {
        try {
            cVar.a(str);
        } catch (Throwable unused) {
        }
        return super.a(str, cVar);
    }
}
