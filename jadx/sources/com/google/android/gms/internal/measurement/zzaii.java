package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaii implements Supplier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzaii f30537c = new zzaii();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30538b = Suppliers.b(new zzaik());

    @Override // com.google.common.base.Supplier
    public final Object get() {
        return (zzaij) this.f30538b.get();
    }
}
