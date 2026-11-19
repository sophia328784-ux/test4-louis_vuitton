package com.vuitton.android.domain.usecase.accountactivation;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.accountactivation.AccountActivationValidateUseCase", f = "AccountActivationValidateUseCase.kt", l = {12}, m = "run-0E7RQCE", v = 2)
final class AccountActivationValidateUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccountActivationValidateUseCase f49144c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountActivationValidateUseCase$run$1(AccountActivationValidateUseCase accountActivationValidateUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49144c = accountActivationValidateUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49143b = obj;
        this.d |= Integer.MIN_VALUE;
        Serializable serializableA = this.f49144c.a(this);
        return serializableA == CoroutineSingletons.COROUTINE_SUSPENDED ? serializableA : new Result(serializableA);
    }
}
