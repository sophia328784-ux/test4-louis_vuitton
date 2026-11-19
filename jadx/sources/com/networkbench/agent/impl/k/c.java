package com.networkbench.agent.impl.k;

import java.util.concurrent.LinkedBlockingDeque;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static LinkedBlockingDeque<com.networkbench.agent.impl.data.a.c> f37426a = new LinkedBlockingDeque<>();

    public static com.networkbench.agent.impl.data.a.c a() {
        return f37426a.peekFirst();
    }

    public static void b(com.networkbench.agent.impl.data.a.c cVar) {
        f37426a.remove(cVar);
    }

    public static void a(com.networkbench.agent.impl.data.a.c cVar) {
        f37426a.addFirst(cVar);
    }
}
