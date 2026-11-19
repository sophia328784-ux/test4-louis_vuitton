package com.google.android.gms.internal.gtm;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzkq implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Iterator f30177b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Iterator f30178c;

    public zzkq(Iterator it, Iterator it2) {
        this.f30177b = it;
        this.f30178c = it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return ((zzkp) this.f30177b).hasNext() || this.f30178c.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        zzkp zzkpVar = (zzkp) this.f30177b;
        return zzkpVar.hasNext() ? zzkpVar.next() : (zzkk) this.f30178c.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
