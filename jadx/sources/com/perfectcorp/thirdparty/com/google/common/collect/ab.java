package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
final class ab extends FluentIterable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Iterable[] f42226c;

    public ab(Iterable[] iterableArr) {
        this.f42226c = iterableArr;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        ac acVar = new ac(this, this.f42226c.length);
        at.b bVar = new at.b();
        bVar.f42247c = at.a.f42245e;
        bVar.d = acVar;
        return bVar;
    }
}
