package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaio implements Supplier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzaio f30544c = new zzaio();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30545b = Suppliers.b(new zzaiq());

    @Override // com.google.common.base.Supplier
    public final Object get() {
        return (zzaip) this.f30545b.get();
    }
}
