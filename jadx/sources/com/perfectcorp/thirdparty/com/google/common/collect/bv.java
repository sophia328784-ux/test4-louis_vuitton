package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
final class bv extends bw {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ bs.c f42294c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bv(bs.c cVar, Iterator it) {
        super(it);
        this.f42294c = cVar;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.bw
    public final /* bridge */ /* synthetic */ Object a(Object obj) {
        return bs.a(this.f42294c.f42292c, (Collection) obj);
    }
}
