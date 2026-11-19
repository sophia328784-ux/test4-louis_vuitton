package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaic implements Supplier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzaic f30531c = new zzaic();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30532b = Suppliers.b(new zzaie());

    @Override // com.google.common.base.Supplier
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzaid get() {
        return (zzaid) this.f30532b.get();
    }
}
