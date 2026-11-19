package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes2.dex */
public final class zzahw implements Supplier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzahw f30523c = new zzahw();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30524b = Suppliers.b(new zzahy());

    @Override // com.google.common.base.Supplier
    public final Object get() {
        return (zzahx) this.f30524b.get();
    }
}
