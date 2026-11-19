package com.networkbench.agent.impl.d;

import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.util.v;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final com.networkbench.agent.impl.d.a.b f36739e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final com.networkbench.agent.impl.d.a.a f36740f;
    private static final com.networkbench.agent.impl.d.c.e g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final com.networkbench.agent.impl.d.a.e f36741h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f36742i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f36737b = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final c f36736a = new c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final com.networkbench.agent.impl.d.c.a f36738c = new com.networkbench.agent.impl.d.c.a();
    private static final com.networkbench.agent.impl.d.c.d d = new com.networkbench.agent.impl.d.c.d();

    static {
        com.networkbench.agent.impl.d.a.b bVar = new com.networkbench.agent.impl.d.a.b();
        f36739e = bVar;
        com.networkbench.agent.impl.d.a.a aVar = new com.networkbench.agent.impl.d.a.a();
        f36740f = aVar;
        g = new com.networkbench.agent.impl.d.c.e();
        f36741h = new com.networkbench.agent.impl.d.a.e(aVar, bVar);
        f36742i = true;
    }

    public static void a() {
        f36737b.a("Measurement Engine initialized.");
        ai.c();
        c cVar = f36736a;
        cVar.a(f36738c);
        cVar.a(d);
        com.networkbench.agent.impl.d.a.b bVar = f36739e;
        cVar.a(bVar);
        com.networkbench.agent.impl.d.a.a aVar = f36740f;
        cVar.a(aVar);
        cVar.a(g);
        com.networkbench.agent.impl.d.a.e eVar = f36741h;
        cVar.a(eVar);
        Harvest.addHarvestListener(aVar);
        Harvest.addHarvestListener(bVar);
        Harvest.addHarvestListener(eVar);
    }

    public static void b() {
        ai.d();
        f36737b.a("Measurement Engine shutting down.");
        c cVar = f36736a;
        cVar.b(f36738c);
        cVar.b(d);
        cVar.b(f36739e);
        cVar.b(f36740f);
        cVar.b(g);
        cVar.b(f36741h);
    }

    public static void c() {
        f36736a.a();
    }

    private static void d() {
        if (f36742i) {
            c();
        }
    }

    public static void a(com.networkbench.agent.impl.d.b.a aVar) {
        if (aVar != null && !v.d(aVar.f())) {
            d.a(aVar);
            d();
        } else {
            f36737b.e("TransactionMeasurement is null or hosname isNewlensHostName ");
        }
    }

    public static void a(com.networkbench.agent.impl.d.b.c cVar) {
        if (cVar == null) {
            f36737b.e("TransactionData is null. HttpError measurement not created.");
        } else {
            if (cVar.c()) {
                return;
            }
            g.a(cVar);
        }
    }

    public static void a(boolean z) {
        f36742i = z;
    }
}
