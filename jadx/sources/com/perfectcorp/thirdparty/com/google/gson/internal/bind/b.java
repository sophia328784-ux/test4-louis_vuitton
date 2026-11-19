package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes3.dex */
class b implements com.perfectcorp.thirdparty.com.google.gson.l {
    @Override // com.perfectcorp.thirdparty.com.google.gson.l
    public final com.perfectcorp.thirdparty.com.google.gson.k a(Gson gson, TypeToken typeToken) {
        Type type = typeToken.f42556b;
        boolean z = type instanceof GenericArrayType;
        if (!z && (!(type instanceof Class) || !((Class) type).isArray())) {
            return null;
        }
        Type genericComponentType = z ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
        return new a(gson, gson.a(new TypeToken(genericComponentType)), com.perfectcorp.thirdparty.com.google.gson.internal.a.e(genericComponentType));
    }
}
