package com.networkbench.agent.impl.plugin.g.a;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f38098a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f38099b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f38100c;
    private final a d;

    public interface a {
        void a(C0108b c0108b);
    }

    /* JADX INFO: renamed from: com.networkbench.agent.impl.plugin.g.a.b$b, reason: collision with other inner class name */
    public static class C0108b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f38101a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f38102b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final com.networkbench.agent.impl.plugin.g.a.a.c[] f38103c;
        public final String d;

        private C0108b(int i2, int i3, com.networkbench.agent.impl.plugin.g.a.a.c[] cVarArr, String str) {
            this.f38101a = i2;
            this.f38102b = i3;
            this.f38103c = cVarArr;
            this.d = str;
        }
    }

    private b(String str, String str2, c cVar, a aVar) {
        this.f38098a = str;
        this.f38099b = str2;
        this.f38100c = cVar;
        this.d = aVar;
    }

    private void a() {
        try {
            if (this.f38099b == null) {
                this.d.a(new C0108b(-1, 0, null, "dns has an error ."));
                return;
            }
            this.f38100c.a("nslookup " + this.f38098a + " @" + this.f38099b);
            try {
                com.networkbench.agent.impl.plugin.g.a.a.d dVar = new com.networkbench.agent.impl.plugin.g.a.a.d(InetAddress.getByName(this.f38099b));
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    com.networkbench.agent.impl.plugin.g.a.a.c[] cVarArrA = dVar.a(this.f38098a);
                    long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                    for (com.networkbench.agent.impl.plugin.g.a.a.c cVar : cVarArrA) {
                        this.f38100c.a(cVar.toString());
                    }
                    this.d.a(new C0108b(0, (int) jCurrentTimeMillis2, cVarArrA, com.networkbench.agent.impl.plugin.g.a.a.b.a(com.networkbench.agent.impl.plugin.g.a.a.b.f38080a.ordinal())));
                } catch (IOException e2) {
                    String message = e2.getMessage();
                    e2.printStackTrace();
                    if (message == null) {
                        message = e2.toString();
                    }
                    this.d.a(new C0108b(-3, 0, null, message));
                }
            } catch (UnknownHostException e3) {
                C0108b c0108b = new C0108b(-1, 0, null, "nslookup server invalid : " + e3.getMessage());
                this.f38100c.a("nslookup server invalid");
                this.d.a(c0108b);
            }
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.b("NsLookup run has an error , ", th);
        }
    }

    public static void a(String str, String str2, c cVar, a aVar) {
        String[] strArrA;
        if (str2 == null && (strArrA = com.networkbench.agent.impl.plugin.g.a.a.a()) != null) {
            str2 = strArrA[0];
        }
        new b(str, str2, cVar, aVar).a();
    }

    public static void a(String str, c cVar, a aVar) {
        a(str, null, cVar, aVar);
    }
}
