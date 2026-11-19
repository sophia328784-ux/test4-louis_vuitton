package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes2.dex */
public final class zzahh implements Supplier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzahh f30504c = new zzahh();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30505b = Suppliers.b(new zzahj());

    @Override // com.google.common.base.Supplier
    public final Object get() {
        return (zzahi) this.f30505b.get();
    }
}
