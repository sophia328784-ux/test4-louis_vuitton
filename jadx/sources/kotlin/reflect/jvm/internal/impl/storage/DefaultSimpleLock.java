package kotlin.reflect.jvm.internal.impl.storage;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public class DefaultSimpleLock implements SimpleLock {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Lock f74135a;

    public /* synthetic */ DefaultSimpleLock(Lock lock, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new ReentrantLock() : lock);
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.SimpleLock
    public void lock() {
        this.f74135a.lock();
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.SimpleLock
    public final void unlock() {
        this.f74135a.unlock();
    }

    public DefaultSimpleLock(Lock lock) {
        lock.getClass();
        this.f74135a = lock;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DefaultSimpleLock() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
