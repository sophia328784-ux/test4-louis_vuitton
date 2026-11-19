package com.batch.android.e;

import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes2.dex */
public class c0<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e f23075a = e.PENDING;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private T f23076b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Exception f23077c = null;
    private ArrayDeque<f<T>> d = new ArrayDeque<>(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayDeque<b> f23078e = new ArrayDeque<>(1);

    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f23079a;

        static {
            int[] iArr = new int[e.values().length];
            f23079a = iArr;
            try {
                iArr[e.PENDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23079a[e.RESOLVED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23079a[e.REJECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public interface b {
        void a(Exception exc);
    }

    public interface c<T> {
        void a(c0<T> c0Var);
    }

    public interface d<T> {
        T run();
    }

    public enum e {
        PENDING,
        RESOLVED,
        REJECTED
    }

    public interface f<T> {
        void a(T t);
    }

    public c0(d<T> dVar) {
        try {
            a(dVar.run());
        } catch (Exception e2) {
            a(e2);
        }
    }

    public static <T> c0<T> b(T t) {
        c0<T> c0Var = new c0<>();
        c0Var.a(t);
        return c0Var;
    }

    public synchronized void a(T t) {
        if (this.f23075a == e.PENDING) {
            this.f23075a = e.RESOLVED;
            this.f23076b = t;
            while (!this.d.isEmpty()) {
                this.d.removeLast().a(t);
            }
        }
    }

    public static <T> c0<T> b(Exception exc) {
        c0<T> c0Var = new c0<>();
        c0Var.a(exc);
        return c0Var;
    }

    public c0() {
    }

    public synchronized void a(Exception exc) {
        if (this.f23075a == e.PENDING) {
            this.f23075a = e.REJECTED;
            this.f23077c = exc;
            while (!this.f23078e.isEmpty()) {
                this.f23078e.removeLast().a(exc);
            }
        }
    }

    public c0(c<T> cVar) {
        try {
            cVar.a(this);
        } catch (Exception e2) {
            a(e2);
        }
    }

    public synchronized c0<T> a(f<T> fVar) {
        int i2 = a.f23079a[this.f23075a.ordinal()];
        if (i2 == 1) {
            this.d.push(fVar);
            return this;
        }
        if (i2 != 2) {
            return this;
        }
        fVar.a(this.f23076b);
        return this;
    }

    public synchronized c0<T> a(b bVar) {
        int i2 = a.f23079a[this.f23075a.ordinal()];
        if (i2 == 1) {
            this.f23078e.push(bVar);
            return this;
        }
        if (i2 != 3) {
            return this;
        }
        bVar.a(this.f23077c);
        return this;
    }

    public e a() {
        return this.f23075a;
    }
}
