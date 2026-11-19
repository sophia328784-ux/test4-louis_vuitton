package com.perfectcorp.thirdparty.io.reactivex.internal.schedulers;

import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposables;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class n extends Scheduler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f43132a = 0;

    public static final class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Runnable f43133a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final c f43134b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final long f43135c;

        public a(Runnable runnable, c cVar, long j2) {
            this.f43133a = runnable;
            this.f43134b = cVar;
            this.f43135c = j2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f43134b.f43141j) {
                return;
            }
            long jA = Scheduler.b.a(TimeUnit.MILLISECONDS);
            long j2 = this.f43135c;
            if (j2 > jA) {
                try {
                    Thread.sleep(j2 - jA);
                } catch (InterruptedException e2) {
                    Thread.currentThread().interrupt();
                    com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(e2);
                    return;
                }
            }
            if (this.f43134b.f43141j) {
                return;
            }
            this.f43133a.run();
        }
    }

    public static final class b implements Comparable<b> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Runnable f43136b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f43137c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public volatile boolean f43138e;

        public b(Runnable runnable, Long l, int i2) {
            this.f43136b = runnable;
            this.f43137c = l.longValue();
            this.d = i2;
        }

        @Override // java.lang.Comparable
        public final int compareTo(b bVar) {
            int i2;
            b bVar2 = bVar;
            long j2 = this.f43137c;
            long j3 = bVar2.f43137c;
            if (j2 < j3) {
                i2 = -1;
            } else {
                i2 = j2 > j3 ? 1 : 0;
            }
            if (i2 != 0) {
                return i2;
            }
            int i3 = bVar2.d;
            int i4 = this.d;
            if (i4 < i3) {
                return -1;
            }
            return i4 > i3 ? 1 : 0;
        }
    }

    static {
        new n();
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler
    public final Scheduler.b a() {
        return new c();
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler
    public final Disposable b(Runnable runnable) {
        runnable.run();
        return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler
    public final Disposable c(Runnable runnable, long j2, TimeUnit timeUnit) {
        try {
            timeUnit.sleep(j2);
            runnable.run();
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(e2);
        }
        return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a;
    }

    public static final class c extends Scheduler.b implements Disposable {
        public final PriorityBlockingQueue g = new PriorityBlockingQueue();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final AtomicInteger f43139h = new AtomicInteger();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final AtomicInteger f43140i = new AtomicInteger();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public volatile boolean f43141j;

        public final class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private b f43142a;

            public a(b bVar) {
                this.f43142a = bVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f43142a.f43138e = true;
                c.this.g.remove(this.f43142a);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler.b
        public final Disposable a(Runnable runnable, long j2, TimeUnit timeUnit) {
            long millis = timeUnit.toMillis(j2) + Scheduler.b.a(TimeUnit.MILLISECONDS);
            return b(millis, new a(runnable, this, millis));
        }

        public final Disposable b(long j2, Runnable runnable) {
            if (this.f43141j) {
                return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a;
            }
            b bVar = new b(runnable, Long.valueOf(j2), this.f43140i.incrementAndGet());
            this.g.add(bVar);
            if (this.f43139h.getAndIncrement() != 0) {
                return Disposables.b(new a(bVar));
            }
            int iAddAndGet = 1;
            while (true) {
                boolean z = this.f43141j;
                PriorityBlockingQueue priorityBlockingQueue = this.g;
                if (z) {
                    priorityBlockingQueue.clear();
                    return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a;
                }
                b bVar2 = (b) priorityBlockingQueue.poll();
                if (bVar2 == null) {
                    iAddAndGet = this.f43139h.addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a;
                    }
                } else if (!bVar2.f43138e) {
                    bVar2.f43136b.run();
                }
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.f43141j = true;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f43141j;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler.b
        public final Disposable a(Runnable runnable) {
            return b(Scheduler.b.a(TimeUnit.MILLISECONDS), runnable);
        }
    }
}
