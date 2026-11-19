package com.kakao.sdk.auth.network;

import android.content.Context;
import com.google.gson.Gson;
import com.kakao.sdk.auth.AuthApiClient;
import com.kakao.sdk.auth.AuthApiManager;
import com.kakao.sdk.auth.AuthCodeClient;
import com.kakao.sdk.auth.model.AgtResponse;
import com.kakao.sdk.auth.model.OAuthToken;
import com.kakao.sdk.common.KakaoSdk;
import com.kakao.sdk.common.model.ApiError;
import com.kakao.sdk.common.model.ApiErrorCause;
import com.kakao.sdk.common.model.ApiErrorResponse;
import com.kakao.sdk.common.model.ApplicationContextInfo;
import com.kakao.sdk.common.model.ClientError;
import com.kakao.sdk.common.model.ClientErrorCause;
import com.kakao.sdk.common.util.KakaoJson;
import com.kakao.sdk.network.ExceptionWrapper;
import java.lang.reflect.Type;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$ObjectRef;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.ResponseBody$Companion$asResponseBody$1;
import okhttp3.internal.http.RealInterceptorChain;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.HttpException;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;", "Lokhttp3/Interceptor;", "Lcom/kakao/sdk/common/model/ApplicationContextInfo;", "contextInfo", "<init>", "(Lcom/kakao/sdk/common/model/ApplicationContextInfo;)V", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class RequiredScopesInterceptor implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ApplicationContextInfo f35858a;

    public /* synthetic */ RequiredScopesInterceptor(ApplicationContextInfo applicationContextInfo, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? KakaoSdk.a() : applicationContextInfo);
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws InterruptedException, ExceptionWrapper {
        ResponseBody$Companion$asResponseBody$1 responseBody$Companion$asResponseBody$1A;
        ApiErrorCause apiErrorCause;
        Unit unit;
        String accessToken;
        String accessToken2;
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Response responseB = realInterceptorChain.b(realInterceptorChain.f77173e);
        ResponseBody responseBody = responseB.f76988h;
        String strString = responseBody != null ? responseBody.string() : null;
        Response.Builder builder = new Response.Builder(responseB);
        if (strString != null) {
            ResponseBody.Companion companion = ResponseBody.INSTANCE;
            MediaType f77004f = responseBody.getF77004f();
            companion.getClass();
            responseBody$Companion$asResponseBody$1A = ResponseBody.Companion.a(strString, f77004f);
        } else {
            responseBody$Companion$asResponseBody$1A = null;
        }
        responseBody$Companion$asResponseBody$1A.getClass();
        builder.g = responseBody$Companion$asResponseBody$1A;
        Response responseA = builder.a();
        if (strString != null) {
            ResponseBody.Companion companion2 = ResponseBody.INSTANCE;
            MediaType f77004f2 = responseBody.getF77004f();
            companion2.getClass();
            ResponseBody.Companion.a(strString, f77004f2);
        }
        if (!responseA.r) {
            ApiErrorResponse apiErrorResponse = strString != null ? (ApiErrorResponse) KakaoJson.f35885a.fromJson(strString, (Type) ApiErrorResponse.class) : null;
            if (apiErrorResponse != null) {
                Gson gson = KakaoJson.f35885a;
                apiErrorCause = (ApiErrorCause) KakaoJson.a(String.valueOf(apiErrorResponse.getCode()), ApiErrorCause.class);
            } else {
                apiErrorCause = null;
            }
            if (apiErrorCause != null) {
                ApiError apiError = new ApiError(responseA.f76986e, apiErrorCause, apiErrorResponse);
                final List requiredScopes = apiError.getResponse().getRequiredScopes();
                if (apiError.getReason() == ApiErrorCause.InsufficientScope) {
                    List list = requiredScopes;
                    if (list == null || list.isEmpty()) {
                        ApiErrorCause apiErrorCause2 = ApiErrorCause.Unknown;
                        throw new ExceptionWrapper(new ApiError(apiError.getStatusCode(), apiErrorCause2, new ApiErrorResponse(apiErrorCause2.getErrorCode(), "requiredScopes not exist", null, apiError.getResponse().getRequiredScopes(), apiError.getResponse().getAllowedScopes(), 4, null)));
                    }
                    final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                    final Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
                    final CountDownLatch countDownLatch = new CountDownLatch(1);
                    AuthApiClient.f35808b.getClass();
                    AuthApiClient authApiClient = (AuthApiClient) AuthApiClient.f35809c.getF71699b();
                    final Function2<String, Throwable, Unit> function2 = new Function2<String, Throwable, Unit>() { // from class: com.kakao.sdk.auth.network.RequiredScopesInterceptor$intercept$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            String str = (String) obj;
                            Throwable th = (Throwable) obj2;
                            final CountDownLatch countDownLatch2 = countDownLatch;
                            final Ref$ObjectRef ref$ObjectRef3 = ref$ObjectRef2;
                            if (th != null) {
                                ref$ObjectRef3.f71921b = th;
                                countDownLatch2.countDown();
                            } else {
                                AuthCodeClient.f35821e.getClass();
                                final String strA = AuthCodeClient.Companion.a();
                                AuthCodeClient authCodeClient = (AuthCodeClient) AuthCodeClient.f35822f.getF71699b();
                                Context mApplicationContext = this.f35858a.getMApplicationContext();
                                final Ref$ObjectRef ref$ObjectRef4 = ref$ObjectRef;
                                AuthCodeClient.a(authCodeClient, mApplicationContext, requiredScopes, null, str, strA, new Function2<String, Throwable, Unit>() { // from class: com.kakao.sdk.auth.network.RequiredScopesInterceptor$intercept$1$1.1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(2);
                                    }

                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj3, Object obj4) {
                                        String str2 = (String) obj3;
                                        Throwable th2 = (Throwable) obj4;
                                        final CountDownLatch countDownLatch3 = countDownLatch2;
                                        final Ref$ObjectRef ref$ObjectRef5 = ref$ObjectRef3;
                                        if (th2 != null) {
                                            ref$ObjectRef5.f71921b = th2;
                                            countDownLatch3.countDown();
                                        } else {
                                            AuthApiClient.f35808b.getClass();
                                            AuthApiClient authApiClient2 = (AuthApiClient) AuthApiClient.f35809c.getF71699b();
                                            str2.getClass();
                                            final Ref$ObjectRef ref$ObjectRef6 = ref$ObjectRef4;
                                            authApiClient2.a(str2, strA, new Function2<OAuthToken, Throwable, Unit>() { // from class: com.kakao.sdk.auth.network.RequiredScopesInterceptor.intercept.1.1.1.1
                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                {
                                                    super(2);
                                                }

                                                @Override // kotlin.jvm.functions.Function2
                                                public final Object invoke(Object obj5, Object obj6) {
                                                    ref$ObjectRef6.f71921b = (OAuthToken) obj5;
                                                    ref$ObjectRef5.f71921b = (Throwable) obj6;
                                                    countDownLatch3.countDown();
                                                    return Unit.f71739a;
                                                }
                                            });
                                        }
                                        return Unit.f71739a;
                                    }
                                }, 3818);
                            }
                            return Unit.f71739a;
                        }
                    };
                    authApiClient.getClass();
                    AuthApiManager authApiManager = authApiClient.f35810a;
                    authApiManager.getClass();
                    OAuthToken f35840c = authApiManager.f35814b.f35844a.getF35840c();
                    if (f35840c == null || (accessToken2 = f35840c.getAccessToken()) == null) {
                        unit = null;
                    } else {
                        authApiManager.f35813a.agt(authApiManager.f35815c.getMClientId(), accessToken2).p(new Callback<AgtResponse>() { // from class: com.kakao.sdk.auth.AuthApiManager$agt$1$1
                            @Override // retrofit2.Callback
                            public final void onFailure(Call call, Throwable th) {
                                function2.invoke(null, th);
                            }

                            @Override // retrofit2.Callback
                            public final void onResponse(Call call, retrofit2.Response response) {
                                AgtResponse agtResponse = (AgtResponse) response.f79450b;
                                Function2 function3 = function2;
                                if (agtResponse != null) {
                                    function3.invoke(agtResponse.getAgt(), null);
                                    return;
                                }
                                AuthApiManager.Companion companion3 = AuthApiManager.f35812f;
                                HttpException httpException = new HttpException(response);
                                companion3.getClass();
                                function3.invoke(null, AuthApiManager.Companion.a(httpException));
                            }
                        });
                        unit = Unit.f71739a;
                    }
                    if (unit == null) {
                        function2.invoke(null, new ClientError(ClientErrorCause.TokenNotFound, "Access token not found. You must login first."));
                    }
                    countDownLatch.await();
                    OAuthToken oAuthToken = (OAuthToken) ref$ObjectRef.f71921b;
                    if (oAuthToken != null && (accessToken = oAuthToken.getAccessToken()) != null) {
                        return realInterceptorChain.b(AccessTokenInterceptorKt.a(responseA.f76984b, accessToken));
                    }
                    Object obj = ref$ObjectRef2.f71921b;
                    obj.getClass();
                    throw new ExceptionWrapper((Throwable) obj);
                }
            }
        }
        return responseA;
    }

    public RequiredScopesInterceptor(ApplicationContextInfo applicationContextInfo) {
        applicationContextInfo.getClass();
        this.f35858a = applicationContextInfo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RequiredScopesInterceptor() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
