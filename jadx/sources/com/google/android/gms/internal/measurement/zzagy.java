package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes2.dex */
public final class zzagy implements Supplier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzagy f30491c = new zzagy();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30492b = Suppliers.b(new zzaha());

    @Override // com.google.common.base.Supplier
    public final Object get() {
        return (zzagz) this.f30492b.get();
    }
}
