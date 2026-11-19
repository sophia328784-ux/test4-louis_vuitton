package com.perfectcorp.common.network;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import defpackage.cj;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes3.dex */
final class l implements BlockingQueue<Runnable> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ReentrantLock f39380c;
    public final Condition d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public BlockingQueue f39382f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public NetworkTaskManager.TaskPriority f39381e = NetworkTaskManager.TaskPriority.LOW;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f39379b = new HashMap();

    public static final class a {
        public static void a(String str) {
            if (com.perfectcorp.perfectlib.internal.a.f40371a.requestScheduling) {
                Log.g(3, "TaskPriorityBlockingQueue", str);
            }
        }
    }

    public l() {
        for (NetworkTaskManager.TaskPriority taskPriority : NetworkTaskManager.TaskPriority.values()) {
            this.f39379b.put(taskPriority, new PriorityBlockingQueue(11, new m()));
        }
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f39380c = reentrantLock;
        this.d = reentrantLock.newCondition();
        this.f39382f = f(this.f39381e);
    }

    public final void a(NetworkTaskManager.TaskPriority taskPriority) {
        a.a("[setRunningPriority] start. priority=" + taskPriority);
        ReentrantLock reentrantLock = this.f39380c;
        reentrantLock.lock();
        try {
            this.f39381e = taskPriority;
            this.f39382f = f(taskPriority);
            a.a("[setRunningPriority] signalAll");
            this.d.signalAll();
            reentrantLock.unlock();
            a.a("[setRunningPriority] end");
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Queue, java.util.Collection
    public final /* synthetic */ boolean add(Object obj) {
        a.a("[add]");
        return offer((Runnable) obj);
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        a.a("[addAll] start");
        ReentrantLock reentrantLock = this.f39380c;
        reentrantLock.lock();
        try {
            Iterator it = collection.iterator();
            boolean zOffer = false;
            while (it.hasNext()) {
                zOffer |= offer((Runnable) it.next());
            }
            reentrantLock.unlock();
            a.a("[addAll] end");
            return zOffer;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Queue
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final boolean offer(Runnable runnable) {
        a.a("[offer] start. r=" + runnable);
        j jVar = (j) runnable;
        ReentrantLock reentrantLock = this.f39380c;
        reentrantLock.lock();
        try {
            a.a("[offer] offer");
            boolean zOffer = f(jVar.b()).offer(jVar);
            a.a("[offer] offered=" + zOffer + ", task.getPriority()=" + jVar.b() + ", runningPriority=" + this.f39381e);
            if (zOffer && jVar.b() == this.f39381e) {
                a.a("[offer] signal");
                this.d.signal();
            }
            return zOffer;
        } finally {
            reentrantLock.unlock();
            a.a("[offer] end");
        }
    }

    @Override // java.util.Collection
    public final void clear() {
        a.a("[clear] start");
        ReentrantLock reentrantLock = this.f39380c;
        reentrantLock.lock();
        try {
            for (NetworkTaskManager.TaskPriority taskPriority : NetworkTaskManager.TaskPriority.values()) {
                f(taskPriority).clear();
            }
            reentrantLock.unlock();
            a.a("[clear] end");
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Collection
    public final boolean contains(Object obj) {
        a.a(cj.i(obj, "[contains] start. o="));
        ReentrantLock reentrantLock = this.f39380c;
        reentrantLock.lock();
        try {
            for (NetworkTaskManager.TaskPriority taskPriority : NetworkTaskManager.TaskPriority.values()) {
                if (f(taskPriority).contains(obj)) {
                    return true;
                }
            }
            return false;
        } finally {
            reentrantLock.unlock();
            a.a("[contains] end");
        }
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        a.a("[containsAll] start. c=" + collection);
        ReentrantLock reentrantLock = this.f39380c;
        reentrantLock.lock();
        try {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        } finally {
            reentrantLock.unlock();
            a.a("[containsAll] end");
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public final int drainTo(Collection<? super Runnable> collection, int i2) {
        a.a("[drainTo] strat. c=" + collection + ", maxElements=" + i2);
        ReentrantLock reentrantLock = this.f39380c;
        reentrantLock.lock();
        try {
            int iDrainTo = 0;
            for (NetworkTaskManager.TaskPriority taskPriority : NetworkTaskManager.TaskPriority.values()) {
                iDrainTo += f(taskPriority).drainTo(collection, i2);
            }
            reentrantLock.unlock();
            a.a("[drainTo] end");
            return iDrainTo;
        } catch (Throwable th) {
            reentrantLock.unlock();
            a.a("[drainTo] end");
            throw th;
        }
    }

    @Override // java.util.Queue
    public final Object element() {
        a.a("[element] start");
        ReentrantLock reentrantLock = this.f39380c;
        reentrantLock.lock();
        try {
            return (Runnable) f(this.f39381e).element();
        } finally {
            reentrantLock.unlock();
            a.a("[element] end");
        }
    }

    public final BlockingQueue f(NetworkTaskManager.TaskPriority taskPriority) {
        return (BlockingQueue) this.f39379b.get(taskPriority);
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        a.a("[isEmpty] start");
        ReentrantLock reentrantLock = this.f39380c;
        reentrantLock.lock();
        try {
            for (NetworkTaskManager.TaskPriority taskPriority : NetworkTaskManager.TaskPriority.values()) {
                if (!f(taskPriority).isEmpty()) {
                    return false;
                }
            }
            return true;
        } finally {
            reentrantLock.unlock();
            a.a("[isEmpty] end");
        }
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        a.a("[iterator] start");
        ReentrantLock reentrantLock = this.f39380c;
        reentrantLock.lock();
        try {
            Object[] array = toArray();
            ArrayList arrayList = new ArrayList();
            for (Object obj : array) {
                arrayList.add((Runnable) obj);
            }
            return arrayList.iterator();
        } finally {
            reentrantLock.unlock();
            a.a("[iterator] end");
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public final boolean offer(Runnable runnable, long j2, TimeUnit timeUnit) {
        Runnable runnable2 = runnable;
        a.a("[offer] start. r=" + runnable2 + ", timeout=" + j2 + ", unit=" + timeUnit);
        j jVar = (j) runnable2;
        ReentrantLock reentrantLock = this.f39380c;
        reentrantLock.lock();
        try {
            a.a("[offer] offer");
            boolean zOffer = f(jVar.b()).offer(jVar, j2, timeUnit);
            a.a("[offer] offered=" + zOffer + ", task.getPriority()=" + jVar.b() + ", runningPriority=" + this.f39381e);
            if (zOffer && jVar.b() == this.f39381e) {
                a.a("[offer] signal");
                this.d.signal();
            }
            return zOffer;
        } finally {
            reentrantLock.unlock();
            a.a("[offer] end");
        }
    }

    @Override // java.util.Queue
    public final Object peek() {
        a.a("[peek] start");
        ReentrantLock reentrantLock = this.f39380c;
        reentrantLock.lock();
        try {
            return (Runnable) f(this.f39381e).peek();
        } finally {
            reentrantLock.unlock();
            a.a("[peek] end");
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public final Runnable poll(long j2, TimeUnit timeUnit) throws InterruptedException {
        Runnable runnable;
        a.a("[poll] start. timeout=" + j2 + ", unit=" + timeUnit);
        long nanos = timeUnit.toNanos(j2);
        ReentrantLock reentrantLock = this.f39380c;
        reentrantLock.lockInterruptibly();
        while (true) {
            try {
                runnable = (Runnable) f(this.f39381e).poll();
                if (runnable != null || nanos <= 0) {
                    break;
                }
                a.a("[poll] awaitNanos");
                nanos = this.d.awaitNanos(nanos);
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        a.a("[poll] end. result=" + runnable);
        return runnable;
    }

    @Override // java.util.concurrent.BlockingQueue
    public final /* synthetic */ void put(Runnable runnable) {
        a.a("[put]");
        offer(runnable);
    }

    @Override // java.util.concurrent.BlockingQueue
    public final int remainingCapacity() {
        a.a("[remainingCapacity] start");
        ReentrantLock reentrantLock = this.f39380c;
        reentrantLock.lock();
        try {
            return f(this.f39381e).remainingCapacity();
        } finally {
            reentrantLock.unlock();
            a.a("[remainingCapacity] end");
        }
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Collection
    public final boolean remove(Object obj) {
        a.a(cj.i(obj, "[remove] start. o="));
        ReentrantLock reentrantLock = this.f39380c;
        reentrantLock.lock();
        try {
            if (!(obj instanceof j)) {
                return false;
            }
            j jVar = (j) obj;
            return f(jVar.b()).remove(jVar);
        } finally {
            reentrantLock.unlock();
            a.a("[remove] end");
        }
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        a.a("[removeAll] start. c=" + collection);
        ReentrantLock reentrantLock = this.f39380c;
        reentrantLock.lock();
        try {
            Iterator it = collection.iterator();
            boolean zRemove = false;
            while (it.hasNext()) {
                zRemove |= remove(it.next());
            }
            reentrantLock.unlock();
            a.a("[removeAll] end");
            return zRemove;
        } catch (Throwable th) {
            reentrantLock.unlock();
            a.a("[removeAll] end");
            throw th;
        }
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        a.a("[retainAll] start. c=" + collection);
        ReentrantLock reentrantLock = this.f39380c;
        reentrantLock.lock();
        try {
            boolean zRetainAll = false;
            for (NetworkTaskManager.TaskPriority taskPriority : NetworkTaskManager.TaskPriority.values()) {
                zRetainAll |= f(taskPriority).retainAll(collection);
            }
            reentrantLock.unlock();
            a.a("[retainAll] end");
            return zRetainAll;
        } catch (Throwable th) {
            reentrantLock.unlock();
            a.a("[retainAll] end");
            throw th;
        }
    }

    @Override // java.util.Collection
    public final int size() {
        a.a("[size] start");
        ReentrantLock reentrantLock = this.f39380c;
        reentrantLock.lock();
        try {
            int size = 0;
            for (NetworkTaskManager.TaskPriority taskPriority : NetworkTaskManager.TaskPriority.values()) {
                size += f(taskPriority).size();
            }
            a.a("[size] size=" + size);
            return size;
        } finally {
            reentrantLock.unlock();
            a.a("[size] end");
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public final Runnable take() throws InterruptedException {
        a.a("[take] start");
        ReentrantLock reentrantLock = this.f39380c;
        reentrantLock.lockInterruptibly();
        while (true) {
            try {
                Runnable runnable = (Runnable) f(this.f39381e).poll();
                if (runnable != null) {
                    reentrantLock.unlock();
                    a.a("[take] end. result=" + runnable);
                    return runnable;
                }
                a.a("[take] await");
                this.d.await();
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        a.a("[toArray] start");
        ReentrantLock reentrantLock = this.f39380c;
        reentrantLock.lock();
        try {
            ArrayList arrayList = new ArrayList();
            for (NetworkTaskManager.TaskPriority taskPriority : NetworkTaskManager.TaskPriority.values()) {
                arrayList.addAll(Lists.a(f(taskPriority).toArray()));
            }
            return arrayList.toArray(new Object[0]);
        } finally {
            reentrantLock.unlock();
            a.a("[toArray] end");
        }
    }

    @Override // java.util.Queue
    public final Object remove() {
        a.a("[remove] start");
        ReentrantLock reentrantLock = this.f39380c;
        reentrantLock.lock();
        try {
            return (Runnable) this.f39382f.remove();
        } finally {
            reentrantLock.unlock();
            a.a("[remove] end");
        }
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        a.a("[toArray(T[])] start");
        ReentrantLock reentrantLock = this.f39380c;
        reentrantLock.lock();
        try {
            ArrayList arrayList = new ArrayList();
            for (NetworkTaskManager.TaskPriority taskPriority : NetworkTaskManager.TaskPriority.values()) {
                arrayList.addAll(Lists.a(f(taskPriority).toArray()));
            }
            return arrayList.toArray(objArr);
        } finally {
            reentrantLock.unlock();
            a.a("[toArray(T[])] end");
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public final int drainTo(Collection<? super Runnable> collection) {
        a.a("[drainTo] c=" + collection);
        return drainTo(collection, Integer.MAX_VALUE);
    }

    @Override // java.util.Queue
    public final Object poll() {
        a.a("[poll] start");
        ReentrantLock reentrantLock = this.f39380c;
        reentrantLock.lock();
        try {
            return (Runnable) this.f39382f.poll();
        } finally {
            reentrantLock.unlock();
            a.a("[poll] end");
        }
    }
}
