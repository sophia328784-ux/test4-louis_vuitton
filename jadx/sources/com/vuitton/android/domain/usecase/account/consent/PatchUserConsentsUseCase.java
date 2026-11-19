package com.vuitton.android.domain.usecase.account.consent;

import com.vuitton.android.domain.repository.AccountRepository;
import com.vuitton.android.domain.repository.LoginStateRepository;
import com.vuitton.foundation.model.domain.model.account.consent.UserConsents;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/account/consent/PatchUserConsentsUseCase;", "", "Lcom/vuitton/android/domain/repository/AccountRepository;", "accountRepository", "Lcom/vuitton/android/domain/repository/LoginStateRepository;", "loginStateRepository", "<init>", "(Lcom/vuitton/android/domain/repository/AccountRepository;Lcom/vuitton/android/domain/repository/LoginStateRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PatchUserConsentsUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AccountRepository f49097a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LoginStateRepository f49098b;

    @Inject
    public PatchUserConsentsUseCase(AccountRepository accountRepository, LoginStateRepository loginStateRepository) {
        accountRepository.getClass();
        loginStateRepository.getClass();
        this.f49097a = accountRepository;
        this.f49098b = loginStateRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(UserConsents userConsents, boolean z, ContinuationImpl continuationImpl) {
        PatchUserConsentsUseCase$run$1 patchUserConsentsUseCase$run$1;
        if (continuationImpl instanceof PatchUserConsentsUseCase$run$1) {
            patchUserConsentsUseCase$run$1 = (PatchUserConsentsUseCase$run$1) continuationImpl;
            int i2 = patchUserConsentsUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                patchUserConsentsUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                patchUserConsentsUseCase$run$1 = new PatchUserConsentsUseCase$run$1(this, continuationImpl);
            }
        } else {
            patchUserConsentsUseCase$run$1 = new PatchUserConsentsUseCase$run$1(this, continuationImpl);
        }
        Object obj = patchUserConsentsUseCase$run$1.f49099b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = patchUserConsentsUseCase$run$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        if (this.f49098b.a().getValue() != LoginState.LOGGED_IN) {
            Result.Companion companion = Result.INSTANCE;
            return new Result.Failure(new IllegalStateException("Cannot patch consent if user is not logged in"));
        }
        patchUserConsentsUseCase$run$1.d = 1;
        Object objK = this.f49097a.k(userConsents, z, patchUserConsentsUseCase$run$1);
        return objK == coroutineSingletons ? coroutineSingletons : objK;
    }
}
