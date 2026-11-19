package com.kakao.sdk.auth;

import com.google.gson.Gson;
import com.kakao.sdk.auth.model.AccessTokenResponse;
import com.kakao.sdk.auth.model.OAuthToken;
import com.kakao.sdk.auth.network.ApiFactoryKt;
import com.kakao.sdk.common.KakaoSdk;
import com.kakao.sdk.common.model.ApplicationInfo;
import com.kakao.sdk.common.model.ApprovalType;
import com.kakao.sdk.common.model.AuthError;
import com.kakao.sdk.common.model.AuthErrorCause;
import com.kakao.sdk.common.model.AuthErrorResponse;
import com.kakao.sdk.common.model.ContextInfo;
import com.kakao.sdk.common.util.KakaoJson;
import com.kakao.sdk.network.ApiFactory;
import java.lang.reflect.Type;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.ResponseBody;
import retrofit2.HttpException;
import retrofit2.Response;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u000eB9\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/kakao/sdk/auth/AuthApiManager;", "", "Lcom/kakao/sdk/auth/AuthApi;", "authApi", "Lcom/kakao/sdk/auth/TokenManagerProvider;", "tokenManagerProvider", "Lcom/kakao/sdk/common/model/ApplicationInfo;", "applicationInfo", "Lcom/kakao/sdk/common/model/ContextInfo;", "contextInfo", "Lcom/kakao/sdk/common/model/ApprovalType;", "approvalType", "<init>", "(Lcom/kakao/sdk/auth/AuthApi;Lcom/kakao/sdk/auth/TokenManagerProvider;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApprovalType;)V", "Companion", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AuthApiManager {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Companion f35812f = new Companion(null);
    public static final Lazy g = LazyKt.b(AuthApiManager$Companion$instance$2.f35817c);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AuthApi f35813a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TokenManagerProvider f35814b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ApplicationInfo f35815c;
    public final ContextInfo d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ApprovalType f35816e;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/kakao/sdk/auth/AuthApiManager$Companion;", "", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Throwable a(HttpException httpException) {
            Object failure;
            ResponseBody responseBody;
            try {
                Response response = httpException.d;
                String strString = (response == null || (responseBody = response.f79451c) == null) ? null : responseBody.string();
                Gson gson = KakaoJson.f35885a;
                strString.getClass();
                AuthErrorResponse authErrorResponse = (AuthErrorResponse) KakaoJson.f35885a.fromJson(strString, (Type) AuthErrorResponse.class);
                try {
                    Result.Companion companion = Result.INSTANCE;
                    failure = (AuthErrorCause) KakaoJson.a(authErrorResponse.getError(), AuthErrorCause.class);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    failure = new Result.Failure(th);
                }
                Object obj = AuthErrorCause.Unknown;
                if (failure instanceof Result.Failure) {
                    failure = obj;
                }
                return new AuthError(httpException.f79346b, (AuthErrorCause) failure, authErrorResponse);
            } catch (Throwable th2) {
                return th2;
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AuthApiManager(AuthApi authApi, TokenManagerProvider tokenManagerProvider, ApplicationInfo applicationInfo, ContextInfo contextInfo, ApprovalType approvalType, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            Lazy lazy = ApiFactory.f35897a;
            Object objB = ((Retrofit) ApiFactoryKt.f35850b.getF71699b()).b(AuthApi.class);
            objB.getClass();
            authApi = (AuthApi) objB;
        }
        if ((i2 & 2) != 0) {
            TokenManagerProvider.f35842b.getClass();
            tokenManagerProvider = (TokenManagerProvider) TokenManagerProvider.f35843c.getF71699b();
        }
        applicationInfo = (i2 & 4) != 0 ? KakaoSdk.a() : applicationInfo;
        contextInfo = (i2 & 8) != 0 ? KakaoSdk.a() : contextInfo;
        if ((i2 & 16) == 0 || (approvalType = KakaoSdk.d) != null) {
            this(authApi, tokenManagerProvider, applicationInfo, contextInfo, approvalType);
        } else {
            Intrinsics.h("approvalType");
            throw null;
        }
    }

    public final OAuthToken a(OAuthToken oAuthToken) throws Throwable {
        Response responseExecute = this.f35813a.refreshToken(this.f35815c.getMClientId(), this.d.getMKeyHash(), oAuthToken.getRefreshToken(), this.f35816e.getValue(), "refresh_token").execute();
        AccessTokenResponse accessTokenResponse = (AccessTokenResponse) responseExecute.f79450b;
        if (accessTokenResponse == null) {
            HttpException httpException = new HttpException(responseExecute);
            f35812f.getClass();
            throw Companion.a(httpException);
        }
        OAuthToken.INSTANCE.getClass();
        OAuthToken oAuthTokenA = OAuthToken.Companion.a(accessTokenResponse, oAuthToken);
        this.f35814b.f35844a.b(oAuthTokenA);
        return oAuthTokenA;
    }

    public AuthApiManager(AuthApi authApi, TokenManagerProvider tokenManagerProvider, ApplicationInfo applicationInfo, ContextInfo contextInfo, ApprovalType approvalType) {
        authApi.getClass();
        tokenManagerProvider.getClass();
        applicationInfo.getClass();
        contextInfo.getClass();
        approvalType.getClass();
        this.f35813a = authApi;
        this.f35814b = tokenManagerProvider;
        this.f35815c = applicationInfo;
        this.d = contextInfo;
        this.f35816e = approvalType;
    }

    public AuthApiManager() {
        this(null, null, null, null, null, 31, null);
    }
}
