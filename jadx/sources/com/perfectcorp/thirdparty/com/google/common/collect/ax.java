package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Function;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
final class ax extends bw {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function f42255c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ax(Iterator it, Function function) {
        super(it);
        this.f42255c = function;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.bw
    public final Object a(Object obj) {
        return this.f42255c.apply(obj);
    }
}
