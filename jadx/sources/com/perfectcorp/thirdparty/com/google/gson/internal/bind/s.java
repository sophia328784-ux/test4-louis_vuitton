package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;
import defpackage.o60;

/* JADX INFO: loaded from: classes3.dex */
final class s implements com.perfectcorp.thirdparty.com.google.gson.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public /* synthetic */ Class f42518a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Class f42519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ com.perfectcorp.thirdparty.com.google.gson.k f42520c;

    @Override // com.perfectcorp.thirdparty.com.google.gson.l
    public final com.perfectcorp.thirdparty.com.google.gson.k a(Gson gson, TypeToken typeToken) {
        Class cls = typeToken.f42555a;
        if (cls == this.f42518a || cls == this.f42519b) {
            return this.f42520c;
        }
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Factory[type=");
        o60.z(this.f42519b, sb, "+");
        o60.z(this.f42518a, sb, ",adapter=");
        sb.append(this.f42520c);
        sb.append("]");
        return sb.toString();
    }
}
