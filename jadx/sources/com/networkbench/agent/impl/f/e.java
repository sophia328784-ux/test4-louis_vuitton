package com.networkbench.agent.impl.f;

import android.content.Context;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.performance.coulometry.CoulometryModuleWrapper;
import com.networkbench.agent.impl.util.r;
import defpackage.z81;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f37015a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static e f37016b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f37017c = "com.networkbench.agent.impl.coulometry.CoulometryModuleWrapper";
    private Map<String, d> d = new ConcurrentHashMap();

    private e() {
    }

    public void a(Context context, com.networkbench.agent.impl.c.e eVar, int i2, com.networkbench.agent.impl.harvest.a.a.c cVar) {
        try {
            if ((r.u().aA().a() || r.u().aA().c()) && r.p == 0) {
                g.p("begin init battery module");
                CoulometryModuleWrapper.getInstance().initModule(context, eVar, r.u().aD(), i2);
            }
            if (r.u().aA().x() && r.p == 0) {
                com.networkbench.agent.impl.performance.a.c.b().initModule(context, null, r.u().aI(), 0);
            }
            if (r.u().aA().y() && r.p == 0) {
                com.networkbench.agent.impl.performance.b.d.a().initModule(context, null, null, 0);
            }
        } catch (Throwable th) {
            z81.k(new StringBuilder("init module error:"), th);
        }
    }

    public void b() {
        try {
            if (r.u().aA().x() && r.p == 0) {
                g.p("begin init CpuModule module Restart");
                com.networkbench.agent.impl.performance.a.c.b().harvestRestart();
            }
            if ((r.u().aA().a() || r.u().aA().c()) && r.p == 0) {
                g.p("begin init battery module Restart");
                CoulometryModuleWrapper.getInstance().harvestRestart();
            }
            if (r.u().aA().y() && r.p == 0) {
                g.p("begin init fps module Restart");
                com.networkbench.agent.impl.performance.b.d.a().harvestRestart();
            }
        } catch (Throwable th) {
            g.a("NBSModuleManager harvestRestart error:" + th.getMessage(), th);
        }
    }

    public void c() {
        try {
            com.networkbench.agent.impl.performance.a.c.b().harvestStop();
        } catch (Throwable th) {
            g.a("CpuModuleWrapper harvestStop error:" + th.getMessage(), th);
        }
        try {
            CoulometryModuleWrapper.getInstance().harvestStop();
        } catch (Throwable th2) {
            g.a("CoulometryModuleWrapper harvestStop error:" + th2.getMessage(), th2);
        }
        try {
            com.networkbench.agent.impl.performance.b.d.a().harvestStop();
        } catch (Throwable th3) {
            g.a("FpsModuleWrapper harvestStop error:" + th3.getMessage(), th3);
        }
    }

    public String a(String str) {
        str.getClass();
        switch (str) {
            case "nbs_module_cpu":
                return com.networkbench.agent.impl.performance.a.c.b().getModuleData();
            case "nbs_module_fps":
                return com.networkbench.agent.impl.performance.b.d.a().getModuleData();
            case "nbs_module_coulometry":
                return CoulometryModuleWrapper.getInstance().getModuleData();
            default:
                return "";
        }
    }

    public static e a() {
        if (f37016b == null) {
            synchronized (e.class) {
                try {
                    if (f37016b == null) {
                        f37016b = new e();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f37016b;
    }
}
