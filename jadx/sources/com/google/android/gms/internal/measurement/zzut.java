package com.google.android.gms.internal.measurement;

import android.net.Uri;
import com.google.common.base.Function;
import com.google.common.base.Functions;
import com.google.common.base.Stopwatch;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.AsyncCallable;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.ExecutionSequencer;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListeningScheduledExecutorService;
import com.google.common.util.concurrent.MoreExecutors;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzut {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f30989a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ListenableFuture f30990b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzuv f30991c;
    public final ExecutionSequencer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzvm f30992e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final zzvm f30993f;
    public final Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final zzwb f30994h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List f30995i;

    public zzut(zzuv zzuvVar, ListenableFuture listenableFuture) {
        final zztp zztpVar = (zztp) this;
        this.f30993f = new zzvm(new zzul(zztpVar), MoreExecutors.b());
        Object obj = new Object();
        this.g = obj;
        this.f30995i = new ArrayList();
        this.f30991c = zzuvVar;
        this.f30990b = listenableFuture;
        this.f30989a = zzuvVar.f0();
        final zzui zzuiVar = (zzui) zzuvVar;
        this.f30992e = new zzvm(new AsyncCallable() { // from class: com.google.android.gms.internal.measurement.zzuh
            @Override // com.google.common.util.concurrent.AsyncCallable
            public final ListenableFuture call() {
                final zzui zzuiVar2 = zzuiVar;
                zzuiVar2.getClass();
                AsyncFunction asyncFunction = new AsyncFunction() { // from class: com.google.android.gms.internal.measurement.zzug
                    @Override // com.google.common.util.concurrent.AsyncFunction
                    public final ListenableFuture apply(Object obj2) {
                        Uri uri = (Uri) obj2;
                        zzui zzuiVar3 = zzuiVar2;
                        zzuiVar3.getClass();
                        Uri uriBuild = uri.buildUpon().path(String.valueOf(uri.getPath()).concat(".bak")).build();
                        try {
                            zzru zzruVar = zzuiVar3.f30969e;
                            zzrs zzrsVarB = zzruVar.b(uriBuild);
                            if (zzrsVarB.f30880a.b(zzrsVarB.d)) {
                                zzrs zzrsVarB2 = zzruVar.b(uriBuild);
                                zzrs zzrsVarB3 = zzruVar.b(uri);
                                zzsx zzsxVar = zzrsVarB2.f30880a;
                                if (zzsxVar != zzrsVarB3.f30880a) {
                                    throw new zzsk("Cannot rename file across backends");
                                }
                                zzsxVar.f(zzrsVarB2.d, zzrsVarB3.d);
                            }
                            return Futures.h();
                        } catch (IOException e2) {
                            return Futures.f(e2);
                        }
                    }
                };
                int i2 = zzxa.f31062a;
                return Futures.i(Futures.m(zzuiVar2.f30967b, new zzwy(zzvy.a(), asyncFunction), zzuiVar2.d));
            }
        }, MoreExecutors.b());
        this.d = new ExecutionSequencer();
        this.f30994h = new zzwa();
        AsyncFunction asyncFunction = new AsyncFunction() { // from class: com.google.android.gms.internal.measurement.zzuq
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final /* synthetic */ ListenableFuture apply(Object obj2) {
                return zztpVar.f30992e.a();
            }
        };
        synchronized (obj) {
            this.f30995i.add(asyncFunction);
        }
    }

    public final ListenableFuture a(final Function function, final ListeningScheduledExecutorService listeningScheduledExecutorService) {
        AsyncFunction asyncFunction = new AsyncFunction() { // from class: com.google.android.gms.internal.measurement.zzuo
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final /* synthetic */ ListenableFuture apply(Object obj) {
                return Futures.g(((zzpt) function).apply(obj));
            }
        };
        int i2 = zzxa.f31062a;
        final zzwy zzwyVar = new zzwy(zzvy.a(), asyncFunction);
        new Stopwatch(zzxh.f31063a).a();
        zzwi zzwiVarA = this.f30994h.a("Update ".concat(String.valueOf(this.f30989a)), zzxd.zza);
        try {
            final AbstractFuture abstractFutureA = this.f30993f.a();
            ExecutionSequencer executionSequencer = this.d;
            executionSequencer.a(new AsyncCallable() { // from class: com.google.android.gms.internal.measurement.zzum
                @Override // com.google.common.util.concurrent.AsyncCallable
                public final /* synthetic */ ListenableFuture call() {
                    return abstractFutureA;
                }
            }, MoreExecutors.b());
            ListenableFuture listenableFutureA = executionSequencer.a(new zzwx(zzvy.a(), new AsyncCallable() { // from class: com.google.android.gms.internal.measurement.zzun
                @Override // com.google.common.util.concurrent.AsyncCallable
                public final ListenableFuture call() {
                    final zzwy zzwyVar2 = zzwyVar;
                    final Executor executor = listeningScheduledExecutorService;
                    final zzut zzutVar = this.f30977a;
                    AsyncFunction asyncFunction2 = new AsyncFunction() { // from class: com.google.android.gms.internal.measurement.zzup
                        @Override // com.google.common.util.concurrent.AsyncFunction
                        public final /* synthetic */ ListenableFuture apply(Object obj) {
                            return zzutVar.f30991c.a(zzwyVar2, executor);
                        }
                    };
                    int i3 = zzxa.f31062a;
                    return Futures.m(abstractFutureA, new zzwy(zzvy.a(), asyncFunction2), MoreExecutors.b());
                }
            }), MoreExecutors.b());
            Futures.propagateCancellation(listenableFutureA, abstractFutureA);
            Futures.i(this.f30990b);
            ListenableFuture listenableFutureL = Futures.l(listenableFutureA, Functions.a(), MoreExecutors.b());
            zzwiVarA.zza(listenableFutureL);
            zzwiVarA.close();
            return listenableFutureL;
        } catch (Throwable th) {
            try {
                zzwiVarA.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
