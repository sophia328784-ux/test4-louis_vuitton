package com.perfectcorp.thirdparty.com.google.common.util.concurrent;

import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import com.perfectcorp.thirdparty.com.google.common.collect.ai;
import com.perfectcorp.thirdparty.com.google.common.collect.by;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
abstract class f<InputT, OutputT> extends b.i<OutputT> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Logger f42416f = Logger.getLogger(f.class.getName());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public j.b.a f42417e;

    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b
    public final String a() {
        ai aiVar;
        j.b.a aVar = this.f42417e;
        if (aVar == null || (aiVar = ((a) aVar).f42418a) == null) {
            return null;
        }
        return "futures=[" + aiVar + "]";
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b
    public final void b() {
        j.b.a aVar = this.f42417e;
        if (aVar != null) {
            this.f42417e = null;
            ai aiVar = ((a) aVar).f42418a;
            boolean zC = c();
            if (isCancelled() && (aiVar != null)) {
                by it = aiVar.iterator();
                while (it.hasNext()) {
                    ((ListenableFuture) it.next()).cancel(zC);
                }
            }
        }
    }

    public abstract class a extends h implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ai<? extends ListenableFuture<? extends InputT>> f42418a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f42419b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f42420c;

        public a(ai<? extends ListenableFuture<? extends InputT>> aiVar, boolean z, boolean z2) {
            super(aiVar.size());
            this.f42418a = aiVar;
            this.f42419b = z;
            this.f42420c = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public void a(int i2, Future<? extends InputT> future) {
            boolean z;
            Object objB;
            Preconditions.h("Future was done before all dependencies completed", this.f42419b || !f.this.isDone() || f.this.isCancelled());
            try {
                Preconditions.h("Tried to set value from future which is not done", future.isDone());
                if (this.f42419b) {
                    if (future.isCancelled()) {
                        f fVar = f.this;
                        fVar.f42417e = null;
                        fVar.cancel(false);
                        return;
                    } else {
                        objB = Futures.b(future);
                        if (!this.f42420c) {
                            return;
                        } else {
                            z = this.f42419b;
                        }
                    }
                } else {
                    if (!this.f42420c || future.isCancelled()) {
                        return;
                    }
                    z = this.f42419b;
                    objB = Futures.b(future);
                }
                a(z, i2, objB);
            } catch (ExecutionException e2) {
                a(e2.getCause());
            } catch (Throwable th) {
                a(th);
            }
        }

        public static /* synthetic */ void b(a aVar) {
            if (aVar.f42418a.isEmpty()) {
                aVar.b();
                return;
            }
            boolean z = aVar.f42419b;
            ai<? extends ListenableFuture<? extends InputT>> aiVar = aVar.f42418a;
            if (!z) {
                by it = aiVar.iterator();
                while (it.hasNext()) {
                    ((ListenableFuture) it.next()).addListener(aVar, k.f42431a);
                }
                return;
            }
            by it2 = aiVar.iterator();
            int i2 = 0;
            while (it2.hasNext()) {
                ListenableFuture listenableFuture = (ListenableFuture) it2.next();
                listenableFuture.addListener(new g(aVar, i2, listenableFuture), k.f42431a);
                i2++;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e() {
            int iD = d();
            Preconditions.h("Less than 0 remaining futures", iD >= 0);
            if (iD == 0) {
                f();
            }
        }

        private void f() {
            if (this.f42420c & (!this.f42419b)) {
                by it = this.f42418a.iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    a(i2, (ListenableFuture) it.next());
                    i2++;
                }
            }
            b();
        }

        public abstract void a(boolean z, int i2, InputT inputt);

        public abstract void b();

        @Override // java.lang.Runnable
        public final void run() {
            e();
        }

        public void a() {
            this.f42418a = null;
        }

        private void a(Throwable th) {
            boolean z;
            th.getClass();
            boolean z2 = false;
            if (this.f42419b) {
                boolean exception = f.this.setException(th);
                if (exception) {
                    a();
                    z2 = exception;
                    z = true;
                } else {
                    Set<Throwable> setC = c();
                    Logger logger = f.f42416f;
                    Throwable cause = th;
                    while (true) {
                        if (cause == null) {
                            z2 = true;
                            break;
                        } else if (!setC.add(cause)) {
                            break;
                        } else {
                            cause = cause.getCause();
                        }
                    }
                    boolean z3 = z2;
                    z2 = exception;
                    z = z3;
                }
            } else {
                z = true;
            }
            boolean z4 = th instanceof Error;
            if ((this.f42419b & (!z2) & z) || z4) {
                f.f42416f.log(Level.SEVERE, z4 ? "Input Future failed with Error" : "Got more than one input Future failure. Logging failures after the first", th);
            }
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.h
        public final void a(Set<Throwable> set) {
            if (f.this.isCancelled()) {
                return;
            }
            for (Throwable thD = f.this.d(); thD != null && set.add(thD); thD = thD.getCause()) {
            }
        }
    }
}
