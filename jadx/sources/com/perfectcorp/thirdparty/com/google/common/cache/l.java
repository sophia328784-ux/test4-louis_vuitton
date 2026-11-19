package com.perfectcorp.thirdparty.com.google.common.cache;

/* JADX INFO: loaded from: classes3.dex */
final enum l extends d.EnumC0206d {
    public l() {
        super("STRONG_ACCESS_WRITE", 3);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.EnumC0206d
    public final x b(d.n nVar, x xVar, x xVar2) {
        x xVarB = super.b(nVar, xVar, xVar2);
        d.EnumC0206d.d(xVar, xVarB);
        d.EnumC0206d.e(xVar, xVarB);
        return xVarB;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.EnumC0206d
    public final x c(d.n nVar, Object obj, int i2, x xVar) {
        d.r rVar = new d.r(obj, i2, xVar);
        rVar.f42165f = Long.MAX_VALUE;
        d.m mVar = d.m.f42150a;
        rVar.g = mVar;
        rVar.f42166h = mVar;
        rVar.f42167i = Long.MAX_VALUE;
        rVar.f42168j = mVar;
        rVar.f42169k = mVar;
        return rVar;
    }
}
