package com.networkbench.agent.impl.asyncaction;

import com.networkbench.agent.impl.instrumentation.MetricEventListener;
import com.networkbench.agent.impl.instrumentation.NBSTraceUnit;
import com.networkbench.agent.impl.instrumentation.NBSUnit;
import com.networkbench.agent.impl.instrumentation.TraceStack;
import com.networkbench.agent.impl.util.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class p {
    private static final String d = "TraceEngine";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected ThreadLocal<NBSUnit> f36433a = new ThreadLocal<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected ThreadLocal<TraceStack<NBSUnit>> f36434b = new ThreadLocal<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected ThreadLocal<MetricEventListener> f36435c = new ThreadLocal<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f36436e = 0;

    private boolean f() {
        return this.f36436e == 0;
    }

    private TraceStack g() {
        TraceStack<NBSUnit> traceStack = this.f36434b.get();
        return traceStack == null ? new TraceStack() : traceStack;
    }

    private void h() {
        if (this.f36434b.get() == null || this.f36434b.get().isEmpty()) {
            this.f36433a.set(null);
        } else {
            this.f36433a.set(this.f36434b.get().peek());
        }
    }

    public void a() {
        this.f36433a.remove();
        if (this.f36434b.get() != null) {
            if (this.f36434b.get().isEmpty()) {
                Logger.error(d, "traceStackThreadLocal is empty, please check");
            } else {
                this.f36434b.get().pop();
            }
        }
        h();
    }

    public boolean b(NBSTraceUnit nBSTraceUnit) {
        this.f36436e--;
        if (nBSTraceUnit.shouldPushPop) {
            a();
        }
        if (f()) {
            d();
            return true;
        }
        Logger.debug(d, "rootUnit is not equals real rootUnitTrace, skip end");
        return false;
    }

    public MetricEventListener c() {
        return this.f36435c.get();
    }

    public void d() {
        this.f36433a.remove();
        if (this.f36434b.get() != null) {
            this.f36434b.get().clear();
        }
        this.f36435c.remove();
    }

    public int e() {
        if (this.f36434b.get() != null) {
            return this.f36434b.get().size();
        }
        return 0;
    }

    public NBSUnit b() {
        return this.f36433a.get();
    }

    public void a(NBSUnit nBSUnit) {
        if (nBSUnit == null) {
            Logger.warning(d, "traceEngine pushTraceContext unit is null, please check");
            return;
        }
        TraceStack<NBSUnit> traceStackG = g();
        if (traceStackG == null) {
            Logger.warning(d, "trace stack is null, please check");
            return;
        }
        this.f36434b.set(traceStackG);
        if (traceStackG.isEmpty() || traceStackG.peek() != nBSUnit) {
            traceStackG.push(nBSUnit);
        }
        this.f36433a.set(nBSUnit);
    }

    public void a(NBSTraceUnit nBSTraceUnit) {
        nBSTraceUnit.isRootUnit = true;
        if (nBSTraceUnit.shouldPushPop) {
            a((NBSUnit) nBSTraceUnit);
        }
        this.f36436e++;
    }

    public void a(MetricEventListener metricEventListener) {
        this.f36435c.set(metricEventListener);
    }
}
