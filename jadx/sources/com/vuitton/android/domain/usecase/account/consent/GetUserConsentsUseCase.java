package com.vuitton.android.domain.usecase.account.consent;

import com.vuitton.android.domain.repository.AccountRepository;
import com.vuitton.foundation.model.domain.model.common.ResultStrategy;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;", "", "Lcom/vuitton/android/domain/repository/AccountRepository;", "accountRepository", "<init>", "(Lcom/vuitton/android/domain/repository/AccountRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetUserConsentsUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AccountRepository f49094a;

    @Inject
    public GetUserConsentsUseCase(AccountRepository accountRepository) {
        accountRepository.getClass();
        this.f49094a = accountRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        GetUserConsentsUseCase$run$1 getUserConsentsUseCase$run$1;
        if (continuationImpl instanceof GetUserConsentsUseCase$run$1) {
            getUserConsentsUseCase$run$1 = (GetUserConsentsUseCase$run$1) continuationImpl;
            int i2 = getUserConsentsUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getUserConsentsUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getUserConsentsUseCase$run$1 = new GetUserConsentsUseCase$run$1(this, continuationImpl);
            }
        } else {
            getUserConsentsUseCase$run$1 = new GetUserConsentsUseCase$run$1(this, continuationImpl);
        }
        Object objL = getUserConsentsUseCase$run$1.f49095b;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getUserConsentsUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(objL);
            getUserConsentsUseCase$run$1.d = 1;
            objL = this.f49094a.l();
            if (objL == obj) {
                return obj;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objL);
        }
        return ((ResultStrategy) objL).d();
    }
}
