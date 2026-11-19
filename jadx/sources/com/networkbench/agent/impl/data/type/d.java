package com.networkbench.agent.impl.data.type;

import android.content.Context;
import android.text.TextUtils;
import com.networkbench.agent.impl.NBSLogger;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.af;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f36946b = "AppLaunchConfig";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile d f36947c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f36948a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.networkbench.agent.impl.util.c f36950f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f36949e = false;
    private boolean d = true;

    public d(com.networkbench.agent.impl.util.c cVar) {
        this.f36950f = cVar;
    }

    private void b(af afVar) {
        if (!afVar.f()) {
            afVar.d(2);
            return;
        }
        int i2 = afVar.i();
        com.networkbench.agent.impl.c.g.p("saveSdkEnabled   enabledInt : " + i2);
        if (i2 != 0) {
            afVar.d(2);
        }
    }

    private void c(af afVar) {
        int i2 = afVar.i();
        if (i2 == 1) {
            com.networkbench.agent.impl.util.r.u().d(true);
            com.networkbench.agent.impl.util.r.u().c(afVar.O());
            com.networkbench.agent.impl.c.g.p("冷启动 ,enabledInt = 1  , setModuleSwitch :  " + afVar.O());
            afVar.a(0);
            com.networkbench.agent.impl.util.r.u().e(afVar.j());
            return;
        }
        com.networkbench.agent.impl.util.r.u().c(0);
        com.networkbench.agent.impl.util.r.u().e(0);
        com.networkbench.agent.impl.c.g.p("冷启动 ,enabledInt : " + i2 + ", setModuleSwitch :  ");
        com.networkbench.agent.impl.harvest.b.b.a().a(false);
        if (i2 == 2) {
            com.networkbench.agent.impl.harvest.b.b.a().a(true);
        }
    }

    public void a(af afVar) {
        try {
            com.networkbench.agent.impl.util.r.u().b(System.currentTimeMillis() / 1000);
            com.networkbench.agent.impl.util.r.u().f(afVar.c());
            com.networkbench.agent.impl.b.h.b(afVar.d());
            afVar.l();
            if (!com.networkbench.agent.impl.harvest.b.a.a().a(com.networkbench.agent.impl.harvest.b.a.d)) {
                com.networkbench.agent.impl.harvest.b.b.a().e(0);
            }
            if (a(afVar.g())) {
                Logger.debug(f36946b, "isRealFirstRuning true");
                this.d = true;
                this.f36949e = true;
                if (this.f36950f.c() && !afVar.f()) {
                    com.networkbench.agent.impl.util.r.u().c(524287);
                    Logger.debug(f36946b, "first launch, debug model,set opt value 511");
                }
                com.networkbench.agent.impl.harvest.b.b.a().e(2);
                com.networkbench.agent.impl.harvest.b.b.a().f();
                if (this.f36950f.d()) {
                    b(afVar);
                }
                f.f36952a.a(f.a.FIRST_RUN);
            } else {
                Logger.debug(f36946b, "isRealFirstRuning false");
                if (this.f36950f.d()) {
                    c(afVar);
                    b(afVar);
                } else {
                    if (!TextUtils.isEmpty(ConfigurationName.processName)) {
                        c(afVar);
                    }
                    this.f36948a = afVar.q();
                }
                this.d = com.networkbench.agent.impl.util.r.u().af();
                com.networkbench.agent.impl.harvest.b.b.a().e();
            }
            com.networkbench.agent.impl.util.r.u().l(afVar.q());
            if (a(afVar.g())) {
                f.f36952a.a(f.a.FIRST_RUN);
            } else {
                f.f36952a.a(f.a.COLD_RUN);
            }
            if (!com.networkbench.agent.impl.util.r.u().ag()) {
                Logger.debug(f36946b, "isLogModuleEnabled false, skip init log track");
            } else {
                Logger.debug(f36946b, "begin initLogTrack");
                NBSLogger.initLogTrack(com.networkbench.agent.impl.util.r.u().J(), afVar.b());
            }
        } catch (Throwable th) {
            Logger.error(f36946b, "sdkConfig error:", th);
        }
    }

    public boolean b() {
        return this.f36949e;
    }

    public com.networkbench.agent.impl.util.c c() {
        return this.f36950f;
    }

    private boolean a(int i2, int i3) {
        return i2 != i3;
    }

    public static d a(Context context) {
        d dVar;
        d dVar2 = f36947c;
        if (f36947c != null) {
            return dVar2;
        }
        synchronized (d.class) {
            try {
                dVar = f36947c;
                if (dVar == null) {
                    dVar = new d(new com.networkbench.agent.impl.util.c(context));
                    f36947c = dVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return dVar;
    }

    public boolean a() {
        return this.d;
    }

    private boolean a(int i2) {
        return i2 == -1;
    }
}
