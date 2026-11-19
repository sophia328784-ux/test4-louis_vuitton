package com.perfectcorp.thirdparty.io.reactivex.internal.schedulers;

import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.internal.disposables.DisposableContainer;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class d extends Scheduler {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Scheduler f43080c = Schedulers.f43168a;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f43081a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f43082b;

    public final class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final b f43083a;

        public a(b bVar) {
            this.f43083a = bVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            b bVar = this.f43083a;
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(bVar.f43086b, d.this.b(bVar));
        }
    }

    public static final class b extends AtomicReference<Runnable> implements Disposable, Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e f43085a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e f43086b;

        public b(Runnable runnable) {
            super(runnable);
            this.f43085a = new com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e();
            this.f43086b = new com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            if (getAndSet(null) != null) {
                com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e eVar = this.f43085a;
                eVar.getClass();
                com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(eVar);
                com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e eVar2 = this.f43086b;
                eVar2.getClass();
                com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(eVar2);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return get() == null;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Runnable runnable = get();
            if (runnable != null) {
                try {
                    runnable.run();
                    lazySet(null);
                    this.f43085a.lazySet(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a);
                    com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e eVar = this.f43086b;
                } finally {
                    lazySet(null);
                    this.f43085a.lazySet(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a);
                    this.f43086b.lazySet(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a);
                }
            }
        }
    }

    public d(Executor executor, boolean z) {
        this.f43082b = executor;
        this.f43081a = z;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler
    public final Scheduler.b a() {
        return new c(this.f43082b, this.f43081a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.concurrent.Executor] */
    /* JADX WARN: Type inference failed for: r2v5, types: [com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable, java.lang.Runnable] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler
    public final Disposable b(Runnable runnable) {
        ?? r0 = this.f43082b;
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(runnable, "run is null");
        try {
            if (r0 instanceof ExecutorService) {
                j jVar = new j(runnable);
                jVar.a(((ExecutorService) r0).submit(jVar));
                return jVar;
            }
            ?? bVar = this.f43081a ? new c.b(runnable, null) : new c.a(runnable);
            r0.execute(bVar);
            return bVar;
        } catch (RejectedExecutionException e2) {
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(e2);
            return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a;
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler
    public final Disposable c(Runnable runnable, long j2, TimeUnit timeUnit) {
        Executor executor = this.f43082b;
        if (!(executor instanceof ScheduledExecutorService)) {
            b bVar = new b(runnable);
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(bVar.f43085a, f43080c.c(new a(bVar), j2, timeUnit));
            return bVar;
        }
        try {
            j jVar = new j(runnable);
            jVar.a(((ScheduledExecutorService) executor).schedule(jVar, j2, timeUnit));
            return jVar;
        } catch (RejectedExecutionException e2) {
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(e2);
            return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a;
        }
    }

    public static final class c extends Scheduler.b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f43087a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Executor f43088b;
        private volatile boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private AtomicInteger f43090e = new AtomicInteger();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private CompositeDisposable f43091f = new CompositeDisposable();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private com.perfectcorp.thirdparty.io.reactivex.internal.queue.a<Runnable> f43089c = new com.perfectcorp.thirdparty.io.reactivex.internal.queue.a<>();

        public static final class a extends AtomicBoolean implements Disposable, Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private Runnable f43092a;

            public a(Runnable runnable) {
                this.f43092a = runnable;
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
            public final void dispose() {
                lazySet(true);
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
            public final boolean isDisposed() {
                return get();
            }

            @Override // java.lang.Runnable
            public final void run() {
                if (get()) {
                    return;
                }
                try {
                    this.f43092a.run();
                } finally {
                    lazySet(true);
                }
            }
        }

        public static final class b extends AtomicInteger implements Disposable, Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private Runnable f43093a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private DisposableContainer f43094b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private volatile Thread f43095c;

            public b(Runnable runnable, DisposableContainer disposableContainer) {
                this.f43093a = runnable;
                this.f43094b = disposableContainer;
            }

            private void a() {
                DisposableContainer disposableContainer = this.f43094b;
                if (disposableContainer != null) {
                    disposableContainer.c(this);
                }
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
            public final void dispose() {
                while (true) {
                    int i2 = get();
                    if (i2 >= 2) {
                        return;
                    }
                    if (i2 == 0) {
                        if (compareAndSet(0, 4)) {
                            a();
                            return;
                        }
                    } else if (compareAndSet(1, 3)) {
                        Thread thread = this.f43095c;
                        if (thread != null) {
                            thread.interrupt();
                            this.f43095c = null;
                        }
                        set(4);
                        a();
                        return;
                    }
                }
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
            public final boolean isDisposed() {
                return get() >= 2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                if (get() == 0) {
                    this.f43095c = Thread.currentThread();
                    if (!compareAndSet(0, 1)) {
                        this.f43095c = null;
                        return;
                    }
                    try {
                        this.f43093a.run();
                        this.f43095c = null;
                        if (compareAndSet(1, 2)) {
                        }
                    } finally {
                        this.f43095c = null;
                        if (compareAndSet(1, 2)) {
                            a();
                        } else {
                            while (get() == 3) {
                                Thread.yield();
                            }
                            Thread.interrupted();
                        }
                    }
                }
            }
        }

        /* JADX INFO: renamed from: com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d$c$c, reason: collision with other inner class name */
        public final class RunnableC0227c implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e f43096a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Runnable f43097b;

            public RunnableC0227c(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e eVar, Runnable runnable) {
                this.f43096a = eVar;
                this.f43097b = runnable;
            }

            @Override // java.lang.Runnable
            public final void run() {
                com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(this.f43096a, c.this.a(this.f43097b));
            }
        }

        public c(Executor executor, boolean z) {
            this.f43088b = executor;
            this.f43087a = z;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler.b
        public final Disposable a(Runnable runnable, long j2, TimeUnit timeUnit) {
            if (j2 <= 0) {
                return a(runnable);
            }
            if (this.d) {
                return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a;
            }
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e eVar = new com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e();
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e eVar2 = new com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e(eVar);
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(runnable, "run is null");
            k kVar = new k(new RunnableC0227c(eVar2, runnable), this.f43091f);
            this.f43091f.b(kVar);
            Executor executor = this.f43088b;
            if (executor instanceof ScheduledExecutorService) {
                try {
                    kVar.a(((ScheduledExecutorService) executor).schedule((Callable) kVar, j2, timeUnit));
                } catch (RejectedExecutionException e2) {
                    this.d = true;
                    com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(e2);
                    return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a;
                }
            } else {
                Disposable disposableC = d.f43080c.c(kVar, j2, timeUnit);
                com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.c cVar = new com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.c();
                cVar.f43079b = disposableC;
                kVar.a(cVar);
            }
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(eVar, kVar);
            return eVar2;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() throws Throwable {
            if (this.d) {
                return;
            }
            this.d = true;
            this.f43091f.dispose();
            if (this.f43090e.getAndIncrement() == 0) {
                this.f43089c.c();
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.d;
        }

        @Override // java.lang.Runnable
        public final void run() {
            com.perfectcorp.thirdparty.io.reactivex.internal.queue.a<Runnable> aVar = this.f43089c;
            int iAddAndGet = 1;
            while (!this.d) {
                while (true) {
                    Runnable runnable = (Runnable) aVar.a();
                    if (runnable != null) {
                        runnable.run();
                        if (this.d) {
                            aVar.c();
                            return;
                        }
                    }
                }
                if (this.d) {
                    aVar.c();
                    return;
                } else {
                    iAddAndGet = this.f43090e.addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
            aVar.c();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler.b
        public final Disposable a(Runnable runnable) {
            Disposable aVar;
            if (this.d) {
                return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a;
            }
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(runnable, "run is null");
            if (this.f43087a) {
                aVar = new b(runnable, this.f43091f);
                this.f43091f.b(aVar);
            } else {
                aVar = new a(runnable);
            }
            this.f43089c.a(aVar);
            if (this.f43090e.getAndIncrement() != 0) {
                return aVar;
            }
            try {
                this.f43088b.execute(this);
                return aVar;
            } catch (RejectedExecutionException e2) {
                this.d = true;
                this.f43089c.c();
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(e2);
                return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a;
            }
        }
    }
}
