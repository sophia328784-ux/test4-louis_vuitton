package com.google.common.collect;

import com.google.common.base.Preconditions;
import defpackage.b21;

/* JADX INFO: loaded from: classes2.dex */
abstract class AbstractIndexedListIterator<E> extends UnmodifiableListIterator<E> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f33510b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f33511c;

    public AbstractIndexedListIterator(int i2, int i3) {
        Preconditions.n(i3, i2);
        this.f33510b = i2;
        this.f33511c = i3;
    }

    public abstract Object a(int i2);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f33511c < this.f33510b;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f33511c > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            b21.x();
            return null;
        }
        int i2 = this.f33511c;
        this.f33511c = i2 + 1;
        return a(i2);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f33511c;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            b21.x();
            return null;
        }
        int i2 = this.f33511c - 1;
        this.f33511c = i2;
        return a(i2);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f33511c - 1;
    }
}
