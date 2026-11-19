package com.perfectcorp.thirdparty.com.google.common.cache;

/* JADX INFO: loaded from: classes3.dex */
final enum k extends d.EnumC0206d {
    public k() {
        super("STRONG_WRITE", 2);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.EnumC0206d
    public final x b(d.n nVar, x xVar, x xVar2) {
        x xVarB = super.b(nVar, xVar, xVar2);
        d.EnumC0206d.e(xVar, xVarB);
        return xVarB;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.EnumC0206d
    public final x c(d.n nVar, Object obj, int i2, x xVar) {
        d.u uVar = new d.u(obj, i2, xVar);
        uVar.f42174f = Long.MAX_VALUE;
        d.m mVar = d.m.f42150a;
        uVar.g = mVar;
        uVar.f42175h = mVar;
        return uVar;
    }
}
