package com.perfectcorp.thirdparty.com.google.gson;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
final class e extends k<Number> {
    @Override // com.perfectcorp.thirdparty.com.google.gson.k
    public final /* synthetic */ Object a(com.perfectcorp.thirdparty.com.google.gson.stream.a aVar) {
        if (aVar.w() != com.perfectcorp.thirdparty.com.google.gson.stream.c.f42572i) {
            return Double.valueOf(aVar.E());
        }
        aVar.C();
        return null;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.k
    public final /* synthetic */ void b(com.perfectcorp.thirdparty.com.google.gson.stream.d dVar, Object obj) throws IOException {
        Number number = (Number) obj;
        if (number == null) {
            dVar.y();
        } else {
            Gson.d(number.doubleValue());
            dVar.n(number);
        }
    }
}
