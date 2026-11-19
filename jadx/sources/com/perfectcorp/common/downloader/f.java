package com.perfectcorp.common.downloader;

import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.concurrent.NamedThreadFactory;
import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Futures;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFutureTask;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.SettableFuture;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Uninterruptibles;
import defpackage.fc;
import defpackage.r81;
import java.io.File;
import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class f {
    public static final AtomicInteger m = new AtomicInteger();
    public static final ThreadPoolExecutor n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s f39217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final URI f39218c;
    public final File d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ListenableFuture f39219e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final o f39220f;
    public final SettableFuture g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f39221h;
    public p.f l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f39216a = m.getAndIncrement();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f39222i = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f39223j = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f39224k = 0;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f39225a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f39226b;

        public b(com.perfectcorp.common.downloader.c cVar) {
            com.perfectcorp.common.downloader.c.C0118c c0118cB = cVar.b();
            int i2 = c0118cB.f39203a;
            this.f39225a = c0118cB.f39204b;
            this.f39226b = c0118cB.f39205c;
            try {
                Uninterruptibles.a(cVar);
            } catch (ExecutionException e2) {
                e2.getCause();
            } catch (Throwable unused) {
            }
        }
    }

    public static class d {
    }

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(8, 8, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(), NamedThreadFactory.b("AttemptDownloadExecutor"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        n = threadPoolExecutor;
    }

    public f(e eVar) {
        s sVar = eVar.f39211a;
        Objects.requireNonNull(sVar, "executor == null");
        this.f39217b = sVar;
        URI uri = eVar.f39212b;
        Objects.requireNonNull(uri, "downloadUri == null");
        this.f39218c = uri;
        File file = eVar.f39213c;
        Objects.requireNonNull(file, "downloadTarget == null");
        this.d = file;
        this.f39219e = eVar.d;
        this.f39220f = eVar.f39214e;
        this.g = eVar.f39215f;
        this.f39221h = eVar.g;
    }

    public final ListenableFutureTask a() {
        Object obj;
        int i2 = this.f39216a;
        URI uri = this.f39218c;
        if (this.f39224k != 0) {
            r81.c(this.f39224k, "current status is ");
            return null;
        }
        this.f39224k = 1;
        p.f fVar = new p.f(uri, this.d);
        Object obj2 = this.f39219e;
        if (obj2 == null) {
            obj = obj2;
            obj = this;
        }
        obj = obj2;
        fVar.f39251c = obj;
        o oVar = this.f39220f;
        Objects.requireNonNull(oVar, "priority == null");
        fVar.d = oVar;
        fVar.f39252e = this.f39221h;
        this.l = fVar;
        Log.g(3, "MultiPartTaskManager", "[start#" + i2 + "] builder downloadUri=" + uri);
        long jNanoTime = System.nanoTime();
        Log.g(3, "MultiPartTaskManager", "[addDownloadTasksWithoutKnownSize#" + i2 + "] start");
        j jVar = new j(this, this.l, 2);
        synchronized (this.f39217b.f39255b) {
            this.f39222i.add(jVar);
        }
        synchronized (this.f39217b.f39255b) {
            this.f39223j.add(jVar);
        }
        g gVar = new g(this, 1);
        CallingThread callingThread = CallingThread.ANY;
        MoreFutures.a(jVar, gVar, callingThread);
        ArrayList arrayList = this.f39222i;
        StringBuilder sbQ = fc.q(i2, "[executeDownloadTask#", "] task count:");
        sbQ.append(arrayList.size());
        Log.g(3, "MultiPartTaskManager", sbQ.toString());
        System.nanoTime();
        b(arrayList, true);
        ListenableFuture listenableFutureD = Futures.d(arrayList);
        ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(new c(this, listenableFutureD, (byte) 0));
        listenableFutureD.addListener(listenableFutureTaskCreate, callingThread);
        l lVar = new l();
        lVar.f39232a = listenableFutureTaskCreate;
        lVar.f39233b = listenableFutureD;
        Futures.c(listenableFutureTaskCreate, lVar, callingThread);
        MoreFutures.a(listenableFutureTaskCreate, new m(this, jNanoTime), callingThread);
        return listenableFutureTaskCreate;
    }

    public final void b(List list, boolean z) {
        ListenableFuture listenableFuture;
        Log.g(3, "MultiPartTaskManager", "[submitToExecutor#" + this.f39216a + "] task count:" + list.size());
        synchronized (this.f39217b.f39255b) {
            try {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    this.f39217b.execute((p) it.next());
                }
                if (z && (listenableFuture = this.f39219e) != null) {
                    s sVar = this.f39217b;
                    synchronized (sVar.f39255b) {
                        q qVar = sVar.f39255b;
                        Set set = sVar.f39256c;
                        synchronized (qVar) {
                            if (listenableFuture == qVar.d) {
                                qVar.l(listenableFuture, set);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final double c() {
        double size;
        double dF = 0.0d;
        if (this.f39222i.isEmpty()) {
            return 0.0d;
        }
        synchronized (this.f39217b.f39255b) {
            try {
                Iterator it = this.f39222i.iterator();
                while (it.hasNext()) {
                    dF += ((p) it.next()).f();
                }
                size = dF / ((double) this.f39222i.size());
            } catch (Throwable th) {
                throw th;
            }
        }
        return size;
    }

    public final class c implements Callable<d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Future<?> f39227a;

        private c(Future<?> future) {
            this.f39227a = future;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public d call() throws Exception {
            Iterator it = f.this.f39222i.iterator();
            while (it.hasNext()) {
                ((ListenableFuture) it.next()).cancel(false);
            }
            try {
                Uninterruptibles.a(this.f39227a);
                f fVar = f.this;
                URI uri = fVar.f39218c;
                File file = fVar.d;
                ArrayList arrayList = new ArrayList();
                Iterator it2 = f.this.f39223j.iterator();
                while (it2.hasNext()) {
                    arrayList.add(new b((com.perfectcorp.common.downloader.c) it2.next()));
                }
                d dVar = new d();
                if (file != null) {
                    MoreCollections.a(arrayList);
                }
                return dVar;
            } catch (ExecutionException e2) {
                Log.e("MultiPartTaskManager", defpackage.a.i(f.this.f39216a, "] call", new StringBuilder("[FinalReportCallable#")), e2.getCause());
                f.this.d.delete();
                throw e2.getCause();
            } catch (Throwable th) {
                Log.e("MultiPartTaskManager", "[FinalReportCallable#" + f.this.f39216a + "] call", th);
                f.this.d.delete();
                throw th;
            }
        }

        public /* synthetic */ c(f fVar, Future future, byte b2) {
            this(future);
        }
    }
}
