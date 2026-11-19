package com.networkbench.agent.impl.c;

/* JADX INFO: loaded from: classes2.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f36562a = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f36563b = 3;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f36564c = 4;
    public static final int d = 5;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f36565e = 6;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f36566f = 7;
    private static i g = new i();

    private h() {
    }

    public static void a(l lVar) {
        g.a((l) c.b(lVar));
    }

    public static void b(String str, Object... objArr) {
        g.a(null, str, objArr);
    }

    public static void c(String str, Object... objArr) {
        g.e(str, objArr);
    }

    public static void b(String str) {
        g.b(str);
    }

    public static void a(i iVar) {
        g = (i) c.b(iVar);
    }

    public static i a(String str) {
        return g.a(str);
    }

    public static void a(int i2, String str, String str2, Throwable th) {
        g.a(i2, str, str2, th);
    }

    public static void a(String str, Object... objArr) {
        g.a(str, objArr);
    }

    public static void a(Object obj) {
        g.a(obj);
    }

    public static void a(Throwable th, String str, Object... objArr) {
        g.a(th, str, objArr);
    }
}
