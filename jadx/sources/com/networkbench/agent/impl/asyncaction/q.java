package com.networkbench.agent.impl.asyncaction;

import com.networkbench.agent.impl.instrumentation.MetricEventListener;
import com.networkbench.agent.impl.instrumentation.NBSTraceUnit;
import com.networkbench.agent.impl.instrumentation.NBSUnit;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ak;
import java.util.Stack;

/* JADX INFO: loaded from: classes2.dex */
public class q {
    private static final String d = "TraceEngineAdapter";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static q f36437e = new q();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final p f36438a = new p();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Stack<NBSUnit> f36439b = new Stack<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f36440c = "";

    private NBSUnit a(com.networkbench.agent.impl.data.type.r rVar, String str) {
        NBSUnit nBSUnitA;
        NBSUnit nBSUnitI;
        if (a(rVar) && (nBSUnitI = i()) != null) {
            Logger.debug(d, "get activityRoot for unitType:" + rVar);
            return nBSUnitI;
        }
        if (b(rVar) && (nBSUnitA = a(str)) != null) {
            return nBSUnitA;
        }
        NBSUnit nBSUnitB = this.f36438a.b();
        NBSUnit nBSUnitPeek = this.f36439b.size() > 0 ? this.f36439b.peek() : null;
        if (nBSUnitB == null && nBSUnitPeek != null) {
            return nBSUnitPeek;
        }
        if (nBSUnitPeek == null || nBSUnitB == null || nBSUnitPeek.entryTimestamp <= nBSUnitB.entryTimestamp) {
            return nBSUnitB;
        }
        Logger.debug(d, "find rootUnit is near then context trace");
        return nBSUnitPeek;
    }

    private NBSUnit i() {
        Logger.debug(d, "rootUnits.size():" + this.f36439b.size());
        NBSUnit nBSUnit = null;
        if (this.f36439b.size() > 0) {
            for (NBSUnit nBSUnit2 : this.f36439b) {
                if (nBSUnit2 != null && nBSUnit2.unitType == com.networkbench.agent.impl.data.type.r.ACTIVITY_ROOT_UNIT) {
                    nBSUnit = nBSUnit2;
                }
            }
        }
        if (nBSUnit != null) {
            Logger.debug(d, "result unitType:" + nBSUnit.unitType);
        }
        return nBSUnit;
    }

    public boolean b(NBSTraceUnit nBSTraceUnit) {
        Logger.debug(d, "rootUnits remove:" + nBSTraceUnit.hashCode());
        this.f36439b.remove(nBSTraceUnit);
        return this.f36438a.b(nBSTraceUnit);
    }

    public MetricEventListener c() throws f {
        if (this.f36438a.c() != null) {
            return this.f36438a.c();
        }
        throw new f("current metric listener is empty");
    }

    public NBSUnit d() {
        NBSUnit nBSUnitB = this.f36438a.b();
        if (nBSUnitB == null) {
            return null;
        }
        this.f36438a.a();
        return nBSUnitB;
    }

    public NBSUnit e() {
        return this.f36438a.b();
    }

    public void f() {
        this.f36438a.a();
    }

    public int g() {
        return this.f36438a.e();
    }

    public void h() {
        this.f36439b.clear();
        this.f36438a.d();
    }

    public String b() {
        if (ak.r(this.f36440c)) {
            return "";
        }
        return this.f36440c;
    }

    private boolean b(com.networkbench.agent.impl.data.type.r rVar) {
        return rVar == com.networkbench.agent.impl.data.type.r.FRAGMENT_ONRESUME || rVar == com.networkbench.agent.impl.data.type.r.FRAGMENT_ONSTART;
    }

    public void a(NBSTraceUnit nBSTraceUnit) {
        this.f36440c = nBSTraceUnit.className;
        NBSUnit nBSUnitA = a(nBSTraceUnit.unitType, nBSTraceUnit.metricName);
        if (nBSUnitA != null) {
            nBSTraceUnit.parentUUID = nBSUnitA.myUUID;
            nBSUnitA.addChild(nBSTraceUnit);
        }
        this.f36438a.a(nBSTraceUnit);
        this.f36439b.add(nBSTraceUnit);
        Logger.debug(d, "rootUnits add:" + nBSTraceUnit.hashCode() + ", roots size is " + this.f36439b.size());
    }

    public NBSTraceUnit a(String str, int i2, com.networkbench.agent.impl.data.type.r rVar) {
        NBSUnit nBSUnitA = a(rVar, str);
        if (nBSUnitA == null) {
            return null;
        }
        NBSTraceUnit nBSTraceUnit = new NBSTraceUnit(str, i2, a(nBSUnitA.threadId), System.currentTimeMillis());
        nBSTraceUnit.parentUUID = nBSUnitA.myUUID;
        nBSTraceUnit.unitType = rVar;
        nBSUnitA.addChild(nBSTraceUnit);
        this.f36438a.a((NBSUnit) nBSTraceUnit);
        return nBSTraceUnit;
    }

    public static q a() {
        return f36437e;
    }

    private NBSUnit a(String str) {
        Logger.debug(d, "rootUnits.size():" + this.f36439b.size());
        NBSUnit nBSUnit = null;
        if (this.f36439b.size() > 0) {
            for (NBSUnit nBSUnit2 : this.f36439b) {
                if (nBSUnit2 != null && nBSUnit2.unitType == com.networkbench.agent.impl.data.type.r.FRAGMENT_ROOT_UNIT && nBSUnit2.ifEqualsMetricName(str)) {
                    nBSUnit = nBSUnit2;
                }
            }
        }
        if (nBSUnit != null) {
            Logger.debug(d, "result unitType:" + nBSUnit.unitType);
        }
        return nBSUnit;
    }

    private boolean a(com.networkbench.agent.impl.data.type.r rVar) {
        return rVar == com.networkbench.agent.impl.data.type.r.ACTIVITY_ONCREATE || rVar == com.networkbench.agent.impl.data.type.r.ACTIVITY_ONSTART || rVar == com.networkbench.agent.impl.data.type.r.ACTIVITY_ONRESUME || rVar == com.networkbench.agent.impl.data.type.r.ACTIVITY_ONRESTART;
    }

    public void a(MetricEventListener metricEventListener) {
        this.f36438a.a(metricEventListener);
    }

    private int a(long j2) {
        return j2 == Thread.currentThread().getId() ? 1 : 2;
    }

    public void a(NBSUnit nBSUnit) {
        this.f36438a.a(nBSUnit);
    }
}
