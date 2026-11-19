package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.ListIterator;

/* JADX INFO: loaded from: classes3.dex */
final class ba extends bx {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Lists.d f42266c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ba(Lists.d dVar, ListIterator listIterator) {
        super(listIterator);
        this.f42266c = dVar;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.bw
    public final Object a(Object obj) {
        return this.f42266c.f42213c.apply(obj);
    }
}
