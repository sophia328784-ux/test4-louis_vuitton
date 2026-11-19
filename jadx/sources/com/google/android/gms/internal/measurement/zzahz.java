package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes2.dex */
public final class zzahz implements Supplier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzahz f30526c = new zzahz();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30527b = Suppliers.b(new zzaib());

    @Override // com.google.common.base.Supplier
    public final Object get() {
        return (zzaia) this.f30527b.get();
    }
}
