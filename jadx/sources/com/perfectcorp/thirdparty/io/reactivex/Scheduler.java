package com.perfectcorp.thirdparty.io.reactivex;

import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Scheduler {

    public static final class a implements Disposable, Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Runnable f42584a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private b f42585b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Thread f42586c;

        public a(Runnable runnable, b bVar) {
            this.f42584a = runnable;
            this.f42585b = bVar;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            if (this.f42586c == Thread.currentThread()) {
                b bVar = this.f42585b;
                if (bVar instanceof com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.g) {
                    com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.g gVar = (com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.g) bVar;
                    if (gVar.f43115h) {
                        return;
                    }
                    gVar.f43115h = true;
                    gVar.g.shutdown();
                    return;
                }
            }
            this.f42585b.dispose();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42585b.isDisposed();
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f42586c = Thread.currentThread();
            try {
                this.f42584a.run();
            } finally {
                dispose();
                this.f42586c = null;
            }
        }
    }

    static {
        Long.getLong("rx2.scheduler.drift-tolerance", 15L).longValue();
    }

    public abstract b a();

    public Disposable b(Runnable runnable) {
        return c(runnable, 0L, TimeUnit.NANOSECONDS);
    }

    public Disposable c(Runnable runnable, long j2, TimeUnit timeUnit) {
        b bVarA = a();
        a aVar = new a(runnable, bVarA);
        bVarA.a(aVar, j2, timeUnit);
        return aVar;
    }

    public static abstract class b implements Disposable {
        public static long a(TimeUnit timeUnit) {
            return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
        }

        public abstract Disposable a(Runnable runnable, long j2, TimeUnit timeUnit);

        public Disposable a(Runnable runnable) {
            return a(runnable, 0L, TimeUnit.NANOSECONDS);
        }
    }
}
