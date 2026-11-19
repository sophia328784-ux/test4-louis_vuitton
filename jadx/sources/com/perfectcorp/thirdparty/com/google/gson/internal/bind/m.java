package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes3.dex */
final class m extends l.b {
    public final /* synthetic */ Field d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Gson f42494e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ com.perfectcorp.thirdparty.com.google.gson.k f42495f;
    public final /* synthetic */ TypeToken g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f42496h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(String str, boolean z, boolean z2, Field field, Gson gson, com.perfectcorp.thirdparty.com.google.gson.k kVar, TypeToken typeToken, boolean z3) {
        super(str, z, z2);
        this.d = field;
        this.f42494e = gson;
        this.f42495f = kVar;
        this.g = typeToken;
        this.f42496h = z3;
    }
}
