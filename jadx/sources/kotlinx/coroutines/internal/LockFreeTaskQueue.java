package kotlinx.coroutines.internal;

import defpackage.o91;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0010\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006R!\u0010\n\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00028\u00000\bj\b\u0012\u0004\u0012\u00028\u0000`\t0\u00078\u0002X\u0082\u0004¨\u0006\u000b"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeTaskQueue;", "", "E", "", "singleConsumer", "<init>", "(Z)V", "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "Lkotlinx/coroutines/internal/Core;", "_cur", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public class LockFreeTaskQueue<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f75121a = AtomicReferenceFieldUpdater.newUpdater(LockFreeTaskQueue.class, Object.class, "_cur$volatile");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ long f75122b = o91.f76733a.objectFieldOffset(LockFreeTaskQueue.class.getDeclaredField("_cur$volatile"));
    private volatile /* synthetic */ Object _cur$volatile;

    public LockFreeTaskQueue(boolean z) {
        this._cur$volatile = new LockFreeTaskQueueCore(8, z);
    }

    public final boolean a(Runnable runnable) {
        LockFreeTaskQueue<E> lockFreeTaskQueue;
        while (true) {
            f75121a.getClass();
            Unsafe unsafe = o91.f76733a;
            long j2 = f75122b;
            LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) unsafe.getObjectVolatile(this, j2);
            int iA = lockFreeTaskQueueCore.a(runnable);
            if (iA == 0) {
                return true;
            }
            if (iA == 1) {
                LockFreeTaskQueueCore lockFreeTaskQueueCoreD = lockFreeTaskQueueCore.d();
                while (true) {
                    Unsafe unsafe2 = o91.f76733a;
                    lockFreeTaskQueue = this;
                    if (unsafe2.compareAndSwapObject(lockFreeTaskQueue, f75122b, lockFreeTaskQueueCore, lockFreeTaskQueueCoreD) || unsafe2.getObjectVolatile(lockFreeTaskQueue, j2) != lockFreeTaskQueueCore) {
                        break;
                    }
                    this = lockFreeTaskQueue;
                }
            } else {
                if (iA == 2) {
                    return false;
                }
                lockFreeTaskQueue = this;
            }
            this = lockFreeTaskQueue;
        }
    }

    public final void b() {
        LockFreeTaskQueue<E> lockFreeTaskQueue;
        while (true) {
            f75121a.getClass();
            Unsafe unsafe = o91.f76733a;
            long j2 = f75122b;
            LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) unsafe.getObjectVolatile(this, j2);
            if (lockFreeTaskQueueCore.c()) {
                return;
            }
            LockFreeTaskQueueCore lockFreeTaskQueueCoreD = lockFreeTaskQueueCore.d();
            while (true) {
                Unsafe unsafe2 = o91.f76733a;
                lockFreeTaskQueue = this;
                if (unsafe2.compareAndSwapObject(lockFreeTaskQueue, f75122b, lockFreeTaskQueueCore, lockFreeTaskQueueCoreD) || unsafe2.getObjectVolatile(lockFreeTaskQueue, j2) != lockFreeTaskQueueCore) {
                    break;
                } else {
                    this = lockFreeTaskQueue;
                }
            }
            this = lockFreeTaskQueue;
        }
    }

    public final int c() {
        f75121a.getClass();
        LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) o91.f76733a.getObjectVolatile(this, f75122b);
        lockFreeTaskQueueCore.getClass();
        long j2 = LockFreeTaskQueueCore.g.get(lockFreeTaskQueueCore);
        return 1073741823 & (((int) ((j2 & 1152921503533105152L) >> 30)) - ((int) (1073741823 & j2)));
    }

    public final Object d() {
        LockFreeTaskQueue<E> lockFreeTaskQueue;
        while (true) {
            f75121a.getClass();
            Unsafe unsafe = o91.f76733a;
            long j2 = f75122b;
            LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) unsafe.getObjectVolatile(this, j2);
            Object objE = lockFreeTaskQueueCore.e();
            if (objE != LockFreeTaskQueueCore.f75125h) {
                return objE;
            }
            LockFreeTaskQueueCore lockFreeTaskQueueCoreD = lockFreeTaskQueueCore.d();
            while (true) {
                Unsafe unsafe2 = o91.f76733a;
                lockFreeTaskQueue = this;
                if (unsafe2.compareAndSwapObject(lockFreeTaskQueue, f75122b, lockFreeTaskQueueCore, lockFreeTaskQueueCoreD) || unsafe2.getObjectVolatile(lockFreeTaskQueue, j2) != lockFreeTaskQueueCore) {
                    break;
                }
                this = lockFreeTaskQueue;
            }
            this = lockFreeTaskQueue;
        }
    }
}
