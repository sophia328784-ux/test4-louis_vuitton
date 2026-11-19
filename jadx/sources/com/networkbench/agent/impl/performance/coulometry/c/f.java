package com.networkbench.agent.impl.performance.coulometry.c;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected a f37917a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Context f37918b;

    public f(Context context, com.networkbench.agent.impl.performance.coulometry.b.b bVar) {
        this.f37918b = context;
        this.f37917a = a(bVar);
        b();
    }

    public a a() {
        return this.f37917a;
    }

    public abstract a a(com.networkbench.agent.impl.performance.coulometry.b.b bVar);

    public abstract void b();
}
