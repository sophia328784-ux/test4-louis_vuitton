package com.google.common.base;

import com.google.errorprone.annotations.DoNotMock;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
@DoNotMock
public abstract class Optional<T> implements Serializable {
    private static final long serialVersionUID = 0;

    public static Optional a() {
        return Absent.f33457b;
    }

    public static Optional d(Object obj) {
        obj.getClass();
        return new Present(obj);
    }

    public abstract Object b();

    public abstract boolean c();

    public abstract Object e(Supplier supplier);

    public abstract boolean equals(Object obj);

    public abstract Object f();

    public abstract int hashCode();
}
