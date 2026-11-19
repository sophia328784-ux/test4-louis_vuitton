package com.perfectcorp.thirdparty.com.google.gson.internal;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes3.dex */
final class l implements x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public /* synthetic */ Type f42533a;

    @Override // com.perfectcorp.thirdparty.com.google.gson.internal.x
    public final Object a() {
        Type type = this.f42533a;
        if (!(type instanceof ParameterizedType)) {
            throw new com.perfectcorp.thirdparty.com.google.gson.h("Invalid EnumSet type: " + type.toString());
        }
        Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
        if (type2 instanceof Class) {
            return EnumSet.noneOf((Class) type2);
        }
        throw new com.perfectcorp.thirdparty.com.google.gson.h("Invalid EnumSet type: " + type.toString());
    }
}
