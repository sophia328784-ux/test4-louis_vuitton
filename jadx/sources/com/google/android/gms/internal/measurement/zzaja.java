package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaja implements Supplier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzaja f30557c = new zzaja();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30558b = Suppliers.b(new zzajc());

    @Override // com.google.common.base.Supplier
    public final Object get() {
        return (zzajb) this.f30558b.get();
    }
}
