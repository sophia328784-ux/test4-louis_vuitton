package com.google.android.gms.auth.api;

import com.google.android.gms.common.api.Api;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Auth {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Api f28695a;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        Api.ClientKey clientKey2 = new Api.ClientKey();
        zba zbaVar = new zba();
        zbb zbbVar = new zbb();
        Api api = AuthProxy.f28696a;
        new Api("Auth.CREDENTIALS_API", zbaVar, clientKey);
        f28695a = new Api("Auth.GOOGLE_SIGN_IN_API", zbbVar, clientKey2);
        Api api2 = AuthProxy.f28696a;
        new com.google.android.gms.internal.p000authapi.zbd();
        new com.google.android.gms.auth.api.signin.internal.zbd();
    }
}
