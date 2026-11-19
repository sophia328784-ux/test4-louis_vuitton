package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;
import defpackage.o60;

/* JADX INFO: loaded from: classes3.dex */
final class t implements com.perfectcorp.thirdparty.com.google.gson.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.perfectcorp.thirdparty.com.google.gson.k f42521a;

    public t(com.perfectcorp.thirdparty.com.google.gson.k kVar) {
        this.f42521a = kVar;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.l
    public final com.perfectcorp.thirdparty.com.google.gson.k a(Gson gson, TypeToken typeToken) {
        Class cls = typeToken.f42555a;
        if (JsonElement.class.isAssignableFrom(cls)) {
            return new u(this, cls);
        }
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Factory[typeHierarchy=");
        o60.z(JsonElement.class, sb, ",adapter=");
        sb.append(this.f42521a);
        sb.append("]");
        return sb.toString();
    }
}
