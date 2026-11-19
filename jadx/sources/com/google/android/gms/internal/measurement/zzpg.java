package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import android.os.StrictMode;
import android.util.Pair;
import com.google.common.base.Function;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import defpackage.md;
import defpackage.r81;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.logging.Level;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class zzpg {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final zzpe f30798i = new zzpe();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final zzon f30799j = new zzon(zzox.f30790b, false, ImmutableSet.v());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile zzqs f30800a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzlk f30801b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f30802c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f30803e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImmutableSet f30804f;
    public final zzps g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final zzqt f30805h;

    public zzpg(zzlk zzlkVar, zzon zzonVar) {
        this.f30801b = zzlkVar;
        Context context = zzlkVar.f30720b;
        String str = zzonVar.d;
        if (str == null) {
            str = (String) zzonVar.f30783a.apply(context);
            zzonVar.d = str;
        }
        this.f30802c = str;
        this.d = "";
        this.f30803e = zzonVar.f30784b;
        this.f30804f = zzonVar.f30785c;
        this.f30800a = null;
        this.g = new zzps();
        this.f30805h = new zzqt(zzlkVar, str, "", false);
    }

    public final zzqs a() {
        zzqs zzqsVar;
        zzqs zzqsVar2 = this.f30800a;
        if (zzqsVar2 != null) {
            return zzqsVar2;
        }
        synchronized (this) {
            try {
                zzqsVar = this.f30800a;
                if (zzqsVar == null) {
                    StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
                    try {
                        zzqs zzqsVarA = this.f30805h.a();
                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                        int i2 = zzqsVarA.f30851e.f30847b - 2;
                        if (i2 == 15 || i2 == 16) {
                            zzqsVar = zzqsVarA;
                        } else {
                            zzlk zzlkVar = this.f30801b;
                            zzlkVar.g.a();
                            if (this.f30803e || this.f30805h.b() || !zzqsVarA.f30849b.isEmpty()) {
                                zzlkVar.a().execute(new Runnable() { // from class: com.google.android.gms.internal.measurement.zzoy
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        ListenableFuture listenableFutureB;
                                        final zzpg zzpgVar = this.zza;
                                        zzqs zzqsVarA2 = zzpgVar.a();
                                        String str = zzqsVarA2.f30849b;
                                        zzlk zzlkVar2 = zzpgVar.f30801b;
                                        Supplier supplier = zzlkVar2.d;
                                        zzqn zzqnVarB = zzlkVar2.g.b();
                                        boolean z = zzqnVarB.f30842i;
                                        if (zzqnVarB.f30843j) {
                                            if (Strings.a(str) && !z) {
                                                Futures.h();
                                                return;
                                            }
                                            zzmb zzmbVarB = zzme.B();
                                            zzqr zzqrVar = zzqsVarA2.f30851e;
                                            int i3 = zzqrVar.f30846a;
                                            zzmc zzmcVarA = zzmd.A();
                                            zzmcVarA.l();
                                            ((zzmd) zzmcVarA.f30406c).B(i3);
                                            int i4 = zzqrVar.f30847b;
                                            zzmcVarA.l();
                                            ((zzmd) zzmcVarA.f30406c).C(i4);
                                            zzmd zzmdVar = (zzmd) zzmcVarA.v();
                                            zzmbVarB.l();
                                            ((zzme) zzmbVarB.f30406c).D(zzmdVar);
                                            if (!Strings.a(str)) {
                                                zzmbVarB.l();
                                                ((zzme) zzmbVarB.f30406c).C(str);
                                            }
                                            if (z) {
                                                String str2 = zzpgVar.f30802c;
                                                zzmbVarB.l();
                                                ((zzme) zzmbVarB.f30406c).E(str2);
                                            }
                                            listenableFutureB = ((zzmj) supplier.get()).d((zzme) zzmbVarB.v());
                                        } else {
                                            if (Strings.a(str)) {
                                                Futures.h();
                                                return;
                                            }
                                            listenableFutureB = ((zzmj) supplier.get()).b(str);
                                        }
                                        Futures.c(listenableFutureB, zzmk.class, new AsyncFunction() { // from class: com.google.android.gms.internal.measurement.zzos
                                            @Override // com.google.common.util.concurrent.AsyncFunction
                                            public final ListenableFuture apply(Object obj) {
                                                zzpg zzpgVar2 = zzpgVar;
                                                zzpgVar2.getClass();
                                                int i5 = ((zzmk) obj).f30741b;
                                                if ((i5 == 29501 || i5 == 29537 || i5 == 29538 || i5 == 29539 || i5 == 29540 || i5 == 29541 || i5 == 29542 || i5 == 29543 || i5 == 29544) && !zzpgVar2.f30805h.b()) {
                                                    zzpgVar2.b();
                                                }
                                                return Futures.h();
                                            }
                                        }, zzlkVar2.a());
                                    }
                                });
                                zzlkVar.f30719a.a(zzqsVarA.f30850c, this.f30804f, this.f30802c);
                                if (!this.d.equals("")) {
                                    zzlkVar.a().execute(new Runnable() { // from class: com.google.android.gms.internal.measurement.zzoq
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            Uri uri;
                                            zznu zznuVar;
                                            zzuj zzujVar;
                                            final zzpg zzpgVar = this.zza;
                                            zzlk zzlkVar2 = zzpgVar.f30801b;
                                            String str = zzpgVar.f30802c;
                                            zzvb zzvbVar = zzpu.f30817a;
                                            zztd zztdVar = new zztd();
                                            zztdVar.f30921c = Optional.a();
                                            zztdVar.f30922e = zztw.f30949a;
                                            byte b2 = (byte) (zztdVar.g | 2);
                                            boolean z = true;
                                            zztdVar.f30923f = true;
                                            zztdVar.g = (byte) (b2 | 1);
                                            Context context = zzlkVar2.f30720b;
                                            Pattern pattern = zzsa.f30899a;
                                            zzrz zzrzVar = new zzrz(context);
                                            zzrzVar.a("phenotype");
                                            zzrzVar.b("all_accounts.pb");
                                            Uri uriC = zzrzVar.c();
                                            if (uriC == null) {
                                                r81.d("Null uri");
                                                return;
                                            }
                                            zztdVar.f30919a = uriC;
                                            zznu zznuVarB = zznu.B();
                                            if (zznuVarB == null) {
                                                r81.d("Null schema");
                                                return;
                                            }
                                            zztdVar.f30920b = zznuVarB;
                                            zztdVar.f30921c = Optional.d(zzpu.f30817a);
                                            zztdVar.g = (byte) (zztdVar.g | 2);
                                            if (zztdVar.d == null) {
                                                zztdVar.d = ImmutableList.x();
                                            }
                                            if (zztdVar.g != 3 || (uri = zztdVar.f30919a) == null || (zznuVar = zztdVar.f30920b) == null || (zzujVar = zztdVar.f30922e) == null) {
                                                StringBuilder sb = new StringBuilder();
                                                if (zztdVar.f30919a == null) {
                                                    sb.append(" uri");
                                                }
                                                if (zztdVar.f30920b == null) {
                                                    sb.append(" schema");
                                                }
                                                if (zztdVar.f30922e == null) {
                                                    sb.append(" variantConfig");
                                                }
                                                if ((zztdVar.g & 1) == 0) {
                                                    sb.append(" useGeneratedExtensionRegistry");
                                                }
                                                if ((zztdVar.g & 2) == 0) {
                                                    sb.append(" enableTracing");
                                                }
                                                md.k("Missing required properties:".concat(sb.toString()));
                                                return;
                                            }
                                            Optional optional = zztdVar.f30921c;
                                            ImmutableList immutableList = zztdVar.d;
                                            boolean z2 = zztdVar.f30923f;
                                            zzte zzteVar = new zzte(uri, zznuVar, optional, immutableList, zzujVar, z2);
                                            zztt zzttVar = zzpu.f30819c;
                                            if (zzttVar == null) {
                                                synchronized (zzpu.f30818b) {
                                                    try {
                                                        zzttVar = zzpu.f30819c;
                                                        if (zzttVar == null) {
                                                            zztu zztuVar = new zztu();
                                                            zztuVar.f30946a = zzlkVar2.a();
                                                            zztuVar.f30947b = (zzru) zzlkVar2.f30723f.get();
                                                            zzuw zzuwVar = zztx.f30950a;
                                                            zzti.zza.getClass();
                                                            HashMap map = zztuVar.f30948c;
                                                            Preconditions.e("singleproc", "There is already a factory registered for the ID %s", !map.containsKey("singleproc"));
                                                            map.put("singleproc", zzuwVar);
                                                            zztt zzttVar2 = new zztt(zztuVar.f30946a, zztuVar.f30947b, zztuVar.f30948c);
                                                            zzpu.f30819c = zzttVar2;
                                                            zzttVar = zzttVar2;
                                                        }
                                                    } catch (Throwable th) {
                                                        throw th;
                                                    }
                                                }
                                            } else {
                                                zzlkVar2 = zzlkVar2;
                                                z = true;
                                            }
                                            ConcurrentHashMap concurrentHashMap = zzttVar.f30942a;
                                            Pair pairCreate = (Pair) concurrentHashMap.get(uri);
                                            if (pairCreate == null) {
                                                Preconditions.e(uri, "Uri must be hierarchical: %s", uri.isHierarchical());
                                                String lastPathSegment = uri.getLastPathSegment();
                                                if (lastPathSegment == null) {
                                                    lastPathSegment = "";
                                                }
                                                int iLastIndexOf = lastPathSegment.lastIndexOf(46);
                                                Preconditions.e(uri, "Uri extension must be .pb: %s", (iLastIndexOf == -1 ? "" : lastPathSegment.substring(iLastIndexOf + 1)).equals("pb"));
                                                Preconditions.h(optional != null ? z : false, "Handler cannot be null");
                                                zzuw zzuwVar2 = (zzuw) zzttVar.f30945e.get("singleproc");
                                                Preconditions.e("singleproc", "No XDataStoreVariantFactory registered for ID %s", zzuwVar2 != null ? z : false);
                                                String lastPathSegment2 = uri.getLastPathSegment();
                                                String strSubstring = lastPathSegment2 != null ? lastPathSegment2 : "";
                                                int iLastIndexOf2 = strSubstring.lastIndexOf(46);
                                                if (iLastIndexOf2 != -1) {
                                                    strSubstring = strSubstring.substring(0, iLastIndexOf2);
                                                }
                                                String str2 = strSubstring;
                                                ListenableFuture listenableFutureM = Futures.m(Futures.g(uri), zzttVar.d, MoreExecutors.b());
                                                Executor executor = zzttVar.f30943b;
                                                zzru zzruVar = zzttVar.f30944c;
                                                zzti zztiVar = zzti.zza;
                                                zzui zzuiVarB = zzuwVar2.b(zzteVar, str2, executor, zzruVar, zztiVar);
                                                zzuwVar2.a(zztiVar);
                                                zztp zztpVar = new zztp(zzuiVarB, listenableFutureM);
                                                if (!immutableList.isEmpty()) {
                                                    zzto zztoVar = new zzto(immutableList, executor);
                                                    synchronized (zztpVar.g) {
                                                        zztpVar.f30995i.add(zztoVar);
                                                    }
                                                }
                                                pairCreate = Pair.create(zztpVar, zzteVar);
                                                Pair pair = (Pair) concurrentHashMap.putIfAbsent(uri, pairCreate);
                                                if (pair != null) {
                                                    pairCreate = pair;
                                                }
                                            }
                                            zztp zztpVar2 = (zztp) pairCreate.first;
                                            zztr zztrVar = (zztr) pairCreate.second;
                                            if (zzteVar.equals(zztrVar)) {
                                                final ListenableFuture listenableFutureA = zztpVar2.a(new zzpt(str), zzlkVar2.a());
                                                listenableFutureA.addListener(new Runnable() { // from class: com.google.android.gms.internal.measurement.zzot
                                                    @Override // java.lang.Runnable
                                                    public final /* synthetic */ void run() {
                                                        zzpg zzpgVar2 = zzpgVar;
                                                        ListenableFuture listenableFuture = listenableFutureA;
                                                        zzpgVar2.getClass();
                                                        try {
                                                            Futures.d(listenableFuture);
                                                        } catch (Exception unused) {
                                                            new StringBuilder(String.valueOf(zzpgVar2.f30802c).length() + 73);
                                                        }
                                                    }
                                                }, zzlkVar2.a());
                                                return;
                                            }
                                            String strB = Strings.b("ProtoDataStoreConfig<%s> doesn't match previous call [uri=%s] [%s]", "zznu", uri);
                                            Preconditions.e("uri", strB, uri.equals(((zzte) zztrVar).f30924a));
                                            zzte zzteVar2 = (zzte) zztrVar;
                                            Preconditions.e("schema", strB, zznuVar.equals(zzteVar2.f30925b));
                                            Preconditions.e("handler", strB, optional.equals(zzteVar2.f30926c));
                                            Preconditions.e("migrations", strB, immutableList.equals(zzteVar2.d));
                                            Preconditions.e("variantConfig", strB, zzujVar.equals(zzteVar2.f30927e));
                                            Preconditions.e("useGeneratedExtensionRegistry", strB, z2 == zzteVar2.f30928f ? z : false);
                                            md.n(Strings.b(strB, "unknown"));
                                        }
                                    });
                                }
                                if (this.f30805h.b()) {
                                    zzlkVar.a().execute(new Runnable() { // from class: com.google.android.gms.internal.measurement.zzor
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            final ListenableFuture listenableFutureC;
                                            zzpg zzpgVar = this.zza;
                                            final zzqe zzqeVar = zzpgVar.f30801b.f30725i;
                                            zzabz zzabzVar = zzabz.FILE;
                                            boolean z = zzpgVar.f30803e;
                                            zzou zzouVar = zzou.f30788a;
                                            final zzqm zzqmVar = (zzqm) zzqeVar.f30827c.get();
                                            if (zzqmVar == null && !z) {
                                                Futures.h();
                                                return;
                                            }
                                            int iD0 = 1 << zzabzVar.d0();
                                            if ((zzqeVar.f30828e & iD0) == 0) {
                                                CopyOnWriteArrayList copyOnWriteArrayList = zzqeVar.f30829f;
                                                synchronized (copyOnWriteArrayList) {
                                                    try {
                                                        int i3 = zzqeVar.f30828e;
                                                        if ((i3 & iD0) == 0) {
                                                            copyOnWriteArrayList.add(zzouVar);
                                                            zzqeVar.f30828e = iD0 | i3;
                                                        }
                                                    } catch (Throwable th) {
                                                        throw th;
                                                    }
                                                }
                                            }
                                            if (zzqeVar.f30830h == null) {
                                                synchronized (zzqeVar.g) {
                                                    try {
                                                        if (zzqeVar.f30830h == null) {
                                                            if (zzqmVar == null) {
                                                                zzqmVar = zzqb.f30822a;
                                                            }
                                                            Context context = zzqeVar.f30825a;
                                                            if (zzky.b(context)) {
                                                                listenableFutureC = ((zzmj) zzqeVar.d.get()).c(new zzqd(zzqeVar, zzqmVar));
                                                                listenableFutureC.getClass();
                                                                zzqeVar.f30830h = listenableFutureC;
                                                            } else {
                                                                zzpz zzpzVar = zzpz.zza;
                                                                Supplier supplier = zzqeVar.f30826b;
                                                                listenableFutureC = Futures.m(zzky.a(context, Executors.callable(zzpzVar, null), (Executor) supplier.get()), new AsyncFunction() { // from class: com.google.android.gms.internal.measurement.zzqa
                                                                    @Override // com.google.common.util.concurrent.AsyncFunction
                                                                    public final ListenableFuture apply(Object obj) {
                                                                        zzqe zzqeVar2 = zzqeVar;
                                                                        ListenableFuture listenableFutureC2 = ((zzmj) zzqeVar2.d.get()).c(new zzqd(zzqeVar2, zzqmVar));
                                                                        listenableFutureC2.getClass();
                                                                        return listenableFutureC2;
                                                                    }
                                                                }, (Executor) supplier.get());
                                                                zzqeVar.f30830h = listenableFutureC;
                                                            }
                                                            listenableFutureC.addListener(new Runnable() { // from class: com.google.android.gms.internal.measurement.zzpy
                                                                @Override // java.lang.Runnable
                                                                public final /* synthetic */ void run() {
                                                                    try {
                                                                        Futures.d(listenableFutureC);
                                                                    } catch (Exception unused) {
                                                                    }
                                                                }
                                                            }, (Executor) zzqeVar.f30826b.get());
                                                        }
                                                    } catch (Throwable th2) {
                                                        throw th2;
                                                    }
                                                }
                                            }
                                        }
                                    });
                                }
                                zzqsVar = zzqsVarA;
                            } else {
                                zzlkVar.a().execute(new Runnable() { // from class: com.google.android.gms.internal.measurement.zzop
                                    @Override // java.lang.Runnable
                                    public final /* synthetic */ void run() {
                                        this.zza.b();
                                    }
                                });
                                zzqsVar = new zzqs(zzqv.H(), zzqsVarA.f30851e);
                            }
                        }
                        if (!this.f30803e || zzqsVar.f30851e.f30847b != 17) {
                            this.f30800a = zzqsVar;
                        }
                    } catch (Throwable th) {
                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zzqsVar;
    }

    public final void b() {
        final zzqt zzqtVar = this.f30805h;
        zzlk zzlkVar = zzqtVar.f30852a;
        final ListenableFuture listenableFutureL = Futures.l(((zzmj) zzlkVar.d.get()).a(zzqtVar.f30854c), zzqp.f30845b, zzlkVar.a());
        AsyncFunction asyncFunction = new AsyncFunction() { // from class: com.google.android.gms.internal.measurement.zzpf
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                final zzqv zzqvVar = (zzqv) obj;
                final zzqt zzqtVar2 = zzqtVar;
                zzqtVar2.getClass();
                return Futures.j(new Callable() { // from class: com.google.android.gms.internal.measurement.zzqq
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        zzqt zzqtVar3 = zzqtVar2;
                        zzqv zzqvVar2 = zzqvVar;
                        zzlk zzlkVar2 = zzqtVar3.f30852a;
                        zzse zzseVar = new zzse();
                        try {
                            zzru zzruVar = (zzru) zzlkVar2.f30723f.get();
                            Uri uri = zzqtVar3.f30853b;
                            zzsv zzsvVar = new zzsv(zzqvVar2);
                            zzsvVar.f30917b = new zzro[]{zzseVar};
                            return null;
                        } catch (IOException | RuntimeException e2) {
                            zzlz.a(Level.WARNING, zzlkVar2.a(), e2, "Failed to update snapshot for %s flags may be stale.", zzqtVar3.f30854c);
                            return null;
                        }
                    }
                }, zzqtVar2.f30852a.a());
            }
        };
        zzlk zzlkVar2 = this.f30801b;
        Futures.m(listenableFutureL, asyncFunction, zzlkVar2.a()).addListener(new Runnable() { // from class: com.google.android.gms.internal.measurement.zzov
            /* JADX WARN: Code duplicated, block: B:18:0x003a A[Catch: CancellationException | ExecutionException -> 0x0022, CancellationException | ExecutionException -> 0x0022, TryCatch #0 {CancellationException | ExecutionException -> 0x0022, blocks: (B:3:0x0007, B:5:0x001d, B:16:0x002d, B:16:0x002d, B:18:0x003a, B:18:0x003a, B:20:0x0046, B:20:0x0046, B:26:0x0056, B:26:0x0056, B:28:0x005a, B:28:0x005a, B:10:0x0024, B:31:0x007c, B:31:0x007c), top: B:36:0x0007 }] */
            /* JADX WARN: Code duplicated, block: B:20:0x0046 A[Catch: CancellationException | ExecutionException -> 0x0022, CancellationException | ExecutionException -> 0x0022, TRY_LEAVE, TryCatch #0 {CancellationException | ExecutionException -> 0x0022, blocks: (B:3:0x0007, B:5:0x001d, B:16:0x002d, B:16:0x002d, B:18:0x003a, B:18:0x003a, B:20:0x0046, B:20:0x0046, B:26:0x0056, B:26:0x0056, B:28:0x005a, B:28:0x005a, B:10:0x0024, B:31:0x007c, B:31:0x007c), top: B:36:0x0007 }] */
            /* JADX WARN: Code duplicated, block: B:38:? A[RETURN, SYNTHETIC] */
            @Override // java.lang.Runnable
            public final void run() {
                zzqs zzqsVar;
                ImmutableMap immutableMap;
                ImmutableMap immutableMap2;
                zzqm zzqmVar;
                final zzpg zzpgVar = this.zza;
                ListenableFuture listenableFuture = listenableFutureL;
                zzpgVar.getClass();
                try {
                    zzqv zzqvVar = (zzqv) Futures.d(listenableFuture);
                    zzqs zzqsVar2 = new zzqs(zzqvVar, new zzqr(6, 2));
                    boolean z = zzpgVar.f30803e;
                    if (z || (zzqsVar = zzpgVar.f30800a) == null) {
                        synchronized (zzpgVar) {
                            if (!z) {
                                zzqsVar = zzpgVar.f30800a;
                                if (zzqsVar != null) {
                                    immutableMap = zzqsVar.d;
                                    immutableMap2 = zzqsVar2.d;
                                    immutableMap.getClass();
                                    if (!Maps.a(immutableMap, immutableMap2)) {
                                        zzqmVar = (zzqm) zzpgVar.f30801b.f30722e.get();
                                        if (zzqmVar != null) {
                                            zzqmVar.d0();
                                            return;
                                        }
                                        return;
                                    }
                                }
                            }
                            zzpgVar.f30800a = zzqsVar2;
                            zzpgVar.g.f30815a.incrementAndGet();
                        }
                    } else {
                        immutableMap = zzqsVar.d;
                        immutableMap2 = zzqsVar2.d;
                        immutableMap.getClass();
                        if (!Maps.a(immutableMap, immutableMap2)) {
                            zzqmVar = (zzqm) zzpgVar.f30801b.f30722e.get();
                            if (zzqmVar != null) {
                                zzqmVar.d0();
                                return;
                            }
                            return;
                        }
                    }
                    if (zzpgVar.f30803e) {
                        zzlk zzlkVar3 = zzpgVar.f30801b;
                        Futures.b(((zzmj) zzlkVar3.d.get()).b(zzqvVar.A()), Throwable.class, new Function() { // from class: com.google.android.gms.internal.measurement.zzow
                            @Override // com.google.common.base.Function
                            public final /* synthetic */ Object apply(Object obj) {
                                "Failed to commit to updated flags for ".concat(String.valueOf(zzpgVar.f30802c));
                                return null;
                            }
                        }, zzlkVar3.a());
                    }
                } catch (CancellationException | ExecutionException e2) {
                    if (e2.getCause() instanceof SecurityException) {
                        return;
                    }
                    new StringBuilder(String.valueOf(zzpgVar.f30802c).length() + 64);
                }
            }
        }, zzlkVar2.a());
    }
}
