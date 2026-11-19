package com.vuitton.android.domain.repository;

import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import com.vuitton.foundation.model.domain.model.authentication.oauth.ClientCode;
import com.vuitton.foundation.model.domain.model.authentication.oauth.ForgetPasswordValidation;
import com.vuitton.foundation.model.domain.model.authentication.oauth.LoginRegistrationCredentials;
import com.vuitton.foundation.model.domain.model.authentication.oauth.NativeLogin;
import com.vuitton.foundation.model.domain.model.authentication.oauth.RegisterInitiateBody;
import com.vuitton.foundation.model.domain.model.authentication.oauth.RegisterValidateBody;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialLoginBody;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialRegisterBody;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/TwistAuthRepository;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface TwistAuthRepository {
    Object a(ContinuationImpl continuationImpl);

    Object b(AuthToken.Twist.User user, ContinuationImpl continuationImpl);

    Object c(ForgetPasswordValidation forgetPasswordValidation, ContinuationImpl continuationImpl);

    Object d(ContinuationImpl continuationImpl);

    Object e(NativeLogin nativeLogin, ContinuationImpl continuationImpl);

    Object f(LoginRegistrationCredentials loginRegistrationCredentials, ContinuationImpl continuationImpl);

    Object g(ClientCode clientCode, ContinuationImpl continuationImpl);

    Object h(LoginRegistrationCredentials loginRegistrationCredentials, ContinuationImpl continuationImpl);

    Object i(AppConfig appConfig, String str, ContinuationImpl continuationImpl);

    Object j(RegisterValidateBody registerValidateBody, ContinuationImpl continuationImpl);

    Object k(String str, String str2, SocialLoginBody socialLoginBody, ContinuationImpl continuationImpl);

    Object l(String str, ContinuationImpl continuationImpl);

    Object m(String str, String str2, SocialRegisterBody socialRegisterBody, ContinuationImpl continuationImpl);

    Object n(RegisterInitiateBody registerInitiateBody, ContinuationImpl continuationImpl);

    Object o(AuthToken.Twist twist, ContinuationImpl continuationImpl);
}
