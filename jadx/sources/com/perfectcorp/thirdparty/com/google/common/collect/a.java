package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import defpackage.b21;

/* JADX INFO: loaded from: classes3.dex */
abstract class a<E> extends bz<E> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f42223b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f42224c;

    public a(int i2, int i3) {
        Preconditions.e(i3, i2);
        this.f42223b = i2;
        this.f42224c = i3;
    }

    public abstract Object a(int i2);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f42224c < this.f42223b;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f42224c > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            b21.x();
            return null;
        }
        int i2 = this.f42224c;
        this.f42224c = i2 + 1;
        return a(i2);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f42224c;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            b21.x();
            return null;
        }
        int i2 = this.f42224c - 1;
        this.f42224c = i2;
        return a(i2);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f42224c - 1;
    }
}
