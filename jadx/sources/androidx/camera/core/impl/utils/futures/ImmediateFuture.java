package androidx.camera.core.impl.utils.futures;

import androidx.camera.core.Logger;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.a;
import java.util.concurrent.Delayed;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
abstract class ImmediateFuture<V> implements ListenableFuture<V> {

    public static class ImmediateFailedFuture<V> extends ImmediateFuture<V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Throwable f2452b;

        public ImmediateFailedFuture(Throwable th) {
            this.f2452b = th;
        }

        @Override // java.util.concurrent.Future
        public final Object get() throws ExecutionException {
            throw new ExecutionException(this.f2452b);
        }

        public final String toString() {
            return super.toString() + "[status=FAILURE, cause=[" + this.f2452b + "]]";
        }
    }

    public static final class ImmediateFailedScheduledFuture<V> extends ImmediateFailedFuture<V> implements ScheduledFuture<V> {
        @Override // java.lang.Comparable
        public final /* bridge */ /* synthetic */ int compareTo(Delayed delayed) {
            return -1;
        }

        @Override // java.util.concurrent.Delayed
        public final long getDelay(TimeUnit timeUnit) {
            return 0L;
        }
    }

    public static final class ImmediateSuccessfulFuture<V> extends ImmediateFuture<V> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final ImmediateSuccessfulFuture f2453c = new ImmediateSuccessfulFuture(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f2454b;

        public ImmediateSuccessfulFuture(Object obj) {
            this.f2454b = obj;
        }

        @Override // java.util.concurrent.Future
        public final Object get() {
            return this.f2454b;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(super.toString());
            sb.append("[status=SUCCESS, result=[");
            return a.n(sb, this.f2454b, "]]");
        }
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable runnable, Executor executor) {
        runnable.getClass();
        executor.getClass();
        try {
            executor.execute(runnable);
        } catch (RuntimeException unused) {
            runnable.toString();
            executor.toString();
            Logger.b("ImmediateFuture");
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
