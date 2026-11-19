package com.networkbench.agent.impl.d.c;

import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class a extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f36722a = f.a();

    public a() {
        super(com.networkbench.agent.impl.d.f.HttpError);
    }

    public void a(NBSTransactionState nBSTransactionState, String str, Map<String, Object> map, String str2) {
        a(new com.networkbench.agent.impl.d.b.b(nBSTransactionState, str, map, str2));
    }
}
