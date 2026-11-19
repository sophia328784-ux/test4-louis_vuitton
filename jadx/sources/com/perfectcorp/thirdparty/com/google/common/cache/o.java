package com.perfectcorp.thirdparty.com.google.common.cache;

/* JADX INFO: loaded from: classes3.dex */
final enum o extends d.EnumC0206d {
    public o() {
        super("WEAK_WRITE", 6);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.EnumC0206d
    public final x b(d.n nVar, x xVar, x xVar2) {
        x xVarB = super.b(nVar, xVar, xVar2);
        d.EnumC0206d.e(xVar, xVarB);
        return xVarB;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.EnumC0206d
    public final x c(d.n nVar, Object obj, int i2, x xVar) {
        d.ac acVar = new d.ac(nVar.f42156i, obj, i2, xVar);
        acVar.f42127e = Long.MAX_VALUE;
        d.m mVar = d.m.f42150a;
        acVar.f42128f = mVar;
        acVar.g = mVar;
        return acVar;
    }
}
