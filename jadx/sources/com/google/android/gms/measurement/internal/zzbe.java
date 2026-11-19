package com.google.android.gms.measurement.internal;

import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzbe implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Iterator f31601b;

    public zzbe(zzbf zzbfVar) {
        Objects.requireNonNull(zzbfVar);
        this.f31601b = zzbfVar.f31602b.keySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f31601b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return (String) this.f31601b.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
