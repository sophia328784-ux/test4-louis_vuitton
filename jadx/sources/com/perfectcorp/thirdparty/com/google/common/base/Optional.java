package com.perfectcorp.thirdparty.com.google.common.base;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Optional<T> implements Serializable {
    public static Optional a() {
        return a.f42084b;
    }

    public static Optional b(Object obj) {
        return obj == null ? a.f42084b : new l(obj);
    }

    public static Optional e(Object obj) {
        obj.getClass();
        return new l(obj);
    }

    public abstract Object c();

    public abstract boolean d();

    public abstract Object f(Object obj);

    public abstract Object g();
}
