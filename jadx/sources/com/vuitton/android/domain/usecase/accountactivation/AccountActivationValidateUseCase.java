package com.vuitton.android.domain.usecase.accountactivation;

import defpackage.md;
import java.io.Serializable;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationValidateUseCase;", "", "<init>", "()V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AccountActivationValidateUseCase {
    @Inject
    public AccountActivationValidateUseCase() {
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Serializable a(ContinuationImpl continuationImpl) {
        AccountActivationValidateUseCase$run$1 accountActivationValidateUseCase$run$1;
        if (continuationImpl instanceof AccountActivationValidateUseCase$run$1) {
            accountActivationValidateUseCase$run$1 = (AccountActivationValidateUseCase$run$1) continuationImpl;
            int i2 = accountActivationValidateUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountActivationValidateUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountActivationValidateUseCase$run$1 = new AccountActivationValidateUseCase$run$1(this, continuationImpl);
            }
        } else {
            accountActivationValidateUseCase$run$1 = new AccountActivationValidateUseCase$run$1(this, continuationImpl);
        }
        Object obj = accountActivationValidateUseCase$run$1.f49143b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountActivationValidateUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            accountActivationValidateUseCase$run$1.d = 1;
            if (DelayKt.b(2000L, accountActivationValidateUseCase$run$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        Result.Companion companion = Result.INSTANCE;
        return new Result.Failure(new NotImplementedError("Native AA - Not yet implemented"));
    }
}
