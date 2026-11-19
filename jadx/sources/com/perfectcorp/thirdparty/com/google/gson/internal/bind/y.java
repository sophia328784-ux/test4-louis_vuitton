package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
final class y extends com.perfectcorp.thirdparty.com.google.gson.k<Number> {
    @Override // com.perfectcorp.thirdparty.com.google.gson.k
    public final Object a(com.perfectcorp.thirdparty.com.google.gson.stream.a aVar) {
        if (aVar.w() == com.perfectcorp.thirdparty.com.google.gson.stream.c.f42572i) {
            aVar.C();
            return null;
        }
        try {
            return Long.valueOf(aVar.F());
        } catch (NumberFormatException e2) {
            throw new com.perfectcorp.thirdparty.com.google.gson.j(e2);
        }
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.k
    public final /* bridge */ /* synthetic */ void b(com.perfectcorp.thirdparty.com.google.gson.stream.d dVar, Object obj) throws IOException {
        dVar.n((Number) obj);
    }
}
