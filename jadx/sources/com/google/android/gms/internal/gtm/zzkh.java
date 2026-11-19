package com.google.android.gms.internal.gtm;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzkh implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Iterator f30162b;

    public zzkh(Iterator it) {
        this.f30162b = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f30162b.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return new zzkv((String) this.f30162b.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f30162b.remove();
    }
}
