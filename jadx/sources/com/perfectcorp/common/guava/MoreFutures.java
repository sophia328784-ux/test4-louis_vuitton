package com.perfectcorp.common.guava;

import com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Futures;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Uninterruptibles;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes3.dex */
public abstract class MoreFutures {

    public static class a<V> implements FutureCallback<V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final b f39262a;

        public a(b bVar) {
            this.f39262a = bVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
        public final void onFailure(Throwable th) {
            b bVar = this.f39262a;
            try {
                bVar.onFailure(th);
            } finally {
                bVar.a();
            }
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
        public final void onSuccess(Object obj) {
            b bVar = this.f39262a;
            try {
                bVar.onSuccess(obj);
            } finally {
                bVar.a();
            }
        }
    }

    public static void a(ListenableFuture listenableFuture, FutureCallback futureCallback, Executor executor) {
        if (futureCallback instanceof b) {
            futureCallback = new a((b) futureCallback);
        }
        Futures.c(listenableFuture, futureCallback, executor);
    }

    public static Object b(Future future) {
        try {
            return Uninterruptibles.a(future);
        } catch (ExecutionException e2) {
            throw e2.getCause();
        }
    }
}
