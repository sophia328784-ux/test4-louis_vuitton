package com.vuitton.android.domain.repository;

import com.vuitton.android.data.datasource.profile.ProfileLocalDataSource$listenProfile$$inlined$map$1;
import com.vuitton.foundation.model.domain.model.account.UpdateProfileInfoParam;
import com.vuitton.foundation.model.domain.model.account.consent.UserConsents;
import com.vuitton.foundation.model.domain.model.certificate.CertificateChinaConsentBody;
import com.vuitton.foundation.model.domain.model.common.ResultStrategyLazy;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.profile.ProfilePwdUpdate;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/AccountRepository;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AccountRepository {
    Object a(ProfilePwdUpdate profilePwdUpdate, ContinuationImpl continuationImpl);

    Object b(ContinuationImpl continuationImpl);

    ProfileLocalDataSource$listenProfile$$inlined$map$1 c();

    Object d(ContinuationImpl continuationImpl);

    Object e(ContinuationImpl continuationImpl);

    Object f(String str, ContinuationImpl continuationImpl);

    Object g(CertificateChinaConsentBody certificateChinaConsentBody, ContinuationImpl continuationImpl);

    Object h(InAppDispatch inAppDispatch, AppConfig appConfig, SuspendLambda suspendLambda);

    Object i(UpdateProfileInfoParam updateProfileInfoParam, ContinuationImpl continuationImpl);

    Object j(ContinuationImpl continuationImpl);

    Object k(UserConsents userConsents, boolean z, ContinuationImpl continuationImpl);

    ResultStrategyLazy l();

    Object m(boolean z, ContinuationImpl continuationImpl);

    ResultStrategyLazy n(boolean z, boolean z2);

    Object o(ContinuationImpl continuationImpl);
}
