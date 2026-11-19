package com.networkbench.agent.impl.asyncaction;

import android.os.Looper;
import com.networkbench.agent.impl.instrumentation.MetricEventListener;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.instrumentation.NBSUnit;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class r implements MetricEventListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f36441c = "TraceEngineManager";
    private static final int d = 50;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile r f36442e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected List<e> f36443a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected q f36444b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f36445f;
    private com.networkbench.agent.impl.data.a.a g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f36446h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f36447i;

    public r(q qVar) {
        this.f36447i = false;
        this.f36446h = "";
        this.f36443a = new CopyOnWriteArrayList();
        this.f36444b = qVar;
        f36442e = this;
        this.f36445f = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(NBSUnit nBSUnit, List<e> list) {
        for (e eVar : list) {
            if (eVar.b(nBSUnit.myUUID)) {
                eVar.b(nBSUnit);
            }
        }
    }

    private boolean c(e eVar) {
        return eVar.b() != null && System.currentTimeMillis() - eVar.b().entryTimestamp > 200000;
    }

    public static void g() {
        r rVar = f36442e;
        if (rVar == null) {
            return;
        }
        rVar.j();
    }

    private boolean i() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    private void j() {
        ArrayList<e> arrayList = new ArrayList();
        arrayList.addAll(this.f36443a);
        ArrayList arrayList2 = new ArrayList();
        for (e eVar : arrayList) {
            if (eVar.c() && c(eVar)) {
                arrayList2.add(eVar);
            }
        }
        this.f36443a.removeAll(arrayList2);
    }

    public void a(e eVar) {
        this.f36444b.a(this);
        this.f36444b.a(eVar.b());
        Iterator<e> it = this.f36443a.iterator();
        while (it.hasNext()) {
            it.next().b(eVar.b());
        }
        if (this.f36443a.size() >= 50) {
            Logger.debug(f36441c, "current traceMetrics is overflow, skip");
        } else {
            this.f36443a.add(eVar);
        }
    }

    @Override // com.networkbench.agent.impl.instrumentation.MetricEventListener
    public void addNetworkToTraces(NBSTransactionState nBSTransactionState, NBSUnit nBSUnit) {
        if (nBSUnit == null) {
            Logger.warning(f36441c, "addNetworkToTraces error currentUnit == null");
            return;
        }
        nBSUnit.complete();
        ArrayList<e> arrayList = new ArrayList();
        arrayList.addAll(this.f36443a);
        for (e eVar : arrayList) {
            if (eVar.b(nBSUnit.myUUID)) {
                eVar.a(nBSUnit, nBSTransactionState);
            }
        }
    }

    public q d() {
        return this.f36444b;
    }

    public void e() {
        Logger.debug(f36441c, "traceEngineManager reset data");
        for (e eVar : this.f36443a) {
            if (!eVar.c()) {
                Logger.debug(f36441c, "not complete trace metrics is " + eVar.hashCode());
                eVar.a(System.currentTimeMillis());
            }
        }
        this.f36447i = true;
        this.f36444b.h();
        f36442e = null;
    }

    @Override // com.networkbench.agent.impl.instrumentation.MetricEventListener
    public void enterMethod(final NBSUnit nBSUnit) {
        if (nBSUnit == null) {
            Logger.debug(f36441c, "new unit is null");
            return;
        }
        final ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f36443a);
        if (i()) {
            com.networkbench.agent.impl.util.c.a.b().a(new y() { // from class: com.networkbench.agent.impl.asyncaction.r.1
                @Override // com.networkbench.agent.impl.util.y
                public void tryCatchRun() {
                    try {
                        r.this.a(nBSUnit, (List<e>) arrayList);
                    } catch (Throwable th) {
                        Logger.error(r.f36441c, "addTraceInEnterMethod", th);
                    }
                }
            });
        } else {
            a(nBSUnit, arrayList);
        }
    }

    @Override // com.networkbench.agent.impl.instrumentation.MetricEventListener
    public void exitMethod(final NBSUnit nBSUnit) {
        try {
            if (nBSUnit == null) {
                Logger.debug(f36441c, "current trace is null");
                return;
            }
            nBSUnit.complete();
            final ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.f36443a);
            if (i()) {
                com.networkbench.agent.impl.util.c.a.b().a(new y() { // from class: com.networkbench.agent.impl.asyncaction.r.2
                    @Override // com.networkbench.agent.impl.util.y
                    public void tryCatchRun() {
                        r.this.b(nBSUnit, arrayList);
                    }
                });
            } else {
                b(nBSUnit, arrayList);
            }
        } catch (Throwable th) {
            Logger.error(f36441c, "error exitMethod", th);
        }
    }

    @Override // com.networkbench.agent.impl.instrumentation.MetricEventListener
    public void exitMethodCustom(String str, NBSUnit nBSUnit) {
        if (str == null || !a(nBSUnit)) {
            Logger.debug(f36441c, "custom trace name is wrong");
            return;
        }
        if (nBSUnit == null || !str.equals(nBSUnit.metricName)) {
            Logger.debug(f36441c, "drop current unit from context");
            return;
        }
        nBSUnit.complete();
        ArrayList<e> arrayList = new ArrayList();
        arrayList.addAll(this.f36443a);
        for (e eVar : arrayList) {
            if (eVar.b(nBSUnit.myUUID)) {
                Logger.debug(f36441c, "exitMethodCustom traceMetrics addCompletedTrace:" + nBSUnit.myUUID + ", hashCode:" + eVar.hashCode());
                eVar.b(nBSUnit);
            }
        }
    }

    public boolean f() {
        return this.f36447i;
    }

    @Override // com.networkbench.agent.impl.instrumentation.MetricEventListener
    public long getStartTime() {
        return this.f36445f;
    }

    public com.networkbench.agent.impl.data.a.a h() {
        return this.g;
    }

    public r() {
        this(q.a());
    }

    public static r c() {
        return f36442e;
    }

    public static r b() {
        r rVar;
        r rVar2 = f36442e;
        if (rVar2 != null) {
            return rVar2;
        }
        synchronized (r.class) {
            try {
                rVar = f36442e;
                if (rVar == null) {
                    rVar = new r();
                    f36442e = rVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return rVar;
    }

    public void b(e eVar) {
        if (eVar == null || !this.f36443a.contains(eVar)) {
            return;
        }
        this.f36443a.remove(eVar);
    }

    public String a() {
        return this.f36446h;
    }

    public void a(String str) {
        this.f36446h = str;
    }

    public void a(e eVar, long j2) {
        if (eVar == null) {
            Logger.error(f36441c, "traceMetrics is null, please check");
            return;
        }
        Logger.debug(f36441c, "endSegment traceMetrics.hashCode:" + eVar.hashCode());
        eVar.a(j2);
        if (this.f36444b.b(eVar.b())) {
            Logger.debug(f36441c, "endSegment success");
            this.f36447i = true;
            f36442e = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(NBSUnit nBSUnit, List<e> list) {
        for (e eVar : list) {
            if (eVar.b(nBSUnit.parentUUID)) {
                eVar.a(nBSUnit);
            }
        }
    }

    public boolean a(NBSUnit nBSUnit) {
        return nBSUnit != null && nBSUnit.metricName.startsWith(com.networkbench.agent.impl.util.r.y);
    }

    public void a(com.networkbench.agent.impl.data.a.a aVar) {
        this.g = aVar;
    }
}
