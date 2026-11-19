package com.vuitton.android.domain.usecase.authentication;

import com.vuitton.android.domain.repository.SalesforceAuthRepository;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/authentication/AuthenticateAtgCodeExchangeUseCase;", "", "Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;", "salesforceAuthRepository", "Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase;", "finaliseSalesforceAuthenticationUseCase", "<init>", "(Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AuthenticateAtgCodeExchangeUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SalesforceAuthRepository f49332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FinaliseSalesforceAuthenticationUseCase f49333b;

    @Inject
    public AuthenticateAtgCodeExchangeUseCase(SalesforceAuthRepository salesforceAuthRepository, FinaliseSalesforceAuthenticationUseCase finaliseSalesforceAuthenticationUseCase) {
        salesforceAuthRepository.getClass();
        finaliseSalesforceAuthenticationUseCase.getClass();
        this.f49332a = salesforceAuthRepository;
        this.f49333b = finaliseSalesforceAuthenticationUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        AuthenticateAtgCodeExchangeUseCase$run$1 authenticateAtgCodeExchangeUseCase$run$1;
        Object objB;
        if (continuationImpl instanceof AuthenticateAtgCodeExchangeUseCase$run$1) {
            authenticateAtgCodeExchangeUseCase$run$1 = (AuthenticateAtgCodeExchangeUseCase$run$1) continuationImpl;
            int i2 = authenticateAtgCodeExchangeUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                authenticateAtgCodeExchangeUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                authenticateAtgCodeExchangeUseCase$run$1 = new AuthenticateAtgCodeExchangeUseCase$run$1(this, continuationImpl);
            }
        } else {
            authenticateAtgCodeExchangeUseCase$run$1 = new AuthenticateAtgCodeExchangeUseCase$run$1(this, continuationImpl);
        }
        Object obj = authenticateAtgCodeExchangeUseCase$run$1.f49334b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = authenticateAtgCodeExchangeUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            authenticateAtgCodeExchangeUseCase$run$1.d = 1;
            objB = this.f49332a.b(str, authenticateAtgCodeExchangeUseCase$run$1);
            if (objB != coroutineSingletons) {
            }
        }
        if (i3 != 1) {
            if (i3 == 2) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        objB = ((Result) obj).f71708b;
        Throwable thA = Result.a(objB);
        if (thA != null) {
            return new Result.Failure(thA);
        }
        ResultKt.b(objB);
        authenticateAtgCodeExchangeUseCase$run$1.d = 2;
        Object objA = this.f49333b.a((AuthToken.Atg) objB, authenticateAtgCodeExchangeUseCase$run$1);
        return objA == coroutineSingletons ? coroutineSingletons : objA;
    }
}
