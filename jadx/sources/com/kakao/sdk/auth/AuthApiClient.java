package com.kakao.sdk.auth;

import com.kakao.sdk.auth.model.AccessTokenResponse;
import com.kakao.sdk.auth.model.OAuthToken;
import com.kakao.sdk.common.model.ApplicationInfo;
import com.kakao.sdk.common.model.ClientError;
import com.kakao.sdk.common.model.ClientErrorCause;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.HttpException;
import retrofit2.Response;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\bB\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/kakao/sdk/auth/AuthApiClient;", "", "Lcom/kakao/sdk/auth/AuthApiManager;", "manager", "Lcom/kakao/sdk/auth/TokenManagerProvider;", "tokenManagerProvider", "<init>", "(Lcom/kakao/sdk/auth/AuthApiManager;Lcom/kakao/sdk/auth/TokenManagerProvider;)V", "Companion", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AuthApiClient {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f35808b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy f35809c = LazyKt.b(AuthApiClient$Companion$instance$2.f35811c);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AuthApiManager f35810a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/kakao/sdk/auth/AuthApiClient$Companion;", "", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AuthApiClient(AuthApiManager authApiManager, TokenManagerProvider tokenManagerProvider, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            AuthApiManager.f35812f.getClass();
            authApiManager = (AuthApiManager) AuthApiManager.g.getF71699b();
        }
        if ((i2 & 2) != 0) {
            TokenManagerProvider.f35842b.getClass();
            tokenManagerProvider = (TokenManagerProvider) TokenManagerProvider.f35843c.getF71699b();
        }
        this(authApiManager, tokenManagerProvider);
    }

    public final void a(String str, String str2, final Function2 function2) {
        str.getClass();
        final AuthApiManager authApiManager = this.f35810a;
        authApiManager.getClass();
        AuthApi authApi = authApiManager.f35813a;
        ApplicationInfo applicationInfo = authApiManager.f35815c;
        authApi.issueAccessToken(applicationInfo.getMClientId(), authApiManager.d.getMKeyHash(), str, applicationInfo.a(), str2, authApiManager.f35816e.getValue(), "authorization_code").p(new Callback<AccessTokenResponse>() { // from class: com.kakao.sdk.auth.AuthApiManager$issueAccessToken$1
            @Override // retrofit2.Callback
            public final void onFailure(Call call, Throwable th) {
                function2.invoke(null, th);
            }

            @Override // retrofit2.Callback
            public final void onResponse(Call call, Response response) {
                boolean z = response.f79449a.r;
                Function2 function3 = function2;
                if (!z) {
                    AuthApiManager.Companion companion = AuthApiManager.f35812f;
                    HttpException httpException = new HttpException(response);
                    companion.getClass();
                    function3.invoke(null, AuthApiManager.Companion.a(httpException));
                    return;
                }
                AccessTokenResponse accessTokenResponse = (AccessTokenResponse) response.f79450b;
                if (accessTokenResponse == null) {
                    function3.invoke(null, new ClientError(ClientErrorCause.Unknown, "No body"));
                    return;
                }
                OAuthToken.INSTANCE.getClass();
                OAuthToken oAuthTokenA = OAuthToken.Companion.a(accessTokenResponse, null);
                authApiManager.f35814b.f35844a.b(oAuthTokenA);
                function3.invoke(oAuthTokenA, null);
            }
        });
    }

    public AuthApiClient(AuthApiManager authApiManager, TokenManagerProvider tokenManagerProvider) {
        authApiManager.getClass();
        tokenManagerProvider.getClass();
        this.f35810a = authApiManager;
    }

    public AuthApiClient() {
        this(null, null, 3, null);
    }
}
