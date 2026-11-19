package com.networkbench.agent.impl.asyncaction;

import com.networkbench.agent.impl.instrumentation.MetricEventListener;
import com.networkbench.agent.impl.instrumentation.NBSUnit;
import com.networkbench.agent.impl.util.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class NBSRunnableHandler implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f36401a = "NBSRunnableHandler";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private NBSUnit f36402b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private MetricEventListener f36403c;
    private q d;

    public NBSRunnableHandler(q qVar) {
        this.d = qVar;
        NBSUnit nBSUnitE = qVar.e();
        this.f36402b = nBSUnitE;
        if (nBSUnitE == null) {
            Logger.warning(f36401a, "error root trace is null, please check");
        }
        try {
            this.f36403c = qVar.c();
        } catch (f unused) {
            Logger.warning(f36401a, "error metricEventListener is set, please check");
        }
    }

    private void a() {
        if (this.f36402b != null) {
            Logger.debug(f36401a, "runnable handler push rootTrac:" + this.f36402b.metricName);
            this.d.a(this.f36402b);
            MetricEventListener metricEventListener = this.f36403c;
            if (metricEventListener != null) {
                this.d.a(metricEventListener);
            }
        }
    }

    @Override // com.networkbench.agent.impl.asyncaction.d
    public void preMethod() {
        Logger.debug(f36401a, "preMethod invoke");
        if (a(Thread.currentThread())) {
            Logger.debug(f36401a, "preMethod invoke in rootUnit same thread, skip");
        } else {
            a();
        }
    }

    @Override // com.networkbench.agent.impl.asyncaction.d
    public void sufMethod() {
        Logger.debug(f36401a, "sufMethod invoke");
        if (a(Thread.currentThread())) {
            Logger.debug(f36401a, "sufMethod invoke in rootUnit same thread, skip");
        } else if (this.f36402b != null) {
            this.d.f();
            this.f36402b = null;
            this.f36403c = null;
        }
    }

    public boolean a(Thread thread) {
        NBSUnit nBSUnit = this.f36402b;
        return nBSUnit != null && thread != null && nBSUnit.threadId == thread.getId() && this.f36402b.threadName.equals(thread.getName());
    }
}
