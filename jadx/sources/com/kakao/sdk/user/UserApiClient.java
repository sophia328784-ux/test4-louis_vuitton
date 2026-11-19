package com.kakao.sdk.user;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Base64;
import com.kakao.sdk.auth.AuthApiClient;
import com.kakao.sdk.auth.AuthCodeClient;
import com.kakao.sdk.auth.IntentFactory;
import com.kakao.sdk.auth.TokenManagerProvider;
import com.kakao.sdk.auth.model.OAuthToken;
import com.kakao.sdk.auth.network.ApiFactoryKt;
import com.kakao.sdk.common.model.ApplicationInfo;
import com.kakao.sdk.common.model.ClientError;
import com.kakao.sdk.common.model.ClientErrorCause;
import com.kakao.sdk.common.util.IntentResolveClient;
import com.kakao.sdk.common.util.SdkLog;
import com.kakao.sdk.network.ApiFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Charsets;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\tB%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/kakao/sdk/user/UserApiClient;", "", "Lcom/kakao/sdk/user/UserApi;", "userApi", "userApiNoLog", "Lcom/kakao/sdk/auth/TokenManagerProvider;", "tokenManagerProvider", "<init>", "(Lcom/kakao/sdk/user/UserApi;Lcom/kakao/sdk/user/UserApi;Lcom/kakao/sdk/auth/TokenManagerProvider;)V", "Companion", "user_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class UserApiClient {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f35911c = new Companion(null);
    public static final Lazy d = LazyKt.b(UserApiClient$Companion$instance$2.f35914c);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UserApi f35912a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UserApi f35913b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/kakao/sdk/user/UserApiClient$Companion;", "", "user_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static UserApiClient a() {
            return (UserApiClient) UserApiClient.d.getF71699b();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public UserApiClient(UserApi userApi, UserApi userApi2, TokenManagerProvider tokenManagerProvider, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            Lazy lazy = ApiFactory.f35897a;
            Object objB = ((Retrofit) ApiFactoryKt.f35849a.getF71699b()).b(UserApi.class);
            objB.getClass();
            userApi = (UserApi) objB;
        }
        if ((i2 & 2) != 0) {
            Lazy lazy2 = ApiFactory.f35897a;
            Object objB2 = ((Retrofit) ApiFactoryKt.f35851c.getF71699b()).b(UserApi.class);
            objB2.getClass();
            userApi2 = (UserApi) objB2;
        }
        if ((i2 & 4) != 0) {
            TokenManagerProvider.f35842b.getClass();
            tokenManagerProvider = (TokenManagerProvider) TokenManagerProvider.f35843c.getF71699b();
        }
        this(userApi, userApi2, tokenManagerProvider);
    }

    public static void a(UserApiClient userApiClient, Context context, String str, final Function2 function2) throws NoSuchAlgorithmException {
        userApiClient.getClass();
        context.getClass();
        AuthCodeClient.f35821e.getClass();
        final String strA = AuthCodeClient.Companion.a();
        AuthCodeClient.a((AuthCodeClient) AuthCodeClient.f35822f.getF71699b(), context, null, str, null, strA, new Function2<String, Throwable, Unit>() { // from class: com.kakao.sdk.user.UserApiClient$loginWithKakaoAccount$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                String str2 = (String) obj;
                Throwable th = (Throwable) obj2;
                final Function2 function3 = function2;
                if (th != null) {
                    function3.invoke(null, th);
                } else {
                    AuthApiClient.f35808b.getClass();
                    AuthApiClient authApiClient = (AuthApiClient) AuthApiClient.f35809c.getF71699b();
                    str2.getClass();
                    authApiClient.a(str2, strA, new Function2<OAuthToken, Throwable, Unit>() { // from class: com.kakao.sdk.user.UserApiClient$loginWithKakaoAccount$1.1
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            function3.invoke((OAuthToken) obj3, (Throwable) obj4);
                            return Unit.f71739a;
                        }
                    });
                }
                return Unit.f71739a;
            }
        }, 3604);
    }

    public static void b(UserApiClient userApiClient, Context context, String str, final Function2 function2) throws NoSuchAlgorithmException {
        userApiClient.getClass();
        context.getClass();
        AuthCodeClient.Companion companion = AuthCodeClient.f35821e;
        companion.getClass();
        final String strA = AuthCodeClient.Companion.a();
        AuthCodeClient authCodeClient = (AuthCodeClient) AuthCodeClient.f35822f.getF71699b();
        Function2<String, Throwable, Unit> function3 = new Function2<String, Throwable, Unit>() { // from class: com.kakao.sdk.user.UserApiClient$loginWithKakaoTalk$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                String str2 = (String) obj;
                Throwable th = (Throwable) obj2;
                final Function2 function4 = function2;
                if (th != null) {
                    function4.invoke(null, th);
                } else {
                    AuthApiClient.f35808b.getClass();
                    AuthApiClient authApiClient = (AuthApiClient) AuthApiClient.f35809c.getF71699b();
                    str2.getClass();
                    authApiClient.a(str2, strA, new Function2<OAuthToken, Throwable, Unit>() { // from class: com.kakao.sdk.user.UserApiClient$loginWithKakaoTalk$1.1
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            function4.invoke((OAuthToken) obj3, (Throwable) obj4);
                            return Unit.f71739a;
                        }
                    });
                }
                return Unit.f71739a;
            }
        };
        ApplicationInfo applicationInfo = authCodeClient.f35824b;
        IntentResolveClient intentResolveClient = authCodeClient.f35823a;
        Intent intentAddCategory = new Intent("com.kakao.talk.intent.action.CAPRI_LOGGED_IN_ACTIVITY").addCategory("android.intent.category.DEFAULT");
        intentAddCategory.getClass();
        if (intentResolveClient.a(context, intentAddCategory) == null) {
            function3.invoke(null, new ClientError(ClientErrorCause.NotSupported, "KakaoTalk not installed"));
            return;
        }
        try {
            String mClientId = applicationInfo.getMClientId();
            String strA2 = applicationInfo.a();
            String mKaHeader = authCodeClient.f35825c.getMKaHeader();
            Bundle bundle = new Bundle();
            String value = authCodeClient.d.getValue();
            if (value != null) {
                bundle.putString("approval_type", value);
            }
            byte[] bytes = strA.getBytes(Charsets.UTF_8);
            bytes.getClass();
            companion.getClass();
            String strEncodeToString = Base64.encodeToString(MessageDigest.getInstance("SHA-256").digest(bytes), 11);
            strEncodeToString.getClass();
            bundle.putString("code_challenge", strEncodeToString);
            bundle.putString("code_challenge_method", "S256");
            if (str != null) {
                bundle.putString("nonce", str);
            }
            context.startActivity(IntentFactory.b(context, mClientId, strA2, mKaHeader, bundle, authCodeClient.b(function3)));
        } catch (Throwable th) {
            SdkLog.d.getClass();
            SdkLog.Companion.a(th);
            function3.invoke(null, th);
        }
    }

    public UserApiClient(UserApi userApi, UserApi userApi2, TokenManagerProvider tokenManagerProvider) {
        userApi.getClass();
        userApi2.getClass();
        tokenManagerProvider.getClass();
        this.f35912a = userApi;
        this.f35913b = userApi2;
    }

    public UserApiClient() {
        this(null, null, null, 7, null);
    }
}
