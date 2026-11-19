package com.batch.android.m;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f23689b = "DI";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static a f23690c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Map<Class<?>, Object> f23691a = new HashMap();

    private a() {
    }

    public static a b() {
        if (f23690c == null) {
            f23690c = new a();
        }
        return f23690c;
    }

    public static void c() {
        a aVar = f23690c;
        if (aVar != null) {
            aVar.a();
        }
    }

    public synchronized <T> T a(Class<T> cls) {
        if (!this.f23691a.containsKey(cls)) {
            return null;
        }
        return (T) this.f23691a.get(cls);
    }

    private void a() {
        this.f23691a.clear();
    }

    public synchronized <T> void a(Class<T> cls, T t) {
        this.f23691a.put(cls, t);
    }
}
