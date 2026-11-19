package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;

/* JADX INFO: loaded from: classes3.dex */
final class ad implements com.perfectcorp.thirdparty.com.google.gson.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public /* synthetic */ TypeToken f42473a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ com.perfectcorp.thirdparty.com.google.gson.k f42474b;

    @Override // com.perfectcorp.thirdparty.com.google.gson.l
    public final com.perfectcorp.thirdparty.com.google.gson.k a(Gson gson, TypeToken typeToken) {
        if (typeToken.equals(this.f42473a)) {
            return this.f42474b;
        }
        return null;
    }
}
