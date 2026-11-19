package com.networkbench.agent.impl.data.type;

import com.networkbench.agent.impl.util.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f36973a = "CustomAppLaunch";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private g f36974b;

    public i(g gVar) {
        this.f36974b = gVar;
    }

    public void a(long j2) {
        if (this.f36974b != null) {
            Logger.debug(f36973a, "customAppLaunchEnd invoked");
            this.f36974b.a(j2);
            com.networkbench.agent.impl.asyncaction.a.b.f36406a.a(this.f36974b);
        }
    }
}
