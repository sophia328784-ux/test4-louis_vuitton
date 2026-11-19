package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes2.dex */
public final class zzahq implements Supplier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzahq f30516c = new zzahq();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30517b = Suppliers.b(new zzahs());

    @Override // com.google.common.base.Supplier
    public final Object get() {
        return (zzahr) this.f30517b.get();
    }
}
