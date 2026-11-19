package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
final class w extends com.perfectcorp.thirdparty.com.google.gson.k<Boolean> {
    @Override // com.perfectcorp.thirdparty.com.google.gson.k
    public final /* synthetic */ Object a(com.perfectcorp.thirdparty.com.google.gson.stream.a aVar) {
        if (aVar.w() != com.perfectcorp.thirdparty.com.google.gson.stream.c.f42572i) {
            return Boolean.valueOf(aVar.z());
        }
        aVar.C();
        return null;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.k
    public final /* synthetic */ void b(com.perfectcorp.thirdparty.com.google.gson.stream.d dVar, Object obj) throws IOException {
        Boolean bool = (Boolean) obj;
        dVar.r(bool == null ? "null" : bool.toString());
    }
}
