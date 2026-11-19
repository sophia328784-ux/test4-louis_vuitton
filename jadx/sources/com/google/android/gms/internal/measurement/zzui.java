package com.google.android.gms.internal.measurement;

import android.net.Uri;
import com.google.common.base.Optional;
import com.google.common.util.concurrent.AsyncCallable;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.ExecutionSequencer;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public final class zzui implements zzuv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f30966a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ListenableFuture f30967b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zztv f30968c;
    public final Executor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzru f30969e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Optional f30970f;
    public final zzwb g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f30971h = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ExecutionSequencer f30972i = new ExecutionSequencer();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ListenableFuture f30973j = null;

    public zzui(String str, ListenableFuture listenableFuture, zztv zztvVar, Executor executor, zzru zzruVar, Optional optional, zzwb zzwbVar) {
        this.f30966a = str;
        this.f30967b = Futures.i(listenableFuture);
        this.f30968c = zztvVar;
        this.d = MoreExecutors.e(executor);
        this.f30969e = zzruVar;
        this.f30970f = optional;
        this.g = zzwbVar;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x001c A[Catch: all -> 0x0013, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000d, B:13:0x0016, B:14:0x0018, B:16:0x001c, B:17:0x003a, B:18:0x003c), top: B:25:0x0003, inners: #0 }] */
    @Override // com.google.android.gms.internal.measurement.zzuv
    public final ListenableFuture a(final zzwy zzwyVar, final Executor executor) {
        final ListenableFuture listenableFuture;
        synchronized (this.f30971h) {
            ListenableFuture listenableFuture2 = this.f30973j;
            if (listenableFuture2 == null || !listenableFuture2.isDone()) {
                if (this.f30973j == null) {
                    ExecutionSequencer executionSequencer = this.f30972i;
                    AsyncCallable asyncCallable = new AsyncCallable() { // from class: com.google.android.gms.internal.measurement.zzub
                        @Override // com.google.common.util.concurrent.AsyncCallable
                        public final ListenableFuture call() {
                            final zzui zzuiVar = this.f30956a;
                            try {
                                return Futures.g(zzuiVar.b((Uri) Futures.d(zzuiVar.f30967b)));
                            } catch (IOException e2) {
                                zzty zztyVar = new zzty(zzuiVar);
                                Optional optional = zzuiVar.f30970f;
                                if (!optional.c()) {
                                    return Futures.f(e2);
                                }
                                if ((e2 instanceof zzsg) || (e2.getCause() instanceof zzsg)) {
                                    return Futures.f(e2);
                                }
                                ListenableFuture listenableFutureA = ((zztf) optional.b()).a(e2, zztyVar);
                                AsyncFunction asyncFunction = new AsyncFunction() { // from class: com.google.android.gms.internal.measurement.zzue
                                    @Override // com.google.common.util.concurrent.AsyncFunction
                                    public final /* synthetic */ ListenableFuture apply(Object obj) {
                                        zzui zzuiVar2 = zzuiVar;
                                        return Futures.g(zzuiVar2.b((Uri) Futures.d(zzuiVar2.f30967b)));
                                    }
                                };
                                int i2 = zzxa.f31062a;
                                return Futures.m(listenableFutureA, new zzwy(zzvy.a(), asyncFunction), zzuiVar.d);
                            }
                        }
                    };
                    int i2 = zzxa.f31062a;
                    this.f30973j = Futures.i(executionSequencer.a(new zzwx(zzvy.a(), asyncCallable), this.d));
                }
                listenableFuture = this.f30973j;
            } else {
                try {
                    Futures.d(this.f30973j);
                } catch (ExecutionException unused) {
                    this.f30973j = null;
                }
                if (this.f30973j == null) {
                    ExecutionSequencer executionSequencer2 = this.f30972i;
                    AsyncCallable asyncCallable2 = new AsyncCallable() { // from class: com.google.android.gms.internal.measurement.zzub
                        @Override // com.google.common.util.concurrent.AsyncCallable
                        public final ListenableFuture call() {
                            final zzui zzuiVar = this.f30956a;
                            try {
                                return Futures.g(zzuiVar.b((Uri) Futures.d(zzuiVar.f30967b)));
                            } catch (IOException e2) {
                                zzty zztyVar = new zzty(zzuiVar);
                                Optional optional = zzuiVar.f30970f;
                                if (!optional.c()) {
                                    return Futures.f(e2);
                                }
                                if ((e2 instanceof zzsg) || (e2.getCause() instanceof zzsg)) {
                                    return Futures.f(e2);
                                }
                                ListenableFuture listenableFutureA = ((zztf) optional.b()).a(e2, zztyVar);
                                AsyncFunction asyncFunction = new AsyncFunction() { // from class: com.google.android.gms.internal.measurement.zzue
                                    @Override // com.google.common.util.concurrent.AsyncFunction
                                    public final /* synthetic */ ListenableFuture apply(Object obj) {
                                        zzui zzuiVar2 = zzuiVar;
                                        return Futures.g(zzuiVar2.b((Uri) Futures.d(zzuiVar2.f30967b)));
                                    }
                                };
                                int i3 = zzxa.f31062a;
                                return Futures.m(listenableFutureA, new zzwy(zzvy.a(), asyncFunction), zzuiVar.d);
                            }
                        }
                    };
                    int i3 = zzxa.f31062a;
                    this.f30973j = Futures.i(executionSequencer2.a(new zzwx(zzvy.a(), asyncCallable2), this.d));
                }
                listenableFuture = this.f30973j;
            }
            throw th;
        }
        ExecutionSequencer executionSequencer3 = this.f30972i;
        AsyncCallable asyncCallable3 = new AsyncCallable() { // from class: com.google.android.gms.internal.measurement.zztz
            @Override // com.google.common.util.concurrent.AsyncCallable
            public final ListenableFuture call() {
                final zzui zzuiVar = this.f30952a;
                final ListenableFuture listenableFutureM = Futures.m(listenableFuture, new AsyncFunction() { // from class: com.google.android.gms.internal.measurement.zzua
                    @Override // com.google.common.util.concurrent.AsyncFunction
                    public final /* synthetic */ ListenableFuture apply(Object obj) {
                        ListenableFuture listenableFuture3;
                        zzui zzuiVar2 = zzuiVar;
                        synchronized (zzuiVar2.f30971h) {
                            listenableFuture3 = zzuiVar2.f30973j;
                        }
                        return listenableFuture3;
                    }
                }, MoreExecutors.b());
                final ListenableFuture listenableFutureM2 = Futures.m(listenableFutureM, zzwyVar, executor);
                AsyncFunction asyncFunction = new AsyncFunction() { // from class: com.google.android.gms.internal.measurement.zzuc
                    @Override // com.google.common.util.concurrent.AsyncFunction
                    public final ListenableFuture apply(Object obj) {
                        final zzui zzuiVar2 = zzuiVar;
                        ListenableFuture listenableFuture3 = listenableFutureM;
                        final ListenableFuture listenableFuture4 = listenableFutureM2;
                        if (Futures.d(listenableFuture3).equals(Futures.d(listenableFuture4))) {
                            return Futures.g(obj);
                        }
                        AsyncFunction asyncFunction2 = new AsyncFunction() { // from class: com.google.android.gms.internal.measurement.zzud
                            @Override // com.google.common.util.concurrent.AsyncFunction
                            public final /* synthetic */ ListenableFuture apply(Object obj2) throws IOException {
                                zzui zzuiVar3 = zzuiVar2;
                                ListenableFuture listenableFuture5 = listenableFuture4;
                                zzuiVar3.c((Uri) Futures.d(zzuiVar3.f30967b), obj2);
                                synchronized (zzuiVar3.f30971h) {
                                    zzuiVar3.f30973j = listenableFuture5;
                                }
                                return Futures.g(obj2);
                            }
                        };
                        int i4 = zzxa.f31062a;
                        ListenableFuture listenableFutureM3 = Futures.m(listenableFuture4, new zzwy(zzvy.a(), asyncFunction2), zzuiVar2.d);
                        synchronized (zzuiVar2.f30971h) {
                        }
                        return listenableFutureM3;
                    }
                };
                int i4 = zzxa.f31062a;
                return Futures.m(listenableFutureM2, new zzwy(zzvy.a(), asyncFunction), MoreExecutors.b());
            }
        };
        int i4 = zzxa.f31062a;
        return executionSequencer3.a(new zzwx(zzvy.a(), asyncCallable3), MoreExecutors.b());
    }

    public final Object b(Uri uri) throws IOException {
        zztv zztvVar = this.f30968c;
        String str = this.f30966a;
        zzru zzruVar = this.f30969e;
        try {
            try {
                zzwb zzwbVar = this.g;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 5);
                sb.append("Read ");
                sb.append(str);
                zzwi zzwiVarA = zzwbVar.a(sb.toString(), zzxd.zza);
                try {
                    InputStream inputStream = (InputStream) zzruVar.a(uri, new zzst());
                    try {
                        zzadu zzaduVarA = ((zzve) zztvVar).a().h().a(inputStream, ((zzve) zztvVar).b());
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        zzwiVarA.close();
                        return zzaduVarA;
                    } catch (Throwable th) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    try {
                        zzwiVarA.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                }
            } catch (FileNotFoundException e2) {
                zzrs zzrsVarB = zzruVar.b(uri);
                if (zzrsVarB.f30880a.b(zzrsVarB.d)) {
                    throw e2;
                }
                return ((zzvd) zztvVar).f30999a;
            }
        } catch (IOException e3) {
            throw zzux.a(zzruVar, uri, e3, str);
        }
    }

    public final void c(Uri uri, Object obj) throws IOException {
        String str = this.f30966a;
        zzru zzruVar = this.f30969e;
        Uri uriBuild = uri.buildUpon().path(String.valueOf(uri.getPath()).concat(".tmp")).build();
        try {
            zzwb zzwbVar = this.g;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 6);
            sb.append("Write ");
            sb.append(str);
            zzwi zzwiVarA = zzwbVar.a(sb.toString(), zzxd.zza);
            try {
                zzse zzseVar = new zzse();
                try {
                    zzsw zzswVar = new zzsw();
                    zzswVar.f30918a = new zzro[]{zzseVar};
                    OutputStream outputStream = (OutputStream) zzruVar.a(uriBuild, zzswVar);
                    try {
                        ((zzafc) obj).d(outputStream);
                        if (zzseVar.f30905b == null) {
                            throw new zzsk("Cannot sync underlying stream");
                        }
                        zzseVar.f30904a.flush();
                        zzseVar.f30905b.f30909b.getFD().sync();
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        zzwiVarA.close();
                        zzrs zzrsVarB = zzruVar.b(uriBuild);
                        zzrs zzrsVarB2 = zzruVar.b(uri);
                        zzsx zzsxVar = zzrsVarB.f30880a;
                        if (zzsxVar != zzrsVarB2.f30880a) {
                            throw new zzsk("Cannot rename file across backends");
                        }
                        zzsxVar.f(zzrsVarB.d, zzrsVarB2.d);
                    } catch (Throwable th) {
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } catch (IOException e2) {
                    throw zzux.a(zzruVar, uri, e2, str);
                }
            } catch (Throwable th3) {
                try {
                    zzwiVarA.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (IOException e3) {
            zzrs zzrsVarB3 = zzruVar.b(uriBuild);
            if (zzrsVarB3.f30880a.b(zzrsVarB3.d)) {
                try {
                    zzrs zzrsVarB4 = zzruVar.b(uriBuild);
                    zzrsVarB4.f30880a.e(zzrsVarB4.d);
                } catch (IOException e4) {
                    e3.addSuppressed(e4);
                }
            }
            throw e3;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzuv
    public final String f0() {
        return this.f30966a;
    }
}
