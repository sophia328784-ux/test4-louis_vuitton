package com.networkbench.agent.impl.data;

import android.os.Looper;
import com.networkbench.agent.impl.instrumentation.NBSUnit;
import com.networkbench.agent.impl.instrumentation.TraceStack;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ThreadLocal<NBSUnit> f36890a = new ThreadLocal<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ThreadLocal<TraceStack<NBSUnit>> f36891b = new ThreadLocal<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private NBSUnit f36892c;

    private TraceStack g() {
        TraceStack<NBSUnit> traceStack = this.f36891b.get();
        return traceStack == null ? new TraceStack() : traceStack;
    }

    public void a(NBSUnit nBSUnit, Boolean bool) {
        if (nBSUnit == null || g() == null) {
            return;
        }
        this.f36891b.set(g());
        if (g().isEmpty() || g().peek() != nBSUnit) {
            g().push(nBSUnit);
        }
        this.f36890a.set(nBSUnit);
        if (bool.booleanValue()) {
            this.f36892c = nBSUnit;
        }
    }

    public void b() {
        this.f36890a.remove();
        if (this.f36891b.get() != null) {
            this.f36891b.get().pop();
        }
        c();
    }

    public void c() {
        if (this.f36891b.get() == null || this.f36891b.get().isEmpty()) {
            this.f36890a.set(null);
            return;
        }
        NBSUnit nBSUnitPeek = this.f36891b.get().peek();
        this.f36890a.set(nBSUnitPeek);
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f36892c = nBSUnitPeek;
        }
    }

    public NBSUnit d() {
        return this.f36890a.get();
    }

    public int e() {
        return this.f36891b.get().size();
    }

    public void f() {
        this.f36890a.remove();
        if (this.f36891b.get() != null) {
            this.f36891b.get().clear();
        }
    }

    public NBSUnit a() {
        return this.f36892c;
    }
}
