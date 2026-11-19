package com.networkbench.agent.impl.performance.a.b.a;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static boolean a(com.networkbench.agent.impl.performance.a.a.b bVar, double d) {
        long jA = com.networkbench.agent.impl.performance.a.e.a.a();
        if (jA <= 0) {
            return d > bVar.d;
        }
        return d > bVar.d || (d * 100.0d) / ((double) jA) >= 80.0d;
    }
}
