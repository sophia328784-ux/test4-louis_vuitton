package com.batch.android.e;

import android.content.Context;
import android.content.Intent;
import com.linkplay.medialib.ContentTree;
import defpackage.r81;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final class k0 extends ThreadPoolExecutor implements AutoCloseable {
    public static final String d = "com.batch.android.executor.finished";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Future<?>, String> f23108b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f23109c;

    public k0(Context context, int i2, int i3, long j2, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue) {
        super(i2, i3, j2, timeUnit, blockingQueue, new v());
        this.f23108b = new HashMap();
        if (context != null) {
            this.f23109c = context.getApplicationContext();
        } else {
            r81.d("Null context");
            throw null;
        }
    }

    public Future<?> a(l0 l0Var) {
        Future<?> futureSubmit;
        Future future;
        String str;
        if (l0Var == null) {
            r81.d("Null task");
            return null;
        }
        synchronized (this.f23108b) {
            try {
                Iterator<Runnable> it = getQueue().iterator();
                while (it.hasNext()) {
                    Runnable next = it.next();
                    if ((next instanceof Future) && (str = this.f23108b.get((future = (Future) next))) != null && str.equals(l0Var.a())) {
                        future.cancel(true);
                        it.remove();
                        this.f23108b.remove(future);
                    }
                }
                Iterator<Future<?>> it2 = this.f23108b.keySet().iterator();
                while (it2.hasNext()) {
                    Future<?> next2 = it2.next();
                    if (this.f23108b.get(next2).equals(l0Var.a())) {
                        next2.cancel(true);
                        it2.remove();
                    }
                }
                futureSubmit = submit(l0Var);
                this.f23108b.put(futureSubmit, l0Var.a());
            } catch (Throwable th) {
                throw th;
            }
        }
        return futureSubmit;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void afterExecute(Runnable runnable, Throwable th) {
        try {
            if (!(runnable instanceof FutureTask)) {
                super.afterExecute(runnable, th);
                return;
            }
            synchronized (this.f23108b) {
                try {
                    this.f23108b.remove(runnable);
                    if (this.f23108b.isEmpty()) {
                        com.batch.android.n.o.a(this.f23109c).a(new Intent(d));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            super.afterExecute(runnable, th);
        } catch (Throwable th3) {
            super.afterExecute(runnable, th);
            throw th3;
        }
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        boolean zIsTerminated;
        if (this == ForkJoinPool.commonPool() || (zIsTerminated = isTerminated())) {
            return;
        }
        shutdown();
        boolean z = false;
        while (!zIsTerminated) {
            try {
                zIsTerminated = awaitTermination(1L, TimeUnit.DAYS);
            } catch (InterruptedException unused) {
                if (!z) {
                    shutdownNow();
                    z = true;
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        super.execute(runnable);
    }

    public static k0 a(Context context) {
        a0 a0VarA = com.batch.android.n.w.a(context);
        return new k0(context, Integer.parseInt(a0VarA.a(z.R0, ContentTree.ROOT_ID)), Integer.parseInt(a0VarA.a(z.S0, "5")), Integer.parseInt(a0VarA.a(z.T0, "1000")), TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
    }

    public boolean a() {
        boolean z;
        synchronized (this.f23108b) {
            z = !this.f23108b.isEmpty();
        }
        return z;
    }
}
