package com.networkbench.agent.impl.data.type;

import com.networkbench.agent.impl.instrumentation.NBSTraceEngine;
import com.networkbench.agent.impl.instrumentation.NBSTraceUnit;
import com.networkbench.agent.impl.util.Logger;
import defpackage.d21;

/* JADX INFO: loaded from: classes2.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f36993a = "PageTrace";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected com.networkbench.agent.impl.asyncaction.r f36994e = com.networkbench.agent.impl.asyncaction.r.b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected p f36995f;

    public p a() {
        if (!d()) {
            return null;
        }
        Logger.debug(f36993a, "pageOnResumeEndIns invoke in ".concat(getClass().getSimpleName()));
        p pVar = this.f36995f;
        if (pVar != null && pVar.p()) {
            Logger.debug(f36993a, "pageOnResumeBeginIns" + getClass().getSimpleName() + " pageTraceMetric is complete");
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        NBSTraceEngine.exitMethodWithTime(jCurrentTimeMillis);
        this.f36994e.a(this.f36995f, jCurrentTimeMillis);
        if (!com.networkbench.agent.impl.i.d.a().d() && com.networkbench.agent.impl.util.r.u().ai() && com.networkbench.agent.impl.util.r.u().aK()) {
            com.networkbench.agent.impl.i.f.a().a(com.networkbench.agent.impl.data.d.b.a().b().a(), this.f36995f);
        } else {
            p pVar2 = this.f36995f;
            if (pVar2 != null) {
                pVar2.a(com.networkbench.agent.impl.i.d.a().d());
            }
        }
        return this.f36995f;
    }

    public void b(String str, r rVar) {
        if (d()) {
            NBSTraceEngine.enterMethod(d21.j(str, "#onStart"), SlowStartState.SegmentType.OTHER.getValue(), rVar);
        }
    }

    public void c() {
        if (d()) {
            NBSTraceEngine.exitMethod();
        }
    }

    public boolean d() {
        return com.networkbench.agent.impl.util.r.u().ai();
    }

    public void b() {
        if (d()) {
            NBSTraceEngine.exitMethod();
        }
    }

    public p a(NBSTraceUnit nBSTraceUnit, String str) {
        return new p(nBSTraceUnit);
    }

    public void a(String str, r rVar) {
        if (d()) {
            p pVar = this.f36995f;
            if (pVar != null && pVar.p()) {
                Logger.debug(f36993a, "pageOnResumeBeginIns" + getClass().getSimpleName() + "pageTraceMetric is complete");
                return;
            }
            NBSTraceEngine.enterMethod(d21.j(str, "#onResume"), SlowStartState.SegmentType.OTHER.getValue(), rVar);
        }
    }

    public void a(String str, String str2, r rVar) {
        if (d()) {
            com.networkbench.agent.impl.data.d.b.a().b().a(com.networkbench.agent.impl.data.a.b.f36766a.a(str), System.currentTimeMillis());
            com.networkbench.agent.impl.data.d.b.a().a(str, com.networkbench.agent.impl.data.d.b.a().c());
            long jCurrentTimeMillis = System.currentTimeMillis();
            NBSTraceUnit nBSTraceUnit = new NBSTraceUnit(jCurrentTimeMillis);
            nBSTraceUnit.metricName = SlowStartState.UEType.pageLoading.name();
            nBSTraceUnit.className = str;
            this.f36995f = a(nBSTraceUnit, str);
            com.networkbench.agent.impl.asyncaction.r rVarB = com.networkbench.agent.impl.asyncaction.r.b();
            this.f36994e = rVarB;
            if (this instanceof a) {
                nBSTraceUnit.unitType = r.ACTIVITY_ROOT_UNIT;
            } else if (this instanceof j) {
                nBSTraceUnit.unitType = r.FRAGMENT_ROOT_UNIT;
            }
            rVarB.a(this.f36995f);
            NBSTraceEngine.enterMethodWithTime(str + str2, SlowStartState.SegmentType.OTHER.getValue(), rVar, jCurrentTimeMillis);
            if (com.networkbench.agent.impl.util.r.u().aK()) {
                com.networkbench.agent.impl.i.f.a().a(com.networkbench.agent.impl.data.d.b.a().b().a());
            }
        }
    }

    public void a(String str) {
        this.f36995f.a(str);
    }
}
