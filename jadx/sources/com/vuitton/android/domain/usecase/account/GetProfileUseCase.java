package com.vuitton.android.domain.usecase.account;

import com.vuitton.android.domain.repository.AccountRepository;
import com.vuitton.android.domain.repository.LoginStateRepository;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import com.vuitton.foundation.model.domain.model.common.ResultStrategyLazy;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/repository/AccountRepository;", "accountRepository", "Lcom/vuitton/android/domain/repository/LoginStateRepository;", "loginStateRepository", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/repository/AccountRepository;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetProfileUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireUserInAppDispatchUseCase f49040a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AccountRepository f49041b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LoginStateRepository f49042c;
    public final IsFeatureAvailableUseCase d;

    @Inject
    public GetProfileUseCase(RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, AccountRepository accountRepository, LoginStateRepository loginStateRepository, IsFeatureAvailableUseCase isFeatureAvailableUseCase) {
        requireUserInAppDispatchUseCase.getClass();
        accountRepository.getClass();
        loginStateRepository.getClass();
        isFeatureAvailableUseCase.getClass();
        this.f49040a = requireUserInAppDispatchUseCase;
        this.f49041b = accountRepository;
        this.f49042c = loginStateRepository;
        this.d = isFeatureAvailableUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Continuation continuation) {
        GetProfileUseCase$run$1 getProfileUseCase$run$1;
        AccountRepository accountRepository;
        if (continuation instanceof GetProfileUseCase$run$1) {
            getProfileUseCase$run$1 = (GetProfileUseCase$run$1) continuation;
            int i2 = getProfileUseCase$run$1.f49045e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getProfileUseCase$run$1.f49045e = i2 - Integer.MIN_VALUE;
            } else {
                getProfileUseCase$run$1 = new GetProfileUseCase$run$1(this, continuation);
            }
        } else {
            getProfileUseCase$run$1 = new GetProfileUseCase$run$1(this, continuation);
        }
        Object objC = getProfileUseCase$run$1.f49044c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getProfileUseCase$run$1.f49045e;
        if (i3 == 0) {
            ResultKt.b(objC);
            this.f49040a.f49912a.b();
            Feature[] featureArr = {Feature.TWIST};
            accountRepository = this.f49041b;
            getProfileUseCase$run$1.f49043b = accountRepository;
            getProfileUseCase$run$1.f49045e = 1;
            objC = this.d.c(featureArr, false, getProfileUseCase$run$1);
            if (objC != coroutineSingletons) {
            }
        }
        if (i3 != 1) {
            if (i3 == 2) {
                ResultKt.b(objC);
                return objC;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        accountRepository = getProfileUseCase$run$1.f49043b;
        ResultKt.b(objC);
        boolean zBooleanValue = ((Boolean) objC).booleanValue();
        boolean z = this.f49042c.a().getValue() == LoginState.LOGGED_IN;
        getProfileUseCase$run$1.f49043b = null;
        getProfileUseCase$run$1.f49045e = 2;
        ResultStrategyLazy resultStrategyLazyN = accountRepository.n(zBooleanValue, z);
        return resultStrategyLazyN == coroutineSingletons ? coroutineSingletons : resultStrategyLazyN;
    }
}
