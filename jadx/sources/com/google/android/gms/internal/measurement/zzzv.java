package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzzv implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f31128b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzzw f31129c;

    public zzzv(zzzw zzzwVar) {
        this.f31129c = zzzwVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f31128b < this.f31129c.f31130b.f31136e;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        int i2 = this.f31128b;
        this.f31128b = i2 + 1;
        zzzy zzzyVar = this.f31129c.f31130b;
        return zzzyVar.d(zzzyVar.d[i2] & 31);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
