package com.perfectcorp.thirdparty.com.google.common.cache;

/* JADX INFO: loaded from: classes3.dex */
final enum p extends d.EnumC0206d {
    public p() {
        super("WEAK_ACCESS_WRITE", 7);
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
        d.z zVar = new d.z(nVar.f42156i, obj, i2, xVar);
        zVar.f42180e = Long.MAX_VALUE;
        d.m mVar = d.m.f42150a;
        zVar.f42181f = mVar;
        zVar.g = mVar;
        zVar.f42182h = Long.MAX_VALUE;
        zVar.f42183i = mVar;
        zVar.f42184j = mVar;
        return zVar;
    }
}
