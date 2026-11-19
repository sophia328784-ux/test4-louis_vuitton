package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaiu implements Supplier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzaiu f30550c = new zzaiu();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30551b = Suppliers.b(new zzaiw());

    @Override // com.google.common.base.Supplier
    public final Object get() {
        return (zzaiv) this.f30551b.get();
    }
}
