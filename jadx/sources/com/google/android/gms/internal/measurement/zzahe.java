package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes2.dex */
public final class zzahe implements Supplier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzahe f30499c = new zzahe();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30500b = Suppliers.b(new zzahg());

    @Override // com.google.common.base.Supplier
    public final Object get() {
        return (zzahf) this.f30500b.get();
    }
}
