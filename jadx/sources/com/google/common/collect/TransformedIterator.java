package com.google.common.collect;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
abstract class TransformedIterator<F, T> implements Iterator<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Iterator f33731b;

    public TransformedIterator(Iterator it) {
        it.getClass();
        this.f33731b = it;
    }

    public abstract Object a(Object obj);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f33731b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return a(this.f33731b.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f33731b.remove();
    }
}
