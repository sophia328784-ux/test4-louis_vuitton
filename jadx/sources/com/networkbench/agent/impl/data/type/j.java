package com.networkbench.agent.impl.data.type;

import com.networkbench.agent.impl.instrumentation.NBSTraceEngine;
import com.networkbench.agent.impl.instrumentation.NBSTraceUnit;
import com.networkbench.agent.impl.util.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class j extends q {
    private static final String g = "FragmentTrace";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public k f36975a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public k f36976b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public k f36977c;
    public m d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f36978h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f36979i;

    public j() {
        e();
    }

    private void e() {
        this.d = new m();
        this.f36975a = new k();
        this.f36976b = new k();
        this.f36977c = new k();
        a(true);
    }

    private void f() {
        this.f36975a.b();
        this.f36976b.b();
        this.f36977c.b();
    }

    @Override // com.networkbench.agent.impl.data.type.q
    public p a() {
        if (!this.f36977c.a()) {
            return null;
        }
        p pVarA = super.a();
        f();
        return pVarA;
    }

    @Override // com.networkbench.agent.impl.data.type.q
    public void b(String str, r rVar) {
        if (com.networkbench.agent.impl.util.r.u().ai()) {
            this.f36978h = str;
            if (this.f36976b.a()) {
                if (this.f36979i) {
                    super.b(str, rVar);
                    return;
                }
                Logger.debug(g, "fragment start is not from onCreateView, so get newest traceEngineManager");
                this.f36994e = com.networkbench.agent.impl.asyncaction.r.b();
                com.networkbench.agent.impl.data.d.b.a().b().a(com.networkbench.agent.impl.data.a.b.f36766a.a(str), System.currentTimeMillis());
                com.networkbench.agent.impl.data.d.b.a().a(str, com.networkbench.agent.impl.data.d.b.a().c());
                long jCurrentTimeMillis = System.currentTimeMillis();
                NBSTraceUnit nBSTraceUnit = new NBSTraceUnit(jCurrentTimeMillis);
                nBSTraceUnit.metricName = SlowStartState.UEType.pageLoading.name();
                nBSTraceUnit.className = str;
                nBSTraceUnit.unitType = r.FRAGMENT_ROOT_UNIT;
                p pVarA = a(nBSTraceUnit, str);
                this.f36995f = pVarA;
                this.f36994e.a(pVarA);
                NBSTraceEngine.enterMethodWithTime(str + "#onStart", SlowStartState.SegmentType.OTHER.getValue(), rVar, jCurrentTimeMillis);
            }
        }
    }

    @Override // com.networkbench.agent.impl.data.type.q
    public void c() {
        if (this.f36976b.a()) {
            super.c();
        }
    }

    @Override // com.networkbench.agent.impl.data.type.q
    public void a(String str, String str2, r rVar) {
        if (this.f36975a.a()) {
            super.a(str, str2, rVar);
        }
        this.f36978h = str;
    }

    @Override // com.networkbench.agent.impl.data.type.q
    public void a(String str, r rVar) {
        if (this.f36977c.a()) {
            super.a(str, rVar);
        }
    }

    public void a(boolean z) {
        this.f36979i = z;
    }

    @Override // com.networkbench.agent.impl.data.type.q
    public void b() {
        if (this.f36975a.a()) {
            super.b();
        }
    }
}
