package com.google.android.gms.internal.measurement;

import defpackage.b21;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzac implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Iterator f30355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Iterator f30356c;

    public zzac(zzae zzaeVar, Iterator it, Iterator it2) {
        this.f30355b = it;
        this.f30356c = it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f30355b.hasNext()) {
            return true;
        }
        return this.f30356c.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        Iterator it = this.f30355b;
        if (it.hasNext()) {
            return new zzas(((Integer) it.next()).toString());
        }
        Iterator it2 = this.f30356c;
        if (it2.hasNext()) {
            return new zzas((String) it2.next());
        }
        b21.x();
        return null;
    }
}
