package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaif implements Supplier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzaif f30534c = new zzaif();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30535b = Suppliers.b(new zzaih());

    public static void a() {
        f30534c.get().getClass();
    }

    @Override // com.google.common.base.Supplier
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final zzaig get() {
        return (zzaig) this.f30535b.get();
    }
}
