package com.networkbench.agent.impl.performance.coulometry.c;

import android.os.IBinder;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* JADX INFO: loaded from: classes2.dex */
public class c implements InvocationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    IBinder f37894a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public IBinder f37895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Class<?> f37896c;
    Class<?> d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private g f37897e;

    public c(IBinder iBinder, g gVar) {
        this.f37894a = iBinder;
        this.f37897e = gVar;
        try {
            this.f37896c = Class.forName(gVar.e() + "$Stub");
            this.d = Class.forName(gVar.e());
        } catch (ClassNotFoundException unused) {
        }
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        return "queryLocalInterface".equals(method.getName()) ? Proxy.newProxyInstance(obj.getClass().getClassLoader(), new Class[]{this.d}, new b(this.f37894a, this.f37896c, this.f37897e, this.f37895b)) : method.invoke(this.f37894a, objArr);
    }
}
