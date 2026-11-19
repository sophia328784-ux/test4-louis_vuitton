package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzlw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f30736a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile zzlc f30737b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicInteger f30738c;

    static {
        new AtomicReference();
        f30738c = new AtomicInteger();
    }

    public static void a(final Context context) {
        if (f30737b != null || context == null) {
            return;
        }
        Object obj = f30736a;
        synchronized (obj) {
            try {
                if (f30737b == null) {
                    synchronized (obj) {
                        try {
                            zzlc zzlcVar = f30737b;
                            Context applicationContext = context.getApplicationContext();
                            if (applicationContext != null) {
                                context = applicationContext;
                            }
                            if (zzlcVar == null || zzlcVar.f30704a != context) {
                                if (zzlcVar != null) {
                                    Iterator it = zzld.f30706a.values().iterator();
                                    if (it.hasNext()) {
                                        if (it.next() != null) {
                                            throw new ClassCastException();
                                        }
                                        throw null;
                                    }
                                    zzma.a();
                                }
                                f30737b = new zzlc(context, Suppliers.a(new Supplier() { // from class: com.google.android.gms.internal.measurement.zzlv
                                    @Override // com.google.common.base.Supplier
                                    public final /* synthetic */ Object get() {
                                        Object obj2 = zzlw.f30736a;
                                        return zzlf.a(context);
                                    }
                                }));
                                f30738c.incrementAndGet();
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
