package com.google.android.gms.internal.maps;

import defpackage.az;
import defpackage.b21;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzbc extends zzby {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f30275b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f30276c;

    public zzbc(int i2, int i3) {
        if (i3 < 0 || i3 > i2) {
            az.v(zzba.c(i3, i2, "index"));
            throw null;
        }
        this.f30275b = i2;
        this.f30276c = i3;
    }

    public abstract Object a(int i2);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f30276c < this.f30275b;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f30276c > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            b21.x();
            return null;
        }
        int i2 = this.f30276c;
        this.f30276c = i2 + 1;
        return a(i2);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f30276c;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            b21.x();
            return null;
        }
        int i2 = this.f30276c - 1;
        this.f30276c = i2;
        return a(i2);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f30276c - 1;
    }
}
