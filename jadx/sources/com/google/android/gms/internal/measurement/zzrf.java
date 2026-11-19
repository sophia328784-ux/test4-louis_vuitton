package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import com.google.common.base.Function;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.FluentFuture;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListeningScheduledExecutorService;
import java.io.IOException;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class zzrf {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Object f30860j = new Object();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Object f30861k = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f30862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30863b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Supplier f30864c;
    public final Supplier d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Supplier f30865e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Supplier f30866f;
    public final Uri g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile zzni f30867h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Uri f30868i;

    public zzrf(Context context, final Supplier supplier, Supplier supplier2, Supplier supplier3) {
        this.f30862a = context;
        this.f30864c = supplier;
        this.f30863b = supplier3;
        this.d = supplier2;
        Pattern pattern = zzsa.f30899a;
        zzrz zzrzVar = new zzrz(context);
        zzrzVar.a("phenotype_storage_info");
        zzrzVar.b("storage-info.pb");
        this.g = zzrzVar.c();
        zzrz zzrzVar2 = new zzrz(context);
        zzrzVar2.a("phenotype_storage_info");
        zzrzVar2.b("device-encrypted-storage-info.pb");
        Set set = zzsa.d;
        zzsq.a(set.contains("directboot-files"), "The only supported locations are %s: %s", set, "directboot-files");
        zzrzVar2.f30893b = "directboot-files";
        this.f30868i = zzrzVar2.c();
        this.f30865e = Suppliers.a(new Supplier() { // from class: com.google.android.gms.internal.measurement.zzre
            @Override // com.google.common.base.Supplier
            public final Object get() {
                final zzrf zzrfVar = this.f30859b;
                ListeningScheduledExecutorService listeningScheduledExecutorService = (ListeningScheduledExecutorService) zzrfVar.f30864c.get();
                listeningScheduledExecutorService.getClass();
                zzmj zzmjVar = (zzmj) zzrfVar.f30863b.get();
                zzmjVar.getClass();
                final FluentFuture fluentFutureTransform = FluentFuture.from(zzmjVar.g0()).catching(zzmk.class, zzqz.f30856b, listeningScheduledExecutorService).transform(new Function() { // from class: com.google.android.gms.internal.measurement.zzra
                    @Override // com.google.common.base.Function
                    public final Object apply(Object obj) {
                        zzrf zzrfVar2 = zzrfVar;
                        zzno zznoVar = (zzno) obj;
                        zzse zzseVar = new zzse();
                        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
                        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskWrites().build());
                        try {
                            try {
                                synchronized (zzrf.f30860j) {
                                    zzru zzruVar = (zzru) zzrfVar2.d.get();
                                    Uri uri = zzrfVar2.g;
                                    zzsv zzsvVar = new zzsv(zznoVar.A());
                                    zzsvVar.f30917b = new zzro[]{zzseVar};
                                    zzruVar.a(uri, zzsvVar);
                                    zzrfVar2.f30867h = zznoVar.A();
                                }
                                synchronized (zzrf.f30861k) {
                                    zzru zzruVar2 = (zzru) zzrfVar2.d.get();
                                    Uri uri2 = zzrfVar2.f30868i;
                                    zzsv zzsvVar2 = new zzsv(zznoVar.B());
                                    zzsvVar2.f30917b = new zzro[]{zzseVar};
                                    zzruVar2.a(uri2, zzsvVar2);
                                    zznoVar.B();
                                }
                                StrictMode.setThreadPolicy(threadPolicy);
                                return null;
                            } catch (IOException e2) {
                                throw new RuntimeException(e2);
                            }
                        } catch (Throwable th) {
                            StrictMode.setThreadPolicy(threadPolicy);
                            throw th;
                        }
                    }
                }, listeningScheduledExecutorService);
                fluentFutureTransform.addListener(new Runnable() { // from class: com.google.android.gms.internal.measurement.zzrb
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        try {
                            Futures.d(fluentFutureTransform);
                        } catch (Exception unused) {
                            Log.isLoggable("StorageInfoHandler", 3);
                        }
                    }
                }, listeningScheduledExecutorService);
                return fluentFutureTransform;
            }
        });
        this.f30866f = Suppliers.a(new Supplier() { // from class: com.google.android.gms.internal.measurement.zzqy
            @Override // com.google.common.base.Supplier
            public final Object get() {
                ListeningScheduledExecutorService listeningScheduledExecutorService = (ListeningScheduledExecutorService) supplier.get();
                listeningScheduledExecutorService.getClass();
                return listeningScheduledExecutorService.schedule((Callable) zzrd.zza, 10000L, TimeUnit.MILLISECONDS);
            }
        });
    }

    public final void a() {
        if (!zzky.b(this.f30862a) || c().E() + 86400000 >= System.currentTimeMillis()) {
            Futures.h();
            return;
        }
        ListeningScheduledExecutorService listeningScheduledExecutorService = (ListeningScheduledExecutorService) this.f30864c.get();
        listeningScheduledExecutorService.getClass();
        FluentFuture.from(Futures.i((ListenableFuture) this.f30866f.get())).transformAsync(new AsyncFunction() { // from class: com.google.android.gms.internal.measurement.zzrc
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final /* synthetic */ ListenableFuture apply(Object obj) {
                return Futures.i((ListenableFuture) this.f30858a.f30865e.get());
            }
        }, listeningScheduledExecutorService);
    }

    public final zzqn b() {
        zzni zzniVarC = c();
        return new zzqn(zzniVarC.C(), ImmutableList.t(zzniVarC.H()), zzniVarC.B(), zzniVarC.D(), (zzniVarC.I() && zzniVarC.J().B() == ((long) Build.VERSION.SDK_INT)) ? zzniVarC.J().A() : "", ImmutableList.t(zzniVarC.F()), ImmutableList.t(zzniVarC.G()), zzniVarC.A(), zzniVarC.L(), zzniVarC.K(), zzniVarC.M());
    }

    public final zzni c() {
        zzni zzniVarO;
        zzni zzniVar = this.f30867h;
        if (zzniVar != null) {
            return zzniVar;
        }
        synchronized (f30860j) {
            try {
                zzniVarO = this.f30867h;
                if (zzniVarO == null) {
                    zzniVarO = zzni.O();
                    if (zzky.b(this.f30862a)) {
                        zzss zzssVar = new zzss(zzniVarO.h());
                        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
                        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().build());
                        try {
                            try {
                                zzni zzniVar2 = (zzni) ((zzru) this.d.get()).a(this.g, zzssVar);
                                StrictMode.setThreadPolicy(threadPolicy);
                                zzniVarO = zzniVar2;
                            } catch (IOException unused) {
                                StrictMode.setThreadPolicy(threadPolicy);
                            }
                            this.f30867h = zzniVarO;
                        } catch (Throwable th) {
                            StrictMode.setThreadPolicy(threadPolicy);
                            throw th;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zzniVarO;
    }
}
