package com.networkbench.agent.impl.data.type;

import android.content.Context;
import com.networkbench.agent.impl.instrumentation.NBSTraceEngine;
import com.networkbench.agent.impl.instrumentation.NBSTraceUnit;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.af;
import com.networkbench.agent.impl.util.ak;
import defpackage.n00;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f36934a = "AppColdLaunch";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f36935b = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static b f36936c = new b();
    private d d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.networkbench.agent.impl.asyncaction.r f36937e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private p f36938f;
    private Context g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f36940i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f36941j = false;
    private int m = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f36939h = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f36942k = false;
    private boolean l = false;
    private i o = null;
    private boolean n = false;

    public void a(Context context) {
        af afVar = new af(context);
        com.networkbench.agent.impl.util.r.u().a(context);
        if (System.currentTimeMillis() < afVar.Q()) {
            Logger.debug(f36934a, "attachBaseContextBeginIns sdk disable!");
            return;
        }
        d dVarA = d.a(context);
        this.d = dVarA;
        this.l = true;
        this.g = context;
        if (this.f36941j) {
            return;
        }
        dVarA.a(afVar);
        boolean zA = this.d.a();
        this.f36939h = zA;
        if (!zA) {
            f36935b.f("ui is disable, skip app trace monitor");
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        a(jCurrentTimeMillis);
        NBSTraceEngine.enterMethodWithTime(n00.r(context.getApplicationInfo().className, "#attachBaseContext", new StringBuilder()), SlowStartState.SegmentType.OTHER.getValue(), r.APPLICATION_ATTACH_BASE_CONTEXT, jCurrentTimeMillis);
    }

    public void b(long j2) {
        if (!this.f36939h) {
            f36935b.f("ui is disable, skip appLaunchStop");
            this.f36942k = true;
            return;
        }
        if (this.f36942k) {
            return;
        }
        com.networkbench.agent.impl.asyncaction.r rVar = this.f36937e;
        if (rVar == null) {
            Logger.error(f36934a, "nbsSlowStartEngine is not init, please check if application is exist");
            return;
        }
        rVar.a(this.f36938f, j2);
        this.f36942k = true;
        int iA = f.f36952a.a();
        if (!f.f36952a.c()) {
            Logger.warning(f36934a, "error launch phase is wrong, appPhase:" + iA);
            iA = f.a.COLD_RUN.a();
        }
        g gVar = new g(iA, this.f36938f, this.f36937e.a());
        if (this.n) {
            this.o = new i(gVar);
        } else {
            com.networkbench.agent.impl.asyncaction.a.b.f36406a.a(gVar);
        }
        com.networkbench.agent.impl.asyncaction.r.b().a();
        this.f36937e = null;
        this.f36938f = null;
    }

    public void c(long j2) {
        i iVar = this.o;
        if (iVar != null && this.n && !this.f36940i) {
            iVar.a(j2);
            this.f36940i = true;
            return;
        }
        Logger.debug(f36934a, "customAppLaunchEnd isCustomLaunchApiSet:" + this.n + ", complete:" + this.f36940i);
        this.n = false;
    }

    public void d() {
        if (this.f36939h) {
            NBSTraceEngine.exitMethod();
        }
    }

    public String e() {
        if (this.d == null) {
            Logger.debug(f36934a, "this.launchConfig is null");
            return "";
        }
        Logger.debug(f36934a, "this.launchConfig.deviceId is " + this.d.f36948a);
        return this.d.f36948a;
    }

    public boolean f() {
        return this.l;
    }

    public int g() {
        return this.m;
    }

    public void h() {
        this.m = 0;
    }

    public boolean i() {
        d dVar = this.d;
        if (dVar == null) {
            return false;
        }
        return dVar.b();
    }

    public void c() {
        if (this.f36939h) {
            NBSTraceEngine.enterMethod(n00.r(this.g.getApplicationInfo().className, "#onCreate", new StringBuilder()), SlowStartState.SegmentType.OTHER.getValue(), r.APPLICATION_ONCREATE);
        }
    }

    public void a(boolean z) {
        this.f36942k = z;
    }

    public static b a() {
        return f36936c;
    }

    public void a(long j2) {
        com.networkbench.agent.impl.asyncaction.r rVarB = com.networkbench.agent.impl.asyncaction.r.b();
        this.f36937e = rVarB;
        rVarB.a(new UUID(ak.a().nextLong(), ak.a().nextLong()).toString().replace("-", ""));
        NBSTraceUnit nBSTraceUnit = new NBSTraceUnit(j2);
        nBSTraceUnit.metricName = SlowStartState.UEType.appstart.name();
        nBSTraceUnit.unitType = r.APP_COLD_LAUNCH_ROOT_UNIT;
        p pVar = new p(nBSTraceUnit);
        this.f36938f = pVar;
        this.f36937e.a(pVar);
    }

    public void b() {
        if (!this.f36941j) {
            if (!this.f36939h) {
                return;
            } else {
                NBSTraceEngine.exitMethod();
            }
        }
        this.f36941j = true;
    }

    public void b(Context context) {
        if (this.g == null) {
            this.g = context;
        }
        d dVarA = d.a(context);
        this.d = dVarA;
        dVarA.a(new af(context));
    }

    public void b(boolean z) {
        this.n = z;
    }
}
