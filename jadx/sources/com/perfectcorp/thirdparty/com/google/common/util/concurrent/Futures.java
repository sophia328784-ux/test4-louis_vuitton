package com.perfectcorp.thirdparty.com.google.common.util.concurrent;

import com.perfectcorp.thirdparty.com.google.common.base.Function;
import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import com.perfectcorp.thirdparty.com.google.common.base.Strings;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import defpackage.md;
import java.util.ArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Futures extends r {

    public static final class a<V> implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Future<V> f42383a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private FutureCallback<? super V> f42384b;

        public a(Future<V> future, FutureCallback<? super V> futureCallback) {
            this.f42383a = future;
            this.f42384b = futureCallback;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.f42384b.onSuccess(Futures.b(this.f42383a));
            } catch (Error | RuntimeException e2) {
                this.f42384b.onFailure(e2);
            } catch (ExecutionException e3) {
                this.f42384b.onFailure(e3.getCause());
            }
        }

        public final String toString() {
            MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper(a.class.getSimpleName());
            toStringHelper.a(this.f42384b);
            return toStringHelper.toString();
        }
    }

    public static ListenableFuture a(ListenableFuture listenableFuture, com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.u uVar, Executor executor) {
        return com.perfectcorp.thirdparty.com.google.common.util.concurrent.a.a(listenableFuture, Throwable.class, uVar, executor);
    }

    public static Object b(Future future) {
        if (future.isDone()) {
            return Uninterruptibles.a(future);
        }
        md.k(Strings.a("Future was expected to be done: %s", future));
        return null;
    }

    public static void c(ListenableFuture listenableFuture, FutureCallback futureCallback, Executor executor) {
        listenableFuture.addListener(new a(listenableFuture, futureCallback), executor);
    }

    public static ListenableFuture d(ArrayList arrayList) {
        return new j.b(ImmutableList.u(arrayList), true);
    }

    public static ListenableFuture e(ListenableFuture... listenableFutureArr) {
        return new j.b(ImmutableList.v(listenableFutureArr), true);
    }

    public static ListenableFuture f(Throwable th) {
        th.getClass();
        s.a aVar = new s.a();
        aVar.setException(th);
        return aVar;
    }

    public static ListenableFuture g(Object obj) {
        return obj == null ? s.b.d : new s.b(obj);
    }

    public static ListenableFuture h(ListenableFuture listenableFuture, Function function, Executor executor) {
        return e.a(listenableFuture, function, executor);
    }

    public static ListenableFuture i(ListenableFuture listenableFuture, i iVar, Executor executor) {
        return e.a(listenableFuture, iVar, executor);
    }
}
