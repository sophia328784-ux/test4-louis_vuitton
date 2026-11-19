package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
abstract class bw<F, T> implements Iterator<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Iterator f42295b;

    public bw(Iterator it) {
        it.getClass();
        this.f42295b = it;
    }

    public abstract Object a(Object obj);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f42295b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return a(this.f42295b.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f42295b.remove();
    }
}
