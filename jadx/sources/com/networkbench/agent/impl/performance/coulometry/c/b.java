package com.networkbench.agent.impl.performance.coulometry.c;

import android.os.IBinder;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class b implements InvocationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Object f37888a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    g f37889b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    IBinder f37890c;

    public b(IBinder iBinder, Class<?> cls, g gVar, IBinder iBinder2) {
        this.f37889b = gVar;
        this.f37890c = iBinder2;
        try {
            this.f37888a = cls.getDeclaredMethod("asInterface", IBinder.class).invoke(null, iBinder);
        } catch (Throwable unused) {
        }
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        if (this.f37890c != null && method.getName().equals("asBinder")) {
            return this.f37890c;
        }
        this.f37889b.a(method, objArr);
        return method.invoke(this.f37888a, objArr);
    }
}
