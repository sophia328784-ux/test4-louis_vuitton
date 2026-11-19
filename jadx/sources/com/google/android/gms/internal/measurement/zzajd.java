package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes2.dex */
public final class zzajd implements Supplier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzajd f30560c = new zzajd();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30561b = Suppliers.b(new zzajf());

    @Override // com.google.common.base.Supplier
    public final Object get() {
        return (zzaje) this.f30561b.get();
    }
}
