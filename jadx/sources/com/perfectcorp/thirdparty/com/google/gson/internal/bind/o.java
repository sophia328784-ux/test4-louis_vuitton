package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* JADX INFO: loaded from: classes3.dex */
final class o<T> extends com.perfectcorp.thirdparty.com.google.gson.k<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Gson f42505a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.com.google.gson.k f42506b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Type f42507c;

    public o(Gson gson, com.perfectcorp.thirdparty.com.google.gson.k kVar, Type type) {
        this.f42505a = gson;
        this.f42506b = kVar;
        this.f42507c = type;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.k
    public final Object a(com.perfectcorp.thirdparty.com.google.gson.stream.a aVar) {
        return this.f42506b.a(aVar);
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.k
    public final void b(com.perfectcorp.thirdparty.com.google.gson.stream.d dVar, Object obj) {
        Type type = this.f42507c;
        Type type2 = (obj == null || !(type == Object.class || (type instanceof TypeVariable) || (type instanceof Class))) ? type : obj.getClass();
        com.perfectcorp.thirdparty.com.google.gson.k kVar = this.f42506b;
        if (type2 != type) {
            com.perfectcorp.thirdparty.com.google.gson.k kVarA = this.f42505a.a(new TypeToken(type2));
            if (!(kVarA instanceof l.a) || (kVar instanceof l.a)) {
                kVar = kVarA;
            }
        }
        kVar.b(dVar, obj);
    }
}
