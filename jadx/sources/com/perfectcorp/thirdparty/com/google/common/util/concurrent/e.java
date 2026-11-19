package com.perfectcorp.thirdparty.com.google.common.util.concurrent;

import com.perfectcorp.thirdparty.com.google.common.base.Function;
import com.perfectcorp.thirdparty.com.google.common.base.Strings;
import defpackage.r81;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes3.dex */
abstract class e<I, O, F, T> extends n.a<O> implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ListenableFuture<? extends I> f42414a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private F f42415b;

    public e(ListenableFuture<? extends I> listenableFuture, F f2) {
        listenableFuture.getClass();
        this.f42414a = listenableFuture;
        f2.getClass();
        this.f42415b = f2;
    }

    public abstract T a(F f2, I i2) throws Exception;

    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b
    public final String a() {
        String str;
        ListenableFuture<? extends I> listenableFuture = this.f42414a;
        F f2 = this.f42415b;
        String strA = super.a();
        if (listenableFuture != null) {
            str = "inputFuture=[" + listenableFuture + "], ";
        } else {
            str = "";
        }
        if (f2 == null) {
            if (strA != null) {
                return str.concat(strA);
            }
            return null;
        }
        return str + "function=[" + f2 + "]";
    }

    public abstract void a(T t);

    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b
    public final void b() {
        a((Future<?>) this.f42414a);
        this.f42414a = null;
        this.f42415b = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        ListenableFuture<? extends I> listenableFuture = this.f42414a;
        F f2 = this.f42415b;
        if ((isCancelled() | (listenableFuture == null)) || (f2 == null)) {
            return;
        }
        this.f42414a = null;
        if (listenableFuture.isCancelled()) {
            setFuture(listenableFuture);
            return;
        }
        try {
            try {
                Object objA = a(f2, Futures.b(listenableFuture));
                this.f42415b = null;
                a(objA);
            } catch (Throwable th) {
                try {
                    setException(th);
                } finally {
                    this.f42415b = null;
                }
            }
        } catch (Error e2) {
            setException(e2);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (RuntimeException e3) {
            setException(e3);
        } catch (ExecutionException e4) {
            setException(e4.getCause());
        }
    }

    public static final class b<I, O> extends e<I, O, Function<? super I, ? extends O>, O> {
        public b(ListenableFuture<? extends I> listenableFuture, Function<? super I, ? extends O> function) {
            super(listenableFuture, function);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.e
        public final /* synthetic */ Object a(Object obj, Object obj2) throws Exception {
            return ((Function) obj).apply(obj2);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.e
        public final void a(O o) {
            set(o);
        }
    }

    public static final class a<I, O> extends e<I, O, i<? super I, ? extends O>, ListenableFuture<? extends O>> {
        public a(ListenableFuture<? extends I> listenableFuture, i<? super I, ? extends O> iVar) {
            super(listenableFuture, iVar);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.e
        public final Object a(Object obj, Object obj2) throws Exception {
            i iVar = (i) obj;
            ListenableFuture listenableFutureApply = iVar.apply(obj2);
            if (listenableFutureApply != null) {
                return listenableFutureApply;
            }
            r81.d(Strings.a("AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", iVar));
            return null;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.e
        public final /* synthetic */ void a(Object obj) {
            setFuture((ListenableFuture) obj);
        }
    }

    public static <I, O> ListenableFuture<O> a(ListenableFuture<I> listenableFuture, i<? super I, ? extends O> iVar, Executor executor) {
        executor.getClass();
        a aVar = new a(listenableFuture, iVar);
        listenableFuture.addListener(aVar, w.b(executor, aVar));
        return aVar;
    }

    public static <I, O> ListenableFuture<O> a(ListenableFuture<I> listenableFuture, Function<? super I, ? extends O> function, Executor executor) {
        function.getClass();
        b bVar = new b(listenableFuture, function);
        listenableFuture.addListener(bVar, w.b(executor, bVar));
        return bVar;
    }
}
