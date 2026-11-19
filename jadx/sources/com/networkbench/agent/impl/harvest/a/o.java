package com.networkbench.agent.impl.harvest.a;

/* JADX INFO: loaded from: classes2.dex */
public class o extends a {
    public o(String str, boolean z) {
        super(str, z);
        b("ResourceHostUrl");
    }

    @Override // com.networkbench.agent.impl.harvest.a.a, com.networkbench.agent.impl.harvest.a.h
    public String a() {
        return a("/getMobileResourceHost");
    }
}
