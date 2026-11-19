package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes2.dex */
public final class zzail implements Supplier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzail f30540c = new zzail();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30541b = Suppliers.b(new zzain());

    @Override // com.google.common.base.Supplier
    public final Object get() {
        return (zzaim) this.f30541b.get();
    }
}
