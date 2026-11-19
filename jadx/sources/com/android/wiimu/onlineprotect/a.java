package com.android.wiimu.onlineprotect;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static ConcurrentHashMap<String, String> f22462c = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f22463a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f22464b;

    private void a() {
        b bVar = new b();
        this.f22464b = bVar;
        bVar.setDaemon(true);
        this.f22464b.start();
    }

    private void b() {
        c cVar = new c();
        this.f22463a = cVar;
        cVar.setDaemon(true);
        this.f22463a.start();
    }

    private void d() {
        b bVar = this.f22464b;
        if (bVar != null) {
            bVar.e();
        }
    }

    private void e() {
        c cVar = this.f22463a;
        if (cVar != null) {
            cVar.c();
            this.f22463a = null;
        }
    }

    public void c() {
        b();
    }

    public void f() {
        e();
    }
}
