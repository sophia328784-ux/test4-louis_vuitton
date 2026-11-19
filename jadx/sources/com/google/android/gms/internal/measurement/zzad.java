package com.google.android.gms.internal.measurement;

import defpackage.d21;
import defpackage.zy0;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzad implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f30390b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzae f30391c;

    public zzad(zzae zzaeVar) {
        Objects.requireNonNull(zzaeVar);
        this.f30391c = zzaeVar;
        this.f30390b = 0;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f30390b < this.f30391c.o();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        int i2 = this.f30390b;
        zzae zzaeVar = this.f30391c;
        int iO = zzaeVar.o();
        int i3 = this.f30390b;
        if (i2 < iO) {
            this.f30390b = i3 + 1;
            return zzaeVar.p(i3);
        }
        zy0.c(d21.f(i3, "Out of bounds index: ", new StringBuilder(String.valueOf(i3).length() + 21)));
        return null;
    }
}
