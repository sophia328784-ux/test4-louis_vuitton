package com.kakao.sdk.auth.network;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
public final class ApiFactoryKt$accessTokenInterceptor$2 extends Lambda implements Function0<AccessTokenInterceptor> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ApiFactoryKt$accessTokenInterceptor$2 f35853c = new ApiFactoryKt$accessTokenInterceptor$2(0);

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        return new AccessTokenInterceptor(null, null, 3, null);
    }
}
