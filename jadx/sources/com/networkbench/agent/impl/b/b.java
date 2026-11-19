package com.networkbench.agent.impl.b;

/* JADX INFO: loaded from: classes2.dex */
public class b extends h.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f36481b = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private g f36482c;
    private boolean d;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final b f36483a = new b();

        private a() {
        }
    }

    private b() {
        this.d = true;
        this.f36482c = new c();
    }

    public static b a() {
        return a.f36483a;
    }

    public g b() {
        return this.f36482c;
    }

    @Override // com.networkbench.agent.impl.b.h.a
    public boolean c() {
        return this.d;
    }

    @Override // com.networkbench.agent.impl.b.h.a
    public void d() {
        super.d();
        this.f36482c.a(System.currentTimeMillis());
    }

    @Override // com.networkbench.agent.impl.b.h.a
    public void e() {
        super.e();
        this.f36482c.b();
    }
}
