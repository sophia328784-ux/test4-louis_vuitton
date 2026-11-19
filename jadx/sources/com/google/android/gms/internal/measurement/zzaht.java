package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaht implements Supplier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzaht f30519c = new zzaht();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30520b = Suppliers.b(new zzahv());

    @Override // com.google.common.base.Supplier
    public final Object get() {
        return (zzahu) this.f30520b.get();
    }
}
