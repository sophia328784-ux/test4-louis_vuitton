package com.google.android.gms.internal.gtm;

import defpackage.b21;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzku implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f30185b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzkv f30186c;

    public zzku(zzkv zzkvVar) {
        this.f30186c = zzkvVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f30185b < this.f30186c.f30188b.length();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        if (this.f30185b >= this.f30186c.f30188b.length()) {
            b21.x();
            return null;
        }
        int i2 = this.f30185b;
        this.f30185b = i2 + 1;
        return new zzkm(Double.valueOf(i2));
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
