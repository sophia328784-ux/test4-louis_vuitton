package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class bt extends bw {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ bs.b f42293c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bt(bs.b bVar, Iterator it) {
        super(it);
        this.f42293c = bVar;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.bw
    public final Object a(Object obj) {
        bu buVar = new bu();
        buVar.o = this;
        buVar.n = (Map.Entry) obj;
        return buVar;
    }
}
