package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.common.base.Optional;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.util.concurrent.ListeningScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class zzlk {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Object f30717j = new Object();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final AtomicReference f30718k = new AtomicReference();
    public static volatile zzlk l = null;
    public static final Supplier m = Suppliers.a(zzlp.f30730b);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzol f30719a = new zzol();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f30720b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Supplier f30721c;
    public final Supplier d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Supplier f30722e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Supplier f30723f;
    public final zzrf g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Supplier f30724h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final zzqe f30725i;

    public interface zza {
        Optional d0();
    }

    public zzlk(Context context, Supplier supplier, Supplier supplier2, final Supplier supplier3, Supplier supplier4, Supplier supplier5) {
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        supplier.getClass();
        supplier2.getClass();
        supplier3.getClass();
        supplier4.getClass();
        supplier5.getClass();
        Supplier supplierA = Suppliers.a(supplier);
        Supplier supplierA2 = Suppliers.a(supplier2);
        Supplier supplierA3 = Suppliers.a(new Supplier() { // from class: com.google.android.gms.internal.measurement.zzlq
            @Override // com.google.common.base.Supplier
            public final /* synthetic */ Object get() {
                Object obj = zzlk.f30717j;
                return (zzqm) ((Optional) supplier3.get()).f();
            }
        });
        Supplier supplierA4 = Suppliers.a(supplier4);
        Supplier supplierA5 = Suppliers.a(supplier5);
        this.f30720b = applicationContext;
        this.f30721c = supplierA;
        this.d = supplierA2;
        this.f30722e = supplierA3;
        this.f30723f = supplierA4;
        this.g = new zzrf(applicationContext, supplierA, supplierA4, supplierA2);
        this.f30724h = supplierA5;
        this.f30725i = new zzqe(applicationContext, supplierA, supplierA3, supplierA2);
    }

    public static void b() {
        synchronized (zzls.f30732a) {
        }
        if (f30718k.get() == null && zzls.f30733b == null) {
            zzls.f30733b = new zzlr();
        }
    }

    public final ListeningScheduledExecutorService a() {
        return (ListeningScheduledExecutorService) this.f30721c.get();
    }
}
