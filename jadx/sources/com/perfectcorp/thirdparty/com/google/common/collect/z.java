package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
final class z extends FluentIterable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Iterable f42355c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(Iterable iterable, Iterable iterable2) {
        super(iterable);
        this.f42355c = iterable2;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.f42355c.iterator();
    }
}
