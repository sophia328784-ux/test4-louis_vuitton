package com.kakao.sdk.auth.network;

import com.google.gson.Gson;
import com.kakao.sdk.auth.AuthApiManager;
import com.kakao.sdk.auth.TokenManagerProvider;
import com.kakao.sdk.auth.model.OAuthToken;
import com.kakao.sdk.common.model.ApiError;
import com.kakao.sdk.common.model.ApiErrorCause;
import com.kakao.sdk.common.model.ApiErrorResponse;
import com.kakao.sdk.common.model.ClientError;
import com.kakao.sdk.common.model.ClientErrorCause;
import com.kakao.sdk.common.util.KakaoJson;
import com.kakao.sdk.network.ExceptionWrapper;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.ResponseBody$Companion$asResponseBody$1;
import okhttp3.internal.http.RealInterceptorChain;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;", "Lokhttp3/Interceptor;", "Lcom/kakao/sdk/auth/TokenManagerProvider;", "tokenManagerProvider", "Lcom/kakao/sdk/auth/AuthApiManager;", "manager", "<init>", "(Lcom/kakao/sdk/auth/TokenManagerProvider;Lcom/kakao/sdk/auth/AuthApiManager;)V", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AccessTokenInterceptor implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TokenManagerProvider f35847a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AuthApiManager f35848b;

    /* JADX WARN: Illegal instructions before constructor call */
    public AccessTokenInterceptor(TokenManagerProvider tokenManagerProvider, AuthApiManager authApiManager, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            TokenManagerProvider.f35842b.getClass();
            tokenManagerProvider = (TokenManagerProvider) TokenManagerProvider.f35843c.getF71699b();
        }
        if ((i2 & 2) != 0) {
            AuthApiManager.f35812f.getClass();
            authApiManager = (AuthApiManager) AuthApiManager.g.getF71699b();
        }
        this(tokenManagerProvider, authApiManager);
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws ExceptionWrapper {
        ResponseBody$Companion$asResponseBody$1 responseBody$Companion$asResponseBody$1A;
        String accessToken;
        OAuthToken f35840c = this.f35847a.f35844a.getF35840c();
        ApiErrorCause apiErrorCause = null;
        String accessToken2 = f35840c != null ? f35840c.getAccessToken() : null;
        if (accessToken2 == null) {
            throw new ExceptionWrapper(new ClientError(ClientErrorCause.TokenNotFound, null, 2, null));
        }
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Request requestA = AccessTokenInterceptorKt.a(realInterceptorChain.f77173e, accessToken2);
        Response responseB = realInterceptorChain.b(requestA);
        ResponseBody responseBody = responseB.f76988h;
        String strString = responseBody != null ? responseBody.string() : null;
        Response.Builder builder = new Response.Builder(responseB);
        if (strString != null) {
            ResponseBody.Companion companion = ResponseBody.INSTANCE;
            MediaType f77014f = responseBody.getF77014f();
            companion.getClass();
            responseBody$Companion$asResponseBody$1A = ResponseBody.Companion.a(strString, f77014f);
        } else {
            responseBody$Companion$asResponseBody$1A = null;
        }
        responseBody$Companion$asResponseBody$1A.getClass();
        builder.g = responseBody$Companion$asResponseBody$1A;
        Response responseA = builder.a();
        if (strString != null) {
            ResponseBody.Companion companion2 = ResponseBody.INSTANCE;
            MediaType f77014f2 = responseBody.getF77014f();
            companion2.getClass();
            ResponseBody.Companion.a(strString, f77014f2);
        }
        if (!responseA.r) {
            ApiErrorResponse apiErrorResponse = strString != null ? (ApiErrorResponse) KakaoJson.f35885a.fromJson(strString, (Type) ApiErrorResponse.class) : null;
            if (apiErrorResponse != null) {
                Gson gson = KakaoJson.f35885a;
                apiErrorCause = (ApiErrorCause) KakaoJson.a(String.valueOf(apiErrorResponse.getCode()), ApiErrorCause.class);
            }
            if (apiErrorCause != null && new ApiError(responseA.f76986e, apiErrorCause, apiErrorResponse).getReason() == ApiErrorCause.InvalidToken) {
                synchronized (this) {
                    OAuthToken f35840c2 = this.f35847a.f35844a.getF35840c();
                    if (f35840c2 != null) {
                        if (Intrinsics.c(f35840c2.getAccessToken(), accessToken2)) {
                            try {
                                accessToken = this.f35848b.a(f35840c2).getAccessToken();
                            } catch (Throwable th) {
                                throw new ExceptionWrapper(th);
                            }
                        } else {
                            accessToken = f35840c2.getAccessToken();
                        }
                        if (!StringsKt.k(requestA.f76969a.f76925i, "/v1/user/check_access_token", false)) {
                            return realInterceptorChain.b(AccessTokenInterceptorKt.a(requestA, accessToken));
                        }
                    }
                    return responseA;
                }
            }
        }
        return responseA;
    }

    public AccessTokenInterceptor(TokenManagerProvider tokenManagerProvider, AuthApiManager authApiManager) {
        tokenManagerProvider.getClass();
        authApiManager.getClass();
        this.f35847a = tokenManagerProvider;
        this.f35848b = authApiManager;
    }

    public AccessTokenInterceptor() {
        this(null, null, 3, null);
    }
}
