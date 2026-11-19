package com.perfectcorp.thirdparty.com.google.common.cache;

/* JADX INFO: loaded from: classes3.dex */
final enum j extends d.EnumC0206d {
    public j() {
        super("STRONG_ACCESS", 1);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.EnumC0206d
    public final x b(d.n nVar, x xVar, x xVar2) {
        x xVarB = super.b(nVar, xVar, xVar2);
        d.EnumC0206d.d(xVar, xVarB);
        return xVarB;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.EnumC0206d
    public final x c(d.n nVar, Object obj, int i2, x xVar) {
        d.q qVar = new d.q(obj, i2, xVar);
        qVar.f42163f = Long.MAX_VALUE;
        d.m mVar = d.m.f42150a;
        qVar.g = mVar;
        qVar.f42164h = mVar;
        return qVar;
    }
}
