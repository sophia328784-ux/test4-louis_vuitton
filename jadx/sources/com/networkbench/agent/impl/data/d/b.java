package com.networkbench.agent.impl.data.d;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f36859a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, c> f36860b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f36861c = new a();

    private b() {
    }

    public static synchronized b a() {
        try {
            if (f36859a == null) {
                f36859a = new b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f36859a;
    }

    public void b(d dVar) {
        this.f36861c.a(dVar, true);
    }

    public c c() {
        return new c(this.f36861c);
    }

    public c b() {
        return this.f36861c;
    }

    public void a(d dVar) {
        this.f36861c.a(dVar, false);
    }

    public void a(c cVar) {
        this.f36861c = new c(cVar);
    }

    public void a(String str, long j2) {
        this.f36861c.a(str, j2);
    }

    public synchronized void a(String str, c cVar) {
        this.f36860b.put(str, cVar);
    }

    public synchronized c a(String str) {
        return this.f36860b.get(str);
    }
}
