package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
final class ap extends FluentIterable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Iterable f42241c;

    public ap(Iterable iterable) {
        this.f42241c = iterable;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Iterator it = this.f42241c.iterator();
        it.getClass();
        av avVar = new av();
        avVar.f42252b = it;
        avVar.f42253c = 30;
        return avVar;
    }
}
