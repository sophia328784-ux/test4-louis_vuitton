package com.perfectcorp.thirdparty.com.google.common.util.concurrent;

import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
abstract class s<V> implements ListenableFuture<V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f42438b = Logger.getLogger(s.class.getName());

    public static final class a<V> extends com.perfectcorp.thirdparty.com.google.common.util.concurrent.b.i<V> {
    }

    public static class b<V> extends s<V> {
        public static final b d = new b(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object f42439c;

        public b(Object obj) {
            this.f42439c = obj;
        }

        @Override // java.util.concurrent.Future
        public final Object get() {
            return this.f42439c;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(super.toString());
            sb.append("[status=SUCCESS, result=[");
            return defpackage.a.n(sb, this.f42439c, "]]");
        }
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable runnable, Executor executor) {
        Preconditions.d(runnable, "Runnable was null.");
        Preconditions.d(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            f42438b.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e2);
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j2, TimeUnit timeUnit) {
        timeUnit.getClass();
        return get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return true;
    }
}
