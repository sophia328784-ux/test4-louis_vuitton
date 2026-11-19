package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes2.dex */
public final class zzagv implements Supplier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzagv f30488c = new zzagv();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30489b = Suppliers.b(new zzagx());

    @Override // com.google.common.base.Supplier
    public final Object get() {
        return (zzagw) this.f30489b.get();
    }
}
