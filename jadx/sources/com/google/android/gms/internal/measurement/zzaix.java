package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaix implements Supplier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzaix f30553c = new zzaix();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30554b = Suppliers.b(new zzaiz());

    @Override // com.google.common.base.Supplier
    public final Object get() {
        return (zzaiy) this.f30554b.get();
    }
}
