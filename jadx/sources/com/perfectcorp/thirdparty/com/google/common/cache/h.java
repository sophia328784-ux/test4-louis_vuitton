package com.perfectcorp.thirdparty.com.google.common.cache;

/* JADX INFO: loaded from: classes3.dex */
final class h extends com.perfectcorp.thirdparty.com.google.common.collect.k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d.c f42187c;

    public h(d.c cVar, x xVar) {
        this.f42187c = cVar;
        this.f42321b = xVar;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.k
    public final /* synthetic */ Object a(Object obj) {
        x xVarF = ((x) obj).f();
        if (xVarF == this.f42187c.f42131b) {
            return null;
        }
        return xVarF;
    }
}
