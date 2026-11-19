package com.perfectcorp.common.network;

import com.perfectcorp.common.utility.Log;
import defpackage.md;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes3.dex */
final class k extends ThreadPoolExecutor implements AutoCloseable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l f39376b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public NetworkTaskManager.TaskPriority f39377c;
    public final ReentrantLock d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashSet f39378e;

    public static final class a {
        public static void a(String str) {
            if (com.perfectcorp.perfectlib.internal.a.f40371a.requestScheduling) {
                Log.g(3, "NetworkTaskExecutor", str);
            }
        }
    }

    public k(int i2, int i3, long j2, TimeUnit timeUnit, l lVar, ThreadFactory threadFactory) {
        super(i2, i3, j2, timeUnit, lVar, threadFactory);
        this.f39377c = NetworkTaskManager.TaskPriority.LOW;
        this.d = new ReentrantLock();
        this.f39378e = new HashSet();
        this.f39376b = lVar;
        lVar.a(this.f39377c);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public final void afterExecute(Runnable runnable, Throwable th) {
        StringBuilder sb = new StringBuilder("[afterExecute] start. runningTasks.size()=");
        HashSet hashSet = this.f39378e;
        sb.append(hashSet.size());
        sb.append(", taskQueue.size()=");
        l lVar = this.f39376b;
        sb.append(lVar.size());
        a.a(sb.toString());
        super.afterExecute(runnable, th);
        ReentrantLock reentrantLock = this.d;
        reentrantLock.lock();
        try {
            j jVar = (j) runnable;
            if (!jVar.e()) {
                a.a("[afterExecute] remove from runningTasks");
                hashSet.remove(runnable);
            }
            a.a("[afterExecute] checking priority. runningTasks.size()=" + hashSet.size());
            NetworkTaskManager.TaskPriority taskPriorityB = NetworkTaskManager.TaskPriority.LOW;
            Iterator it = hashSet.iterator();
            boolean z = true;
            while (it.hasNext()) {
                j jVar2 = (j) ((Runnable) it.next());
                if (jVar2.b() == this.f39377c) {
                    a.a("[afterExecute] has same priority task");
                    z = false;
                } else {
                    a.a("[afterExecute] higher priority found");
                    if (taskPriorityB.compareTo(jVar2.b()) <= 0) {
                        taskPriorityB = jVar2.b();
                    }
                }
            }
            a.a("[afterExecute] resetPriority=" + z + ", nextPriority=" + taskPriorityB + ", runningPriority=" + this.f39377c);
            if (z && taskPriorityB != this.f39377c) {
                a.a("[afterExecute] update priority to " + taskPriorityB);
                c(taskPriorityB);
            }
            if (jVar.e()) {
                a.a("[afterExecute] networkTask resume start");
                jVar.f();
                if (!lVar.offer(jVar)) {
                    a.a("[afterExecute] networkTask offer failed");
                    jVar.a(new RejectedExecutionException("offer task queue failed"));
                }
                a.a("[afterExecute] networkTask resume end");
            }
            reentrantLock.unlock();
            a.a("[afterExecute] end. runningTasks.size()=" + hashSet.size() + ", taskQueue.size()=" + lVar.size());
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    public final void c(NetworkTaskManager.TaskPriority taskPriority) {
        a.a("[setRunningPriority] start. priority=" + taskPriority);
        this.f39376b.a(taskPriority);
        a.a("[setRunningPriority] priority of queue updated");
        this.f39377c = taskPriority;
        a.a("[setRunningPriority] end");
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        boolean zIsTerminated;
        if (this == ForkJoinPool.commonPool() || (zIsTerminated = isTerminated())) {
            return;
        }
        shutdown();
        boolean z = false;
        while (!zIsTerminated) {
            try {
                zIsTerminated = awaitTermination(1L, TimeUnit.DAYS);
            } catch (InterruptedException unused) {
                if (!z) {
                    shutdownNow();
                    z = true;
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        StringBuilder sb = new StringBuilder("[execute] start. r=");
        sb.append(runnable);
        sb.append(", runningTasks.size()=");
        HashSet hashSet = this.f39378e;
        sb.append(hashSet.size());
        sb.append(", taskQueue.size()=");
        l lVar = this.f39376b;
        sb.append(lVar.size());
        a.a(sb.toString());
        if (!(runnable instanceof j)) {
            md.n("Runnable must be NetworkTask instance");
            return;
        }
        ReentrantLock reentrantLock = this.d;
        reentrantLock.lock();
        try {
            j jVar = (j) runnable;
            a.a("[execute] add to runningTasks");
            hashSet.add(jVar);
            a.a("[execute] check priority. runningPriority=" + this.f39377c + ", task.getPriority()=" + jVar.b());
            if (this.f39377c.compareTo(jVar.b()) < 0) {
                a.a("[execute] need to promote priority");
                c(jVar.b());
                a.a("[pauseRunningTasks] start");
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    j jVar2 = (j) ((Runnable) it.next());
                    if (jVar2.b().compareTo(this.f39377c) < 0) {
                        jVar2.d();
                    }
                }
                a.a("[pauseRunningTasks] end");
            }
            a.a("[execute] super.execute()");
            super.execute(jVar);
            reentrantLock.unlock();
            a.a("[execute] end. r=" + runnable + ", runningTasks.size()=" + hashSet.size() + ", taskQueue.size()=" + lVar.size());
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
