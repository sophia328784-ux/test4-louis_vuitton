package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u000b\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/ThreadState;", "Lkotlinx/coroutines/JobNode;", "<init>", "()V", "Lkotlinx/atomicfu/AtomicInt;", "_state", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class ThreadState extends JobNode {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f74712k = AtomicIntegerFieldUpdater.newUpdater(ThreadState.class, "_state$volatile");
    private volatile /* synthetic */ int _state$volatile;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Thread f74713i = Thread.currentThread();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public DisposableHandle f74714j;

    public static void t(int i2) {
        throw new IllegalStateException(("Illegal state " + i2).toString());
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean q() {
        return true;
    }

    @Override // kotlinx.coroutines.JobNode
    public final void r(Throwable th) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i2;
        do {
            atomicIntegerFieldUpdater = f74712k;
            i2 = atomicIntegerFieldUpdater.get(this);
            if (i2 != 0) {
                if (i2 == 1 || i2 == 2 || i2 == 3) {
                    return;
                }
                t(i2);
                throw null;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, 2));
        this.f74713i.interrupt();
        atomicIntegerFieldUpdater.set(this, 3);
    }

    public final void s() {
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f74712k;
            int i2 = atomicIntegerFieldUpdater.get(this);
            if (i2 != 0) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        Thread.interrupted();
                        return;
                    } else {
                        t(i2);
                        throw null;
                    }
                }
            } else if (atomicIntegerFieldUpdater.compareAndSet(this, i2, 1)) {
                DisposableHandle disposableHandle = this.f74714j;
                if (disposableHandle != null) {
                    disposableHandle.dispose();
                    return;
                }
                return;
            }
        }
    }
}
