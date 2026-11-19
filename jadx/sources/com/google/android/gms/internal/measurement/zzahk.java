package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes2.dex */
public final class zzahk implements Supplier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzahk f30507c = new zzahk();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30508b = Suppliers.b(new zzahm());

    @Override // com.google.common.base.Supplier
    public final Object get() {
        return (zzahl) this.f30508b.get();
    }
}
