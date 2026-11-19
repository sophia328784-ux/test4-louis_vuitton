package com.networkbench.agent.impl.performance.a.b.b;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class c implements com.networkbench.agent.impl.performance.a.d.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f37649a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f37650b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private g f37651c;
    private a d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.networkbench.agent.impl.performance.a.a.a f37652e;

    private c(Context context, com.networkbench.agent.impl.performance.a.a.a aVar) {
        Context applicationContext = context.getApplicationContext();
        this.f37650b = applicationContext;
        this.f37652e = aVar == null ? com.networkbench.agent.impl.performance.a.a.a.f37613a : aVar;
        this.f37651c = new g(applicationContext, this);
        this.d = new a(this);
    }

    @Override // com.networkbench.agent.impl.performance.a.d.e
    public final boolean a(float f2) {
        if (this.d.a()) {
            return f2 >= this.f37652e.f37614b;
        }
        com.networkbench.agent.impl.c.g.z("isAbnormalProcess false, cpuSpeed " + f2 + ", not sample environment");
        return false;
    }

    @Override // com.networkbench.agent.impl.performance.a.d.e
    public final com.networkbench.agent.impl.performance.a.a.a b() {
        return this.f37652e;
    }

    @Override // com.networkbench.agent.impl.performance.a.d.e
    public final com.networkbench.agent.impl.performance.a.c.e c() {
        return null;
    }

    @Override // com.networkbench.agent.impl.performance.a.d.e
    public final void d() {
        com.networkbench.agent.impl.c.g.z("AssistStatImp stop");
    }

    @Override // com.networkbench.agent.impl.performance.a.d.e
    public final boolean e() {
        return this.d.a();
    }

    @Override // com.networkbench.agent.impl.performance.a.d.e
    public final com.networkbench.agent.impl.performance.a.c.d f() {
        return new com.networkbench.agent.impl.performance.a.c.d();
    }

    private c(Context context) {
        this(context, com.networkbench.agent.impl.performance.a.a.a.f37613a);
    }

    @Override // com.networkbench.agent.impl.performance.a.d.e
    public final com.networkbench.agent.impl.performance.a.d.e a() {
        com.networkbench.agent.impl.c.g.z("AssistStatImp start");
        this.f37651c.a();
        return this;
    }

    public static c a(Context context) {
        if (f37649a == null) {
            synchronized (c.class) {
                try {
                    if (f37649a == null) {
                        f37649a = new c(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f37649a;
    }
}
