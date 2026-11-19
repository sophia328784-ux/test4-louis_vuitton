package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;

/* JADX INFO: loaded from: classes3.dex */
final class ac implements com.perfectcorp.thirdparty.com.google.gson.l {
    @Override // com.perfectcorp.thirdparty.com.google.gson.l
    public final com.perfectcorp.thirdparty.com.google.gson.k a(Gson gson, TypeToken typeToken) {
        Class superclass = typeToken.f42555a;
        if (!Enum.class.isAssignableFrom(superclass) || superclass == Enum.class) {
            return null;
        }
        if (!superclass.isEnum()) {
            superclass = superclass.getSuperclass();
        }
        return new p.a(superclass);
    }
}
