package com.perfectcorp.common.network;

import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.thirdparty.com.google.common.collect.Sets;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Futures;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.SettableFuture;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import com.perfectcorp.thirdparty.io.reactivex.subjects.ReplaySubject;
import com.perfectcorp.thirdparty.io.reactivex.subjects.Subject;
import java.io.File;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseDownloadHandle implements DownloadHandle {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DownloadTask.Key f39298a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final File f39299b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SettableFuture f39300c = new SettableFuture();
    public final Set d = Sets.e();

    public static final class a extends DownloadReport.CompleteReport {
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DownloadTask.Key f39301a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final double f39302b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final File f39303c;

        public b(DownloadTask.Key key, double d, File file) {
            this.f39301a = key;
            this.f39302b = d;
            this.f39303c = file;
        }
    }

    public static final class c extends DownloadReport.ProgressReport {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final b f39304c;

        public c(b bVar) {
            super(bVar.f39301a, Double.valueOf(bVar.f39302b));
            this.f39304c = bVar;
        }
    }

    public static final class d implements Consumer<DownloadReport.ProgressReport> {
        @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
        public final /* bridge */ /* synthetic */ void accept(Object obj) {
        }
    }

    public BaseDownloadHandle(DownloadTask.Key key, File file) {
        this.f39298a = key;
        this.f39299b = file;
    }

    public final void a(double d2) {
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            ((ProgressCallback) it.next()).a(d2);
        }
    }

    public final SettableFuture b() {
        SettableFuture settableFuture = new SettableFuture();
        com.perfectcorp.common.network.a aVar = new com.perfectcorp.common.network.a();
        aVar.f39363c = this;
        aVar.f39361a = settableFuture;
        SettableFuture settableFuture2 = this.f39300c;
        aVar.f39362b = settableFuture2;
        Futures.c(settableFuture2, aVar, CallingThread.ANY);
        return settableFuture;
    }

    @Override // com.perfectcorp.common.network.DownloadHandle
    public boolean cancel() {
        return this.f39300c.cancel(false);
    }

    public final Single d(Consumer consumer, Scheduler scheduler) {
        if (consumer == null) {
            consumer = new d();
        }
        Subject subjectD = ReplaySubject.f().d();
        com.perfectcorp.common.network.b bVar = new com.perfectcorp.common.network.b();
        bVar.f39364a = subjectD;
        bVar.f39365b = this;
        this.d.add(bVar);
        SettableFuture settableFuture = this.f39300c;
        MoreFutures.a(settableFuture, new com.perfectcorp.common.network.c(subjectD, this, settableFuture), CallingThread.ANY);
        a(c());
        Observable observableSubscribeOn = subjectD.subscribeOn(Schedulers.f43170c);
        if (scheduler != null) {
            observableSubscribeOn = observableSubscribeOn.observeOn(scheduler);
        }
        return observableSubscribeOn.map(new f()).doOnNext(consumer).filter(new e()).map(new com.perfectcorp.common.network.d()).b();
    }

    @Override // com.perfectcorp.common.network.DownloadHandle
    public final boolean isCancelled() {
        return this.f39300c.isCancelled();
    }
}
