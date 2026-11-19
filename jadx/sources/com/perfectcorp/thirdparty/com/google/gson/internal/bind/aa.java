package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
final class aa extends com.perfectcorp.thirdparty.com.google.gson.k<String> {
    @Override // com.perfectcorp.thirdparty.com.google.gson.k
    public final /* synthetic */ Object a(com.perfectcorp.thirdparty.com.google.gson.stream.a aVar) {
        com.perfectcorp.thirdparty.com.google.gson.stream.c cVarW = aVar.w();
        if (cVarW != com.perfectcorp.thirdparty.com.google.gson.stream.c.f42572i) {
            return cVarW == com.perfectcorp.thirdparty.com.google.gson.stream.c.f42571h ? Boolean.toString(aVar.B()) : aVar.z();
        }
        aVar.C();
        return null;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.k
    public final /* synthetic */ void b(com.perfectcorp.thirdparty.com.google.gson.stream.d dVar, Object obj) throws IOException {
        dVar.r((String) obj);
    }
}
