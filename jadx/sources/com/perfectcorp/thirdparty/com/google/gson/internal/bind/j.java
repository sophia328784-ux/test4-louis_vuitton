package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;

/* JADX INFO: loaded from: classes3.dex */
final class j implements com.perfectcorp.thirdparty.com.google.gson.l {
    @Override // com.perfectcorp.thirdparty.com.google.gson.l
    public final com.perfectcorp.thirdparty.com.google.gson.k a(Gson gson, TypeToken typeToken) {
        if (typeToken.f42555a == Object.class) {
            return new i(gson);
        }
        return null;
    }
}
