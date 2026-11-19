package com.networkbench.agent.impl.util.b;

import com.networkbench.agent.impl.c.g;
import defpackage.md;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f38349a = "ReflectFiled";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Class<?> f38350b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f38351c;
    private boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Method f38352e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Class[] f38353f;

    public b(Class<?> cls, String str, Class<?>... clsArr) {
        if (cls == null || str == null || str.length() == 0) {
            md.n("Both of invoker and fieldName can not be null or nil.");
            throw null;
        }
        this.f38350b = cls;
        this.f38351c = str;
        this.f38353f = clsArr;
    }

    public synchronized <T> T a(Object obj, boolean z, Object... objArr) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException, InvocationTargetException {
        a();
        Method method = this.f38352e;
        if (method != null) {
            return (T) method.invoke(obj, objArr);
        }
        if (z) {
            g.p("Field %s is no exists : " + this.f38351c);
            return null;
        }
        throw new NoSuchFieldException("Method " + this.f38351c + " is not exists.");
    }

    public synchronized <T> T b(Object obj, Object... objArr) {
        try {
            try {
                try {
                    return (T) a(obj, true, objArr);
                } catch (IllegalAccessException e2) {
                    g.a("invokeWithoutThrow, exception occur :%s", e2);
                    return null;
                }
            } catch (InvocationTargetException e3) {
                g.a("invokeWithoutThrow, exception occur :%s", e3);
                return null;
            }
        } catch (IllegalArgumentException e4) {
            g.a("invokeWithoutThrow, exception occur :%s", e4);
            return null;
        } catch (NoSuchFieldException e5) {
            g.a("invokeWithoutThrow, exception occur :%s", e5);
            return null;
        }
    }

    public synchronized <T> T a(Object obj, Object... objArr) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException, InvocationTargetException {
        return (T) a(obj, false, objArr);
    }

    private synchronized void a() {
        if (this.d) {
            return;
        }
        for (Class<?> superclass = this.f38350b; superclass != null; superclass = superclass.getSuperclass()) {
            try {
                Method declaredMethod = superclass.getDeclaredMethod(this.f38351c, this.f38353f);
                declaredMethod.setAccessible(true);
                this.f38352e = declaredMethod;
                break;
            } catch (Exception unused) {
            }
        }
        this.d = true;
    }
}
