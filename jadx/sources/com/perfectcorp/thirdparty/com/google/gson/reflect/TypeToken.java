package com.perfectcorp.thirdparty.com.google.gson.reflect;

import com.perfectcorp.thirdparty.com.google.gson.internal.a;
import defpackage.v7;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes3.dex */
public class TypeToken<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f42555a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Type f42556b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f42557c;

    public TypeToken() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        if (genericSuperclass instanceof Class) {
            v7.h("Missing type parameter.");
            throw null;
        }
        Type typeD = a.d(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        this.f42556b = typeD;
        this.f42555a = a.e(typeD);
        this.f42557c = typeD.hashCode();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TypeToken) {
            return a.c(this.f42556b, ((TypeToken) obj).f42556b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f42557c;
    }

    public final String toString() {
        return a.f(this.f42556b);
    }

    public TypeToken(Type type) {
        type.getClass();
        Type typeD = a.d(type);
        this.f42556b = typeD;
        this.f42555a = a.e(typeD);
        this.f42557c = typeD.hashCode();
    }
}
