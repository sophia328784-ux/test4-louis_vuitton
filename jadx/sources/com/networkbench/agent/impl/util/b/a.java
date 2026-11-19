package com.networkbench.agent.impl.util.b;

import com.networkbench.agent.impl.c.g;
import defpackage.md;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes2.dex */
public class a<Type> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f38345a = "ReflectFiled";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Class<?> f38346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f38347c;
    private boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Field f38348e;

    public a(Class<?> cls, String str) {
        if (cls == null || str == null || str.length() == 0) {
            md.n("Both of invoker and fieldName can not be null or nil.");
            throw null;
        }
        this.f38346b = cls;
        this.f38347c = str;
    }

    private synchronized void c() {
        if (this.d) {
            return;
        }
        for (Class<?> superclass = this.f38346b; superclass != null; superclass = superclass.getSuperclass()) {
            try {
                Field declaredField = superclass.getDeclaredField(this.f38347c);
                declaredField.setAccessible(true);
                this.f38348e = declaredField;
                break;
            } catch (Exception unused) {
            }
        }
        this.d = true;
    }

    public synchronized boolean a(Object obj, Type type, boolean z) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        c();
        Field field = this.f38348e;
        if (field != null) {
            field.set(obj, type);
            return true;
        }
        if (!z) {
            throw new NoSuchFieldException("Method " + this.f38347c + " is not exists.");
        }
        g.p("Field " + this.f38347c + " is no exists.");
        return false;
    }

    public synchronized Type b(Object obj) {
        Type typeA;
        try {
            try {
                typeA = a(true, obj);
            } catch (IllegalArgumentException e2) {
                g.a("getWithoutThrow, exception occur :%s", e2);
                typeA = null;
            }
        } catch (IllegalAccessException e3) {
            g.a("getWithoutThrow, exception occur :%s", e3);
            typeA = null;
        } catch (NoSuchFieldException e4) {
            g.a("getWithoutThrow, exception occur :%s", e4);
            typeA = null;
        }
        return typeA;
    }

    public synchronized boolean d(Type type) {
        boolean zA;
        try {
            zA = a(null, type, true);
        } catch (IllegalAccessException e2) {
            g.a("setWithoutThrow, exception occur :%s", e2);
            zA = false;
        } catch (IllegalArgumentException e3) {
            g.a("setWithoutThrow, exception occur :%s", e3);
            zA = false;
        } catch (NoSuchFieldException e4) {
            g.a("setWithoutThrow, exception occur :%s", e4);
            zA = false;
        }
        return zA;
    }

    public synchronized Type b() {
        Type typeA;
        try {
            try {
                typeA = a(true);
            } catch (IllegalArgumentException e2) {
                g.a("getWithoutThrow, exception occur :%s", e2);
                typeA = null;
            }
        } catch (IllegalAccessException e3) {
            g.a("getWithoutThrow, exception occur :%s", e3);
            typeA = null;
        } catch (NoSuchFieldException e4) {
            g.a("getWithoutThrow, exception occur :%s", e4);
            typeA = null;
        }
        return typeA;
    }

    public synchronized boolean c(Type type) throws IllegalAccessException, NoSuchFieldException {
        return a(null, type, false);
    }

    public synchronized boolean b(Object obj, Type type) {
        boolean zA;
        try {
            try {
                zA = a(obj, type, true);
            } catch (IllegalArgumentException e2) {
                g.a("setWithoutThrow, exception occur :%s", e2);
                zA = false;
            }
        } catch (IllegalAccessException e3) {
            g.a("setWithoutThrow, exception occur :%s", e3);
            zA = false;
        } catch (NoSuchFieldException e4) {
            g.a("setWithoutThrow, exception occur :%s", e4);
            zA = false;
        }
        return zA;
    }

    public synchronized Type a(boolean z) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        c();
        Field field = this.f38348e;
        if (field != null) {
            try {
                return (Type) field.get(null);
            } catch (ClassCastException unused) {
                throw new IllegalArgumentException("unable to cast object");
            }
        }
        if (z) {
            g.p("Field " + this.f38347c + " is no exists.");
            return null;
        }
        throw new NoSuchFieldException();
    }

    public synchronized Type a(boolean z, Object obj) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        c();
        Field field = this.f38348e;
        if (field != null) {
            try {
                return (Type) field.get(obj);
            } catch (ClassCastException unused) {
                throw new IllegalArgumentException("unable to cast object");
            }
        }
        if (z) {
            g.p("Field " + this.f38347c + " is no exists.");
            return null;
        }
        throw new NoSuchFieldException();
    }

    public synchronized Type a(Object obj) throws IllegalAccessException, NoSuchFieldException {
        return a(false, obj);
    }

    public synchronized boolean a(Object obj, Type type) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        return a(obj, type, false);
    }

    public synchronized Type a() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        return a(false);
    }
}
