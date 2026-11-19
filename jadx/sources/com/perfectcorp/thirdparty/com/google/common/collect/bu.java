package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class bu extends ae {
    public /* synthetic */ Map.Entry n;
    public /* synthetic */ bt o;

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.af
    public final /* bridge */ /* synthetic */ Object delegate() {
        return this.n;
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getValue() {
        return bs.a(this.o.f42293c.f42292c, (Collection) this.n.getValue());
    }
}
