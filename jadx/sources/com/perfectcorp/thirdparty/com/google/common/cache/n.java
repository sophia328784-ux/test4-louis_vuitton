package com.perfectcorp.thirdparty.com.google.common.cache;

/* JADX INFO: loaded from: classes3.dex */
final enum n extends d.EnumC0206d {
    public n() {
        super("WEAK_ACCESS", 5);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.EnumC0206d
    public final x b(d.n nVar, x xVar, x xVar2) {
        x xVarB = super.b(nVar, xVar, xVar2);
        d.EnumC0206d.d(xVar, xVarB);
        return xVarB;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.EnumC0206d
    public final x c(d.n nVar, Object obj, int i2, x xVar) {
        d.y yVar = new d.y(nVar.f42156i, obj, i2, xVar);
        yVar.f42178e = Long.MAX_VALUE;
        d.m mVar = d.m.f42150a;
        yVar.f42179f = mVar;
        yVar.g = mVar;
        return yVar;
    }
}
