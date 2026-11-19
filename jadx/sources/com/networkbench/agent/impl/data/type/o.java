package com.networkbench.agent.impl.data.type;

/* JADX INFO: loaded from: classes2.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f36986a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f36987b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f36988c = false;

    private void e() {
        this.f36986a = false;
        this.f36987b = false;
        this.f36988c = false;
    }

    public void a() {
        this.f36986a = true;
    }

    public void b() {
        this.f36987b = true;
    }

    public void c() {
        this.f36988c = true;
        e();
    }

    public boolean d() {
        return this.f36986a;
    }
}
