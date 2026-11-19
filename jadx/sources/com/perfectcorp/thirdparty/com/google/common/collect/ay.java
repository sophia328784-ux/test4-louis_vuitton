package com.perfectcorp.thirdparty.com.google.common.collect;

import defpackage.b21;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
final class ay implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f42256b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ int f42257c;
    public /* synthetic */ Iterator d;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f42256b < this.f42257c && this.d.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            this.f42256b++;
            return this.d.next();
        }
        b21.x();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.d.remove();
    }
}
