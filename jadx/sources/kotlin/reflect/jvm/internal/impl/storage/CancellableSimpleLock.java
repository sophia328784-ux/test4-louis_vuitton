package kotlin.reflect.jvm.internal.impl.storage;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final class CancellableSimpleLock extends DefaultSimpleLock {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Runnable f74133b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f74134c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CancellableSimpleLock(Lock lock, Runnable runnable, Function1<? super InterruptedException, Unit> function1) {
        super(lock);
        lock.getClass();
        runnable.getClass();
        function1.getClass();
        this.f74133b = runnable;
        this.f74134c = function1;
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.DefaultSimpleLock, kotlin.reflect.jvm.internal.impl.storage.SimpleLock
    public final void lock() {
        while (!this.f74135a.tryLock(50L, TimeUnit.MILLISECONDS)) {
            try {
                this.f74133b.run();
            } catch (InterruptedException e2) {
                this.f74134c.invoke(e2);
                return;
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CancellableSimpleLock(Runnable runnable, Function1<? super InterruptedException, Unit> function1) {
        this(new ReentrantLock(), runnable, function1);
        runnable.getClass();
        function1.getClass();
    }
}
