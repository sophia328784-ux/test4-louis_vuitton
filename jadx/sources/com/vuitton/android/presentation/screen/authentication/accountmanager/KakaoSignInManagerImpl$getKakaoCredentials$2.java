package com.vuitton.android.presentation.screen.authentication.accountmanager;

import android.content.Context;
import android.content.Intent;
import com.kakao.sdk.auth.AuthCodeClient;
import com.kakao.sdk.auth.model.OAuthToken;
import com.kakao.sdk.common.model.ClientError;
import com.kakao.sdk.common.model.ClientErrorCause;
import com.kakao.sdk.common.util.IntentResolveClient;
import com.kakao.sdk.network.ApiCallback;
import com.kakao.sdk.user.UserApiClient;
import com.kakao.sdk.user.model.Account;
import com.kakao.sdk.user.model.Profile;
import com.kakao.sdk.user.model.User;
import com.kakao.sdk.user.model.UserResponse;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginUiModel;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import defpackage.md;
import java.security.NoSuchAlgorithmException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.accountmanager.KakaoSignInManagerImpl$getKakaoCredentials$2", f = "KakaoSignInManager.kt", l = {EACTags.CURRENCY_CODE, EACTags.CURRENCY_EXPONENT}, m = "invokeSuspend", v = 2)
final class KakaoSignInManagerImpl$getKakaoCredentials$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super KakaoCredentialResult>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f53424b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f53425c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f53426e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ KakaoSignInManagerImpl f53427f;
    public final /* synthetic */ Context g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ TrackingAuthOrigin f53428h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ TrackingAuthEntryPoint f53429i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KakaoSignInManagerImpl$getKakaoCredentials$2(KakaoSignInManagerImpl kakaoSignInManagerImpl, Context context, TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, Continuation continuation) {
        super(2, continuation);
        this.f53427f = kakaoSignInManagerImpl;
        this.g = context;
        this.f53428h = trackingAuthOrigin;
        this.f53429i = trackingAuthEntryPoint;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new KakaoSignInManagerImpl$getKakaoCredentials$2(this.f53427f, this.g, this.f53428h, this.f53429i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((KakaoSignInManagerImpl$getKakaoCredentials$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0127  */
    /* JADX WARN: Code duplicated, block: B:45:0x012a  */
    /* JADX WARN: Code duplicated, block: B:48:0x012f  */
    /* JADX WARN: Code duplicated, block: B:49:0x0131  */
    /* JADX WARN: Code duplicated, block: B:51:0x0134  */
    /* JADX WARN: Code duplicated, block: B:53:0x0138  */
    /* JADX WARN: Code duplicated, block: B:54:0x013a  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws NoSuchAlgorithmException {
        Object result;
        String str;
        String str2;
        Object result2;
        String str3;
        String str4;
        KakaoSignInManagerImpl.KakaoUserInfo kakaoUserInfo;
        String str5;
        String str6;
        String str7;
        String str8;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53426e;
        if (i2 == 0) {
            ResultKt.b(obj);
            String strA = NonceUtilsKt.a();
            final String strB = NonceUtilsKt.b(strA);
            this.f53424b = strA;
            this.f53425c = strB;
            this.f53426e = 1;
            final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(this), 1);
            cancellableContinuationImpl.initCancellability();
            final Function2<OAuthToken, Throwable, Unit> function2 = new Function2<OAuthToken, Throwable, Unit>() { // from class: com.vuitton.android.presentation.screen.authentication.accountmanager.KakaoSignInManagerImpl$loginWithKakao$2$callback$1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    OAuthToken oAuthToken = (OAuthToken) obj2;
                    Throwable th = (Throwable) obj3;
                    CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
                    if (th != null) {
                        if ((th instanceof ClientError) && ((ClientError) th).getReason() == ClientErrorCause.Cancelled) {
                            Result.Companion companion = Result.INSTANCE;
                            cancellableContinuationImpl2.resumeWith(null);
                        } else {
                            Result.Companion companion2 = Result.INSTANCE;
                            cancellableContinuationImpl2.resumeWith(new Result(new Result.Failure(th)));
                        }
                    } else if (oAuthToken != null) {
                        cancellableContinuationImpl2.resumeWith(new Result(oAuthToken));
                    } else {
                        Result.Companion companion3 = Result.INSTANCE;
                        cancellableContinuationImpl2.resumeWith(new Result(new Result.Failure(new IllegalStateException("No token or error"))));
                    }
                    return Unit.f71739a;
                }
            };
            UserApiClient.f35911c.getClass();
            UserApiClient.Companion.a().getClass();
            final Context context = this.g;
            context.getClass();
            AuthCodeClient.f35821e.getClass();
            AuthCodeClient authCodeClient = (AuthCodeClient) AuthCodeClient.f35822f.getF71699b();
            authCodeClient.getClass();
            IntentResolveClient intentResolveClient = authCodeClient.f35823a;
            Intent intentAddCategory = new Intent("com.kakao.talk.intent.action.CAPRI_LOGGED_IN_ACTIVITY").addCategory("android.intent.category.DEFAULT");
            intentAddCategory.getClass();
            if (intentResolveClient.a(context, intentAddCategory) != null) {
                UserApiClient.b(UserApiClient.Companion.a(), context, strB, new Function2<OAuthToken, Throwable, Unit>() { // from class: com.vuitton.android.presentation.screen.authentication.accountmanager.KakaoSignInManagerImpl$loginWithKakao$2$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) throws NoSuchAlgorithmException {
                        OAuthToken oAuthToken = (OAuthToken) obj2;
                        Throwable th = (Throwable) obj3;
                        CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
                        if (th != null) {
                            if ((th instanceof ClientError) && ((ClientError) th).getReason() == ClientErrorCause.Cancelled) {
                                Result.Companion companion = Result.INSTANCE;
                                cancellableContinuationImpl2.resumeWith(null);
                            } else {
                                UserApiClient.f35911c.getClass();
                                UserApiClient.a(UserApiClient.Companion.a(), context, strB, function2);
                            }
                        } else if (oAuthToken != null) {
                            cancellableContinuationImpl2.resumeWith(new Result(oAuthToken));
                        }
                        return Unit.f71739a;
                    }
                });
            } else {
                UserApiClient.a(UserApiClient.Companion.a(), context, strB, function2);
            }
            result = cancellableContinuationImpl.getResult();
            if (result != coroutineSingletons) {
                str = strA;
                str2 = strB;
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            str2 = this.f53425c;
            str = this.f53424b;
            ResultKt.b(obj);
            result = obj;
        } else {
            if (i2 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            String str9 = this.d;
            str2 = this.f53425c;
            String str10 = this.f53424b;
            ResultKt.b(obj);
            str4 = str9;
            str3 = str10;
            result2 = obj;
        }
        String str11 = str2;
        kakaoUserInfo = (KakaoSignInManagerImpl.KakaoUserInfo) result2;
        if (kakaoUserInfo != null) {
            str5 = kakaoUserInfo.f53421a;
        } else {
            str5 = null;
        }
        if (str5 == null) {
            str6 = "";
        } else {
            str6 = str5;
        }
        str7 = kakaoUserInfo != null ? kakaoUserInfo.f53422b : null;
        if (str7 == null) {
            str8 = "";
        } else {
            str8 = str7;
        }
        return new KakaoCredentialResult.Success(new SocialLoginUiModel(str6, str8, (String) null, (String) null, str3, str11, str4, (String) null, (String) null, this.f53428h, this.f53429i, SocialAuthMode.KAKAO, 396, (DefaultConstructorMarker) null));
        Result result3 = (Result) result;
        if (result3 == null) {
            return KakaoCredentialResult.Cancelled.f53418a;
        }
        Object obj2 = result3.f71708b;
        boolean z = obj2 instanceof Result.Failure;
        if (z) {
            Throwable thA = Result.a(obj2);
            return new KakaoCredentialResult.Failure(thA != null ? thA.getMessage() : null);
        }
        if (z) {
            obj2 = null;
        }
        OAuthToken oAuthToken = (OAuthToken) obj2;
        if (oAuthToken == null) {
            return new KakaoCredentialResult.Failure("No token received");
        }
        String idToken = oAuthToken.getIdToken();
        if (idToken == null) {
            return new KakaoCredentialResult.Failure("Missing ID token. Ensure OIDC is enabled on Kakao Console.");
        }
        this.f53424b = str;
        this.f53425c = str2;
        this.d = idToken;
        this.f53426e = 2;
        final CancellableContinuationImpl cancellableContinuationImpl2 = new CancellableContinuationImpl(IntrinsicsKt.b(this), 1);
        cancellableContinuationImpl2.initCancellability();
        UserApiClient.f35911c.getClass();
        UserApiClient userApiClientA = UserApiClient.Companion.a();
        final Function2<User, Throwable, Unit> function3 = new Function2<User, Throwable, Unit>() { // from class: com.vuitton.android.presentation.screen.authentication.accountmanager.KakaoSignInManagerImpl$fetchUserInfo$2$1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj3, Object obj4) {
                Profile profile;
                User user = (User) obj3;
                Throwable th = (Throwable) obj4;
                CancellableContinuationImpl cancellableContinuationImpl3 = cancellableContinuationImpl2;
                String nickname = null;
                if (th != null || user == null) {
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuationImpl3.resumeWith(null);
                } else {
                    Account kakaoAccount = user.getKakaoAccount();
                    String email = kakaoAccount != null ? kakaoAccount.getEmail() : null;
                    Account kakaoAccount2 = user.getKakaoAccount();
                    if (kakaoAccount2 != null && (profile = kakaoAccount2.getProfile()) != null) {
                        nickname = profile.getNickname();
                    }
                    KakaoSignInManagerImpl.KakaoUserInfo kakaoUserInfo2 = new KakaoSignInManagerImpl.KakaoUserInfo(email, nickname);
                    Result.Companion companion2 = Result.INSTANCE;
                    cancellableContinuationImpl3.resumeWith(kakaoUserInfo2);
                }
                return Unit.f71739a;
            }
        };
        userApiClientA.getClass();
        userApiClientA.f35912a.me(true, null).p(new ApiCallback<UserResponse>() { // from class: com.kakao.sdk.user.UserApiClient$me$2
            {
                super(false, 1, null);
            }

            @Override // com.kakao.sdk.network.ApiCallback
            public final void a(Object obj3, Throwable th) {
                UserResponse userResponse = (UserResponse) obj3;
                Function2 function4 = function3;
                if (userResponse != null) {
                    function4.invoke(userResponse.a(), null);
                } else {
                    function4.invoke(null, th);
                }
            }
        });
        result2 = cancellableContinuationImpl2.getResult();
        if (result2 != coroutineSingletons) {
            str3 = str;
            str4 = idToken;
            String str12 = str2;
            kakaoUserInfo = (KakaoSignInManagerImpl.KakaoUserInfo) result2;
            if (kakaoUserInfo != null) {
                str5 = kakaoUserInfo.f53421a;
            } else {
                str5 = null;
            }
            if (str5 == null) {
                str6 = "";
            } else {
                str6 = str5;
            }
            if (kakaoUserInfo != null) {
            }
            if (str7 == null) {
                str8 = "";
            } else {
                str8 = str7;
            }
            return new KakaoCredentialResult.Success(new SocialLoginUiModel(str6, str8, (String) null, (String) null, str3, str12, str4, (String) null, (String) null, this.f53428h, this.f53429i, SocialAuthMode.KAKAO, 396, (DefaultConstructorMarker) null));
        }
        return coroutineSingletons;
    }
}
