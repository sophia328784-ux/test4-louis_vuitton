package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
final class as extends FluentIterable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Iterable f42244c;

    public as(Iterable iterable) {
        this.f42244c = iterable;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Iterator it = this.f42244c.iterator();
        it.getClass();
        ay ayVar = new ay();
        ayVar.f42257c = 2;
        ayVar.d = it;
        return ayVar;
    }
}
