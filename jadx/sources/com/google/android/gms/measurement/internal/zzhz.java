package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.md;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhz extends zzjf {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final AtomicLong f31830k = new AtomicLong(Long.MIN_VALUE);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public zzhy f31831c;
    public zzhy d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PriorityBlockingQueue f31832e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinkedBlockingQueue f31833f;
    public final Thread.UncaughtExceptionHandler g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Thread.UncaughtExceptionHandler f31834h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f31835i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Semaphore f31836j;

    public zzhz(zzic zzicVar) {
        super(zzicVar);
        this.f31835i = new Object();
        this.f31836j = new Semaphore(2);
        this.f31832e = new PriorityBlockingQueue();
        this.f31833f = new LinkedBlockingQueue();
        this.g = new zzhw(this, "Thread death: Uncaught exception on worker thread");
        this.f31834h = new zzhw(this, "Thread death: Uncaught exception on network thread");
    }

    @Override // com.google.android.gms.measurement.internal.zzje
    public final void g() {
        if (Thread.currentThread() == this.f31831c) {
            return;
        }
        md.k("Call expected from worker thread");
    }

    @Override // com.google.android.gms.measurement.internal.zzjf
    public final boolean h() {
        return false;
    }

    public final void k() {
        if (Thread.currentThread() == this.d) {
            return;
        }
        md.k("Call expected from network thread");
    }

    public final void l() {
        if (Thread.currentThread() != this.f31831c) {
            return;
        }
        md.k("Call not expected from worker thread");
    }

    public final boolean m() {
        return Thread.currentThread() == this.f31831c;
    }

    public final Future n(Callable callable) {
        i();
        zzhx zzhxVar = new zzhx(this, callable, false, "Task exception on worker thread");
        if (Thread.currentThread() != this.f31831c) {
            t(zzhxVar);
            return zzhxVar;
        }
        if (!this.f31832e.isEmpty()) {
            zzgu zzguVar = this.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31771i.a("Callable skipped the worker queue.");
        }
        zzhxVar.run();
        return zzhxVar;
    }

    public final Future o(Callable callable) {
        i();
        zzhx zzhxVar = new zzhx(this, callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.f31831c) {
            zzhxVar.run();
            return zzhxVar;
        }
        t(zzhxVar);
        return zzhxVar;
    }

    public final void p(Runnable runnable) {
        i();
        Preconditions.h(runnable);
        t(new zzhx(this, runnable, false, "Task exception on worker thread"));
    }

    public final Object q(AtomicReference atomicReference, long j2, String str, Runnable runnable) {
        synchronized (atomicReference) {
            zzhz zzhzVar = this.f31850a.g;
            zzic.m(zzhzVar);
            zzhzVar.p(runnable);
            try {
                atomicReference.wait(j2);
            } catch (InterruptedException unused) {
                zzgu zzguVar = this.f31850a.f31842f;
                zzic.m(zzguVar);
                zzgs zzgsVar = zzguVar.f31771i;
                StringBuilder sb = new StringBuilder(str.length() + 24);
                sb.append("Interrupted waiting for ");
                sb.append(str);
                zzgsVar.a(sb.toString());
                return null;
            }
        }
        Object obj = atomicReference.get();
        if (obj == null) {
            zzgu zzguVar2 = this.f31850a.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.f31771i.a("Timed out waiting for ".concat(str));
        }
        return obj;
    }

    public final void r(Runnable runnable) {
        i();
        t(new zzhx(this, runnable, true, "Task exception on worker thread"));
    }

    public final void s(Runnable runnable) {
        i();
        zzhx zzhxVar = new zzhx(this, runnable, false, "Task exception on network thread");
        synchronized (this.f31835i) {
            try {
                LinkedBlockingQueue linkedBlockingQueue = this.f31833f;
                linkedBlockingQueue.add(zzhxVar);
                zzhy zzhyVar = this.d;
                if (zzhyVar == null) {
                    zzhy zzhyVar2 = new zzhy(this, "Measurement Network", linkedBlockingQueue);
                    this.d = zzhyVar2;
                    zzhyVar2.setUncaughtExceptionHandler(this.f31834h);
                    this.d.start();
                } else {
                    zzhyVar.zza();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void t(zzhx zzhxVar) {
        synchronized (this.f31835i) {
            try {
                PriorityBlockingQueue priorityBlockingQueue = this.f31832e;
                priorityBlockingQueue.add(zzhxVar);
                zzhy zzhyVar = this.f31831c;
                if (zzhyVar == null) {
                    zzhy zzhyVar2 = new zzhy(this, "Measurement Worker", priorityBlockingQueue);
                    this.f31831c = zzhyVar2;
                    zzhyVar2.setUncaughtExceptionHandler(this.g);
                    this.f31831c.start();
                } else {
                    zzhyVar.zza();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
