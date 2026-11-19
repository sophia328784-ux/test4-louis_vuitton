package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzaj implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Iterator f30556b;

    public zzaj(Iterator it) {
        this.f30556b = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f30556b.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return new zzas((String) this.f30556b.next());
    }
}
