package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes2.dex */
public final class zzahn implements Supplier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzahn f30511c = new zzahn();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30512b = Suppliers.b(new zzahp());

    public static void a() {
        ((zzaho) f30511c.f30512b.get()).getClass();
    }

    @Override // com.google.common.base.Supplier
    public final Object get() {
        return (zzaho) this.f30512b.get();
    }
}
