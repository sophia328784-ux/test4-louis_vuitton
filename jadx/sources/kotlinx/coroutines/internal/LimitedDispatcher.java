package kotlinx.coroutines.internal;

import defpackage.tr;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandlerKt;
import kotlinx.coroutines.DefaultExecutorKt;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.DisposableHandle;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\fB!\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tR\u000b\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/internal/LimitedDispatcher;", "Lkotlinx/coroutines/CoroutineDispatcher;", "Lkotlinx/coroutines/Delay;", "dispatcher", "", "parallelism", "", "name", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;ILjava/lang/String;)V", "Lkotlinx/atomicfu/AtomicInt;", "runningWorkers", "Worker", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class LimitedDispatcher extends CoroutineDispatcher implements Delay {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f75111h = AtomicIntegerFieldUpdater.newUpdater(LimitedDispatcher.class, "runningWorkers$volatile");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Delay f75112b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CoroutineDispatcher f75113c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f75114e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LockFreeTaskQueue f75115f;
    public final Object g;
    private volatile /* synthetic */ int runningWorkers$volatile;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0013\u0012\n\u0010\u0003\u001a\u00060\u0001j\u0002`\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0007\u001a\u00020\bH\u0016R\u0014\u0010\u0003\u001a\u00060\u0001j\u0002`\u0002X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0006¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "currentTask", "<init>", "(Lkotlinx/coroutines/internal/LimitedDispatcher;Ljava/lang/Runnable;)V", "Ljava/lang/Runnable;", "run", "", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public final class Worker implements Runnable {
        private Runnable currentTask;

        public Worker(Runnable runnable) {
            this.currentTask = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = 0;
            while (true) {
                try {
                    this.currentTask.run();
                } catch (Throwable th) {
                    CoroutineExceptionHandlerKt.a(th, EmptyCoroutineContext.f71840b);
                }
                try {
                    LimitedDispatcher limitedDispatcher = LimitedDispatcher.this;
                    AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = LimitedDispatcher.f75111h;
                    Runnable runnableR = limitedDispatcher.r();
                    if (runnableR == null) {
                        return;
                    }
                    this.currentTask = runnableR;
                    i2++;
                    if (i2 >= 16) {
                        LimitedDispatcher limitedDispatcher2 = LimitedDispatcher.this;
                        if (DispatchedContinuationKt.c(limitedDispatcher2.f75113c, limitedDispatcher2)) {
                            LimitedDispatcher limitedDispatcher3 = LimitedDispatcher.this;
                            DispatchedContinuationKt.b(limitedDispatcher3.f75113c, limitedDispatcher3, this);
                            return;
                        }
                    }
                } catch (Throwable th2) {
                    LimitedDispatcher limitedDispatcher4 = LimitedDispatcher.this;
                    synchronized (limitedDispatcher4.g) {
                        LimitedDispatcher.f75111h.decrementAndGet(limitedDispatcher4);
                        throw th2;
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LimitedDispatcher(CoroutineDispatcher coroutineDispatcher, int i2, String str) {
        Delay delay = coroutineDispatcher instanceof Delay ? (Delay) coroutineDispatcher : null;
        this.f75112b = delay == null ? DefaultExecutorKt.f74653a : delay;
        this.f75113c = coroutineDispatcher;
        this.d = i2;
        this.f75114e = str;
        this.f75115f = new LockFreeTaskQueue(false);
        this.g = new Object();
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        Runnable runnableR;
        this.f75115f.a(runnable);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f75111h;
        if (atomicIntegerFieldUpdater.get(this) >= this.d || !u() || (runnableR = r()) == null) {
            return;
        }
        try {
            DispatchedContinuationKt.b(this.f75113c, this, new Worker(runnableR));
        } catch (Throwable th) {
            atomicIntegerFieldUpdater.decrementAndGet(this);
            throw th;
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        Runnable runnableR;
        this.f75115f.a(runnable);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f75111h;
        if (atomicIntegerFieldUpdater.get(this) >= this.d || !u() || (runnableR = r()) == null) {
            return;
        }
        try {
            this.f75113c.dispatchYield(this, new Worker(runnableR));
        } catch (Throwable th) {
            atomicIntegerFieldUpdater.decrementAndGet(this);
            throw th;
        }
    }

    @Override // kotlinx.coroutines.Delay
    public final DisposableHandle invokeOnTimeout(long j2, Runnable runnable, CoroutineContext coroutineContext) {
        return this.f75112b.invokeOnTimeout(j2, runnable, coroutineContext);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final CoroutineDispatcher limitedParallelism(int i2, String str) {
        LimitedDispatcherKt.a(i2);
        if (i2 >= this.d) {
            return str != null ? new NamedDispatcher(this, str) : this;
        }
        return super.limitedParallelism(i2, str);
    }

    public final Runnable r() {
        while (true) {
            Runnable runnable = (Runnable) this.f75115f.d();
            if (runnable != null) {
                return runnable;
            }
            synchronized (this.g) {
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f75111h;
                atomicIntegerFieldUpdater.decrementAndGet(this);
                if (this.f75115f.c() == 0) {
                    return null;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
            }
        }
    }

    @Override // kotlinx.coroutines.Delay
    public final void scheduleResumeAfterDelay(long j2, CancellableContinuation cancellableContinuation) {
        this.f75112b.scheduleResumeAfterDelay(j2, cancellableContinuation);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* JADX INFO: renamed from: toString */
    public final String getD() {
        String str = this.f75114e;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f75113c);
        sb.append(".limitedParallelism(");
        return tr.k(sb, this.d, ')');
    }

    public final boolean u() {
        synchronized (this.g) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f75111h;
            if (atomicIntegerFieldUpdater.get(this) >= this.d) {
                return false;
            }
            atomicIntegerFieldUpdater.incrementAndGet(this);
            return true;
        }
    }
}
