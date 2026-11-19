package com.google.android.gms.internal.fido;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzci extends zzce {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzcj f29853e;

    public zzci(zzcj zzcjVar) {
        this.f29853e = zzcjVar;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final zzdc i() {
        return q().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return q().listIterator(0);
    }

    @Override // com.google.android.gms.internal.fido.zzcf
    public final zzcc r() {
        return new zzch(this);
    }
}
