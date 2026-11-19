package com.perfectcorp.thirdparty.com.google.common.util.concurrent;

import com.perfectcorp.thirdparty.com.google.common.base.Function;
import java.lang.Throwable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes3.dex */
abstract class a<V, X extends Throwable, F, T> extends n.a<V> implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ListenableFuture<? extends V> f42386a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Class<X> f42387b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private F f42388c;

    public a(ListenableFuture<? extends V> listenableFuture, Class<X> cls, F f2) {
        listenableFuture.getClass();
        this.f42386a = listenableFuture;
        cls.getClass();
        this.f42387b = cls;
        f2.getClass();
        this.f42388c = f2;
    }

    public abstract T a(F f2, X x) throws Exception;

    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b
    public final String a() {
        String str;
        ListenableFuture<? extends V> listenableFuture = this.f42386a;
        Class<X> cls = this.f42387b;
        F f2 = this.f42388c;
        String strA = super.a();
        if (listenableFuture != null) {
            str = "inputFuture=[" + listenableFuture + "], ";
        } else {
            str = "";
        }
        if (cls == null || f2 == null) {
            if (strA != null) {
                return str.concat(strA);
            }
            return null;
        }
        return str + "exceptionType=[" + cls + "], fallback=[" + f2 + "]";
    }

    public abstract void a(T t);

    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b
    public final void b() {
        a((Future<?>) this.f42386a);
        this.f42386a = null;
        this.f42387b = null;
        this.f42388c = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [F, java.lang.Class<X extends java.lang.Throwable>] */
    @Override // java.lang.Runnable
    public final void run() {
        Object objB;
        ListenableFuture<? extends V> listenableFuture = this.f42386a;
        Class<X> cls = this.f42387b;
        F f2 = this.f42388c;
        if (((f2 == null) | (listenableFuture == null) | (cls == null)) || isCancelled()) {
            return;
        }
        ?? r3 = (Class<X>) null;
        this.f42386a = null;
        try {
            objB = Futures.b(listenableFuture);
            th = null;
        } catch (ExecutionException e2) {
            th = e2.getCause();
            th.getClass();
            objB = null;
        } catch (Throwable th) {
            th = th;
            objB = null;
        }
        if (th == null) {
            set(objB);
            return;
        }
        if (!cls.isInstance(th)) {
            setFuture(listenableFuture);
            return;
        }
        try {
            Object objA = a(f2, th);
            this.f42387b = null;
            this.f42388c = null;
            a(objA);
        } catch (Throwable th2) {
            try {
                setException(th2);
            } finally {
                this.f42387b = null;
                this.f42388c = null;
            }
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.thirdparty.com.google.common.util.concurrent.a$a, reason: collision with other inner class name */
    public static final class C0209a<V, X extends Throwable> extends a<V, X, Function<? super X, ? extends V>, V> {
        public C0209a(ListenableFuture<? extends V> listenableFuture, Class<X> cls, Function<? super X, ? extends V> function) {
            super(listenableFuture, cls, function);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.a
        public final /* synthetic */ Object a(Object obj, Throwable th) throws Exception {
            return ((Function) obj).apply(th);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.a
        public final void a(V v) {
            set(v);
        }
    }

    public static <V, X extends Throwable> ListenableFuture<V> a(ListenableFuture<? extends V> listenableFuture, Class<X> cls, Function<? super X, ? extends V> function, Executor executor) {
        C0209a c0209a = new C0209a(listenableFuture, cls, function);
        listenableFuture.addListener(c0209a, w.b(executor, c0209a));
        return c0209a;
    }
}
