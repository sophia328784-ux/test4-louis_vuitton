package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
final class z extends com.perfectcorp.thirdparty.com.google.gson.k<Number> {
    @Override // com.perfectcorp.thirdparty.com.google.gson.k
    public final /* synthetic */ Object a(com.perfectcorp.thirdparty.com.google.gson.stream.a aVar) {
        com.perfectcorp.thirdparty.com.google.gson.stream.c cVarW = aVar.w();
        int i2 = v.f42524a[cVarW.ordinal()];
        if (i2 == 1) {
            aVar.C();
            return null;
        }
        if (i2 == 2) {
            return new com.perfectcorp.thirdparty.com.google.gson.internal.s(aVar.z());
        }
        throw new com.perfectcorp.thirdparty.com.google.gson.j("Expecting number, got: " + cVarW);
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.k
    public final /* bridge */ /* synthetic */ void b(com.perfectcorp.thirdparty.com.google.gson.stream.d dVar, Object obj) throws IOException {
        dVar.n((Number) obj);
    }
}
