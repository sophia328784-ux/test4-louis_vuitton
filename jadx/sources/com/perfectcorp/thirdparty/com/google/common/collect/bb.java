package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.ListIterator;

/* JADX INFO: loaded from: classes3.dex */
final class bb extends bx {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Lists.e f42267c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bb(Lists.e eVar, ListIterator listIterator) {
        super(listIterator);
        this.f42267c = eVar;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.bw
    public final Object a(Object obj) {
        return this.f42267c.f42215c.apply(obj);
    }
}
