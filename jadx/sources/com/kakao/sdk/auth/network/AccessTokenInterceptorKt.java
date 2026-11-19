package com.kakao.sdk.auth.network;

import kotlin.Metadata;
import okhttp3.Request;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"auth_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public abstract class AccessTokenInterceptorKt {
    public static final Request a(Request request, String str) {
        request.getClass();
        str.getClass();
        Request.Builder builder = new Request.Builder(request);
        builder.f76976c.f("Authorization");
        builder.a("Authorization", "Bearer ".concat(str));
        return new Request(builder);
    }
}
