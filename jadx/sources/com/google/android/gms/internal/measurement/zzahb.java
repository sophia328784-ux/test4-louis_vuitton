package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes2.dex */
public final class zzahb implements Supplier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzahb f30496c = new zzahb();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30497b = Suppliers.b(new zzahd());

    @Override // com.google.common.base.Supplier
    public final Object get() {
        return (zzahc) this.f30497b.get();
    }
}
