package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes2.dex */
public final class zzags implements Supplier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzags f30485c = new zzags();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30486b = Suppliers.b(new zzagu());

    @Override // com.google.common.base.Supplier
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzagt get() {
        return (zzagt) this.f30486b.get();
    }
}
