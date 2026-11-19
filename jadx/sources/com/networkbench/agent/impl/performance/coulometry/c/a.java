package com.networkbench.agent.impl.performance.coulometry.c;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Map<String, e> f37883a = new HashMap(10);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected ConcurrentHashMap<Integer, d> f37884b = new ConcurrentHashMap<>();

    public a() {
        b();
    }

    public e a(Method method) {
        if (method != null) {
            return this.f37883a.get(method.getName());
        }
        return null;
    }

    public abstract void b();

    public ConcurrentHashMap<Integer, d> a() {
        return this.f37884b;
    }
}
