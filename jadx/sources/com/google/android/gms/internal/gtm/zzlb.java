package com.google.android.gms.internal.gtm;

import defpackage.az;
import defpackage.b21;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzlb extends zzln {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f30189b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f30190c;

    public zzlb(int i2, int i3) {
        if (i3 < 0 || i3 > i2) {
            az.v(zzkz.c(i3, i2, "index"));
            throw null;
        }
        this.f30189b = i2;
        this.f30190c = i3;
    }

    public abstract Object a(int i2);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f30190c < this.f30189b;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f30190c > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            b21.x();
            return null;
        }
        int i2 = this.f30190c;
        this.f30190c = i2 + 1;
        return a(i2);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f30190c;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            b21.x();
            return null;
        }
        int i2 = this.f30190c - 1;
        this.f30190c = i2;
        return a(i2);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f30190c - 1;
    }
}
