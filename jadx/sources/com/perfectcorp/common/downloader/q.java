package com.perfectcorp.common.downloader;

import com.perfectcorp.thirdparty.com.google.common.collect.at;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
final class q implements BlockingQueue<Runnable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayBlockingQueue f39253b = new ArrayBlockingQueue(8);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PriorityBlockingQueue f39254c = new PriorityBlockingQueue(8, new r());
    public Object d;

    @Override // java.util.concurrent.BlockingQueue, java.util.Queue, java.util.Collection
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final synchronized boolean add(Runnable runnable) {
        boolean zAdd;
        zAdd = this.f39254c.add(runnable);
        if (zAdd) {
            notifyAll();
        }
        return zAdd;
    }

    @Override // java.util.Collection
    public final synchronized boolean addAll(Collection collection) {
        boolean zAddAll;
        zAddAll = this.f39254c.addAll(collection);
        if (zAddAll) {
            notifyAll();
        }
        return zAddAll;
    }

    @Override // java.util.Collection
    public final synchronized void clear() {
        this.f39253b.clear();
        this.f39254c.clear();
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Collection
    public final synchronized boolean contains(Object obj) {
        return this.f39253b.contains(obj) || this.f39254c.contains(obj);
    }

    @Override // java.util.Collection
    public final synchronized boolean containsAll(Collection collection) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        arrayList.addAll(this.f39253b);
        arrayList.addAll(this.f39254c);
        return arrayList.containsAll(collection);
    }

    @Override // java.util.concurrent.BlockingQueue
    public final synchronized int drainTo(Collection<? super Runnable> collection) {
        return this.f39253b.drainTo(collection) + this.f39254c.drainTo(collection);
    }

    @Override // java.util.Queue
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final synchronized Runnable poll() {
        Runnable runnable = (Runnable) this.f39253b.poll();
        if (runnable != null) {
            return runnable;
        }
        return (Runnable) this.f39254c.poll();
    }

    public final synchronized HashSet h(Iterable iterable, Object obj) {
        HashSet hashSet;
        try {
            hashSet = new HashSet();
            Iterator it = this.f39254c.iterator();
            while (it.hasNext()) {
                p pVar = (p) it.next();
                if (pVar.j() == obj) {
                    hashSet.add(pVar);
                    it.remove();
                }
            }
            Iterator it2 = this.f39253b.iterator();
            while (it2.hasNext()) {
                p pVar2 = (p) it2.next();
                if (pVar2.j() == obj) {
                    hashSet.add(pVar2);
                    it2.remove();
                }
            }
            Iterator it3 = iterable.iterator();
            while (it3.hasNext()) {
                p pVar3 = (p) ((Runnable) it3.next());
                if (pVar3.j() == obj) {
                    pVar3.k();
                    if (!pVar3.isDone()) {
                        hashSet.add(pVar3);
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return hashSet;
    }

    @Override // java.util.Queue
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public final synchronized Runnable element() {
        if (this.f39253b.isEmpty()) {
            return (Runnable) this.f39254c.element();
        }
        return (Runnable) this.f39253b.element();
    }

    @Override // java.util.Collection
    public final synchronized boolean isEmpty() {
        return this.f39253b.isEmpty() && this.f39254c.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final synchronized Iterator iterator() {
        return at.a(this.f39253b.iterator(), this.f39254c.iterator());
    }

    public final synchronized void l(ListenableFuture listenableFuture, Iterable iterable) {
        try {
            Objects.requireNonNull(listenableFuture, "key == null");
            if (listenableFuture != this.d) {
                this.d = listenableFuture;
                this.f39253b.drainTo(this.f39254c);
                Iterator it = this.f39254c.iterator();
                while (it.hasNext()) {
                    p pVar = (p) it.next();
                    if (pVar.j() == listenableFuture) {
                        this.f39253b.add(pVar);
                        it.remove();
                    }
                }
                Iterator it2 = iterable.iterator();
                while (it2.hasNext()) {
                    p pVar2 = (p) ((Runnable) it2.next());
                    if (pVar2.j() != listenableFuture) {
                        pVar2.h();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Queue
    public final boolean offer(Object obj) {
        boolean zOffer;
        Runnable runnable = (Runnable) obj;
        synchronized (this) {
            zOffer = this.f39254c.offer(runnable);
            if (zOffer) {
                notifyAll();
            }
        }
        return zOffer;
    }

    @Override // java.util.Queue
    public final Object peek() {
        Runnable runnableElement;
        synchronized (this) {
            try {
                runnableElement = element();
            } catch (NoSuchElementException unused) {
                return null;
            }
        }
        return runnableElement;
    }

    @Override // java.util.concurrent.BlockingQueue
    public final Runnable poll(long j2, TimeUnit timeUnit) {
        synchronized (this) {
            Runnable runnable = (Runnable) this.f39253b.poll(j2, timeUnit);
            if (runnable != null) {
                return runnable;
            }
            return (Runnable) this.f39254c.poll();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public final void put(Runnable runnable) {
        Runnable runnable2 = runnable;
        synchronized (this) {
            this.f39254c.put(runnable2);
            notifyAll();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public final synchronized int remainingCapacity() {
        return Integer.MAX_VALUE;
    }

    @Override // java.util.Queue
    public final Object remove() {
        synchronized (this) {
            if (this.f39253b.isEmpty()) {
                return (Runnable) this.f39254c.remove();
            }
            return (Runnable) this.f39253b.remove();
        }
    }

    @Override // java.util.Collection
    public final synchronized boolean removeAll(Collection collection) {
        return this.f39253b.removeAll(collection) || this.f39254c.removeAll(collection);
    }

    @Override // java.util.Collection
    public final synchronized boolean retainAll(Collection collection) {
        return this.f39253b.retainAll(collection) || this.f39254c.retainAll(collection);
    }

    @Override // java.util.Collection
    public final synchronized int size() {
        return this.f39253b.size() + this.f39254c.size();
    }

    @Override // java.util.concurrent.BlockingQueue
    public final Runnable take() {
        Runnable runnablePoll;
        synchronized (this) {
            while (isEmpty()) {
                try {
                    wait();
                } catch (Throwable th) {
                    throw th;
                }
            }
            runnablePoll = poll();
        }
        return runnablePoll;
    }

    @Override // java.util.Collection
    public final synchronized Object[] toArray() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        arrayList.addAll(this.f39253b);
        arrayList.addAll(this.f39254c);
        return arrayList.toArray();
    }

    @Override // java.util.concurrent.BlockingQueue
    public final synchronized int drainTo(Collection<? super Runnable> collection, int i2) {
        return this.f39253b.drainTo(collection, i2) + this.f39254c.drainTo(collection, i2);
    }

    @Override // java.util.concurrent.BlockingQueue
    public final boolean offer(Runnable runnable, long j2, TimeUnit timeUnit) {
        boolean zOffer;
        Runnable runnable2 = runnable;
        synchronized (this) {
            zOffer = this.f39254c.offer(runnable2, j2, timeUnit);
            if (zOffer) {
                notifyAll();
            }
        }
        return zOffer;
    }

    @Override // java.util.Collection
    public final synchronized Object[] toArray(Object[] objArr) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        arrayList.addAll(this.f39253b);
        arrayList.addAll(this.f39254c);
        return arrayList.toArray(objArr);
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Collection
    public final synchronized boolean remove(Object obj) {
        return this.f39253b.remove(obj) || this.f39254c.remove(obj);
    }
}
