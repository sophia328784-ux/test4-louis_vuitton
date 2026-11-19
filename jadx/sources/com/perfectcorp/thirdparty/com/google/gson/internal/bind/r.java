package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;
import defpackage.o60;

/* JADX INFO: loaded from: classes3.dex */
final class r implements com.perfectcorp.thirdparty.com.google.gson.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public /* synthetic */ Class f42516a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ com.perfectcorp.thirdparty.com.google.gson.k f42517b;

    @Override // com.perfectcorp.thirdparty.com.google.gson.l
    public final com.perfectcorp.thirdparty.com.google.gson.k a(Gson gson, TypeToken typeToken) {
        if (typeToken.f42555a == this.f42516a) {
            return this.f42517b;
        }
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Factory[type=");
        o60.z(this.f42516a, sb, ",adapter=");
        sb.append(this.f42517b);
        sb.append("]");
        return sb.toString();
    }
}
