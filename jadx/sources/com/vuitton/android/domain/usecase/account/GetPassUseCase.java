package com.vuitton.android.domain.usecase.account;

import com.vuitton.android.domain.repository.AccountRepository;
import com.vuitton.android.domain.repository.PassRepository;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/account/GetPassUseCase;", "", "Lcom/vuitton/android/domain/repository/PassRepository;", "passRepository", "Lcom/vuitton/android/domain/repository/AccountRepository;", "accountRepository", "<init>", "(Lcom/vuitton/android/domain/repository/PassRepository;Lcom/vuitton/android/domain/repository/AccountRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetPassUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PassRepository f49036a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AccountRepository f49037b;

    @Inject
    public GetPassUseCase(PassRepository passRepository, AccountRepository accountRepository) {
        passRepository.getClass();
        accountRepository.getClass();
        this.f49036a = passRepository;
        this.f49037b = accountRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        GetPassUseCase$run$1 getPassUseCase$run$1;
        Object objD;
        if (continuationImpl instanceof GetPassUseCase$run$1) {
            getPassUseCase$run$1 = (GetPassUseCase$run$1) continuationImpl;
            int i2 = getPassUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getPassUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getPassUseCase$run$1 = new GetPassUseCase$run$1(this, continuationImpl);
            }
        } else {
            getPassUseCase$run$1 = new GetPassUseCase$run$1(this, continuationImpl);
        }
        Object obj = getPassUseCase$run$1.f49038b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getPassUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            getPassUseCase$run$1.d = 1;
            objD = this.f49037b.d(getPassUseCase$run$1);
            if (objD != coroutineSingletons) {
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
        objD = ((Result) obj).f71708b;
        Throwable thA = Result.a(objD);
        if (thA != null) {
            return new Result.Failure(thA);
        }
        ResultKt.b(objD);
        String str = ((Profile.AccountId) objD).f68173a;
        getPassUseCase$run$1.d = 2;
        Object objC = this.f49036a.c(str, getPassUseCase$run$1);
        return objC == coroutineSingletons ? coroutineSingletons : objC;
    }
}
