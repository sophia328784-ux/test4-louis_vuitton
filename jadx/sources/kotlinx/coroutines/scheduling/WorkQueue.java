package kotlinx.coroutines.scheduling;

import defpackage.o91;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.bouncycastle.asn1.eac.CertificateBody;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u0013\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0002X\u0082\u0004R\u000b\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004R\u000b\u0010\t\u001a\u00020\u00078\u0002X\u0082\u0004R\u000b\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¨\u0006\u000b"}, d2 = {"Lkotlinx/coroutines/scheduling/WorkQueue;", "", "<init>", "()V", "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/coroutines/scheduling/Task;", "lastScheduledTask", "Lkotlinx/atomicfu/AtomicInt;", "producerIndex", "consumerIndex", "blockingTasksInBuffer", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class WorkQueue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReferenceArray f75176a = new AtomicReferenceArray(128);
    private volatile /* synthetic */ int blockingTasksInBuffer$volatile;
    private volatile /* synthetic */ int consumerIndex$volatile;
    private volatile /* synthetic */ Object lastScheduledTask$volatile;
    private volatile /* synthetic */ int producerIndex$volatile;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f75172b = AtomicReferenceFieldUpdater.newUpdater(WorkQueue.class, Object.class, "lastScheduledTask$volatile");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ long f75175f = o91.f76733a.objectFieldOffset(WorkQueue.class.getDeclaredField("lastScheduledTask$volatile"));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f75173c = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "producerIndex$volatile");
    public static final /* synthetic */ AtomicIntegerFieldUpdater d = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "consumerIndex$volatile");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f75174e = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "blockingTasksInBuffer$volatile");

    public final Task a(Task task, boolean z) {
        if (z) {
            return b(task);
        }
        f75172b.getClass();
        Task task2 = (Task) o91.f76733a.getAndSetObject(this, f75175f, task);
        if (task2 == null) {
            return null;
        }
        return b(task2);
    }

    public final Task b(Task task) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f75173c;
        if (atomicIntegerFieldUpdater.get(this) - d.get(this) == 127) {
            return task;
        }
        if (task.taskContext) {
            f75174e.incrementAndGet(this);
        }
        int i2 = atomicIntegerFieldUpdater.get(this) & CertificateBody.profileType;
        while (true) {
            AtomicReferenceArray atomicReferenceArray = this.f75176a;
            if (atomicReferenceArray.get(i2) == null) {
                atomicReferenceArray.lazySet(i2, task);
                atomicIntegerFieldUpdater.incrementAndGet(this);
                return null;
            }
            Thread.yield();
        }
    }

    public final int c() {
        f75172b.getClass();
        Object objectVolatile = o91.f76733a.getObjectVolatile(this, f75175f);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = d;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater2 = f75173c;
        return objectVolatile != null ? (atomicIntegerFieldUpdater2.get(this) - atomicIntegerFieldUpdater.get(this)) + 1 : atomicIntegerFieldUpdater2.get(this) - atomicIntegerFieldUpdater.get(this);
    }

    public final void d(GlobalQueue globalQueue) {
        f75172b.getClass();
        Task task = (Task) o91.f76733a.getAndSetObject(this, f75175f, (Object) null);
        if (task != null) {
            globalQueue.a(task);
        }
        while (true) {
            Task taskF = f();
            if (taskF == null) {
                return;
            } else {
                globalQueue.a(taskF);
            }
        }
    }

    public final Task e() {
        f75172b.getClass();
        Task task = (Task) o91.f76733a.getAndSetObject(this, f75175f, (Object) null);
        return task == null ? f() : task;
    }

    public final Task f() {
        Task task;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = d;
            int i2 = atomicIntegerFieldUpdater.get(this);
            if (i2 - f75173c.get(this) == 0) {
                return null;
            }
            int i3 = i2 & CertificateBody.profileType;
            if (atomicIntegerFieldUpdater.compareAndSet(this, i2, i2 + 1) && (task = (Task) this.f75176a.getAndSet(i3, null)) != null) {
                if (task.taskContext) {
                    f75174e.decrementAndGet(this);
                }
                return task;
            }
        }
    }

    public final Task g() {
        WorkQueue workQueue;
        while (true) {
            f75172b.getClass();
            Unsafe unsafe = o91.f76733a;
            long j2 = f75175f;
            Task task = (Task) unsafe.getObjectVolatile(this, j2);
            if (task == null || !task.taskContext) {
                break;
            }
            while (true) {
                Unsafe unsafe2 = o91.f76733a;
                workQueue = this;
                if (unsafe2.compareAndSwapObject(workQueue, f75175f, task, (Object) null)) {
                    return task;
                }
                if (unsafe2.getObjectVolatile(workQueue, j2) != task) {
                    break;
                }
                this = workQueue;
            }
            this = workQueue;
        }
        WorkQueue workQueue2 = this;
        int i2 = d.get(workQueue2);
        int i3 = f75173c.get(workQueue2);
        while (i2 != i3 && f75174e.get(workQueue2) != 0) {
            i3--;
            Task taskH = workQueue2.h(i3, true);
            if (taskH != null) {
                return taskH;
            }
        }
        return null;
    }

    public final Task h(int i2, boolean z) {
        int i3 = i2 & CertificateBody.profileType;
        AtomicReferenceArray atomicReferenceArray = this.f75176a;
        Task task = (Task) atomicReferenceArray.get(i3);
        if (task != null && task.taskContext == z) {
            while (!atomicReferenceArray.compareAndSet(i3, task, null)) {
                if (atomicReferenceArray.get(i3) != task) {
                }
            }
            if (z) {
                f75174e.decrementAndGet(this);
            }
            return task;
        }
        return null;
    }

    public final long i(int i2, Ref$ObjectRef ref$ObjectRef) {
        WorkQueue workQueue;
        while (true) {
            f75172b.getClass();
            Unsafe unsafe = o91.f76733a;
            long j2 = f75175f;
            Task task = (Task) unsafe.getObjectVolatile(this, j2);
            if (task == null) {
                return -2L;
            }
            if (((task.taskContext ? 1 : 2) & i2) == 0) {
                return -2L;
            }
            TasksKt.f75170f.getClass();
            long jNanoTime = System.nanoTime() - task.submissionTime;
            long j3 = TasksKt.f75167b;
            if (jNanoTime < j3) {
                return j3 - jNanoTime;
            }
            while (true) {
                Unsafe unsafe2 = o91.f76733a;
                workQueue = this;
                if (unsafe2.compareAndSwapObject(workQueue, f75175f, task, (Object) null)) {
                    ref$ObjectRef.f71921b = task;
                    return -1L;
                }
                if (unsafe2.getObjectVolatile(workQueue, j2) != task) {
                    break;
                }
                this = workQueue;
            }
            this = workQueue;
        }
    }
}
