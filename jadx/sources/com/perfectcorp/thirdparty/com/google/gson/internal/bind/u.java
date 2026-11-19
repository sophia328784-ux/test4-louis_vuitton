package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import com.perfectcorp.thirdparty.com.google.gson.JsonElement;

/* JADX INFO: loaded from: classes3.dex */
final class u extends com.perfectcorp.thirdparty.com.google.gson.k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Class f42522a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t f42523b;

    public u(t tVar, Class cls) {
        this.f42523b = tVar;
        this.f42522a = cls;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.k
    public final Object a(com.perfectcorp.thirdparty.com.google.gson.stream.a aVar) {
        JsonElement jsonElementD = ab.d(aVar);
        if (jsonElementD != null) {
            Class cls = this.f42522a;
            if (!cls.isInstance(jsonElementD)) {
                throw new com.perfectcorp.thirdparty.com.google.gson.j("Expected a " + cls.getName() + " but was " + jsonElementD.getClass().getName());
            }
        }
        return jsonElementD;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.k
    public final void b(com.perfectcorp.thirdparty.com.google.gson.stream.d dVar, Object obj) {
        this.f42523b.f42521a.b(dVar, obj);
    }
}
