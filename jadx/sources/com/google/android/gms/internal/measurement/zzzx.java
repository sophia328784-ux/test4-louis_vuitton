package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzzx implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzyl f31131b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f31132c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzzy f31133e;

    public /* synthetic */ zzzx(zzzy zzzyVar, zzyl zzylVar, int i2) {
        this.f31133e = zzzyVar;
        this.f31131b = zzylVar;
        int i3 = i2 & 31;
        this.f31132c = i3;
        this.d = i2 >>> (i3 + 5);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f31132c >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i2 = this.f31132c;
        zzzy zzzyVar = this.f31133e;
        zzzj zzzjVar = zzzyVar.f31134b;
        int iA = zzzjVar.a();
        Object objCast = this.f31131b.f31090b.cast(i2 >= iA ? zzzyVar.f31135c.c(i2 - iA) : zzzjVar.c(i2));
        int i3 = this.d;
        if (i3 == 0) {
            this.f31132c = -1;
            return objCast;
        }
        int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i3) + 1;
        this.d >>>= iNumberOfTrailingZeros;
        this.f31132c += iNumberOfTrailingZeros;
        return objCast;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
