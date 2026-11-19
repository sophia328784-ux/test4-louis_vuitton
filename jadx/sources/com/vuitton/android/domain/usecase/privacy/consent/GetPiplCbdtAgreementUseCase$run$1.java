package com.vuitton.android.domain.usecase.privacy.consent;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.privacy.consent.GetPiplCbdtAgreementUseCase", f = "GetPiplCbdtAgreementUseCase.kt", l = {7}, m = "run-IoAF18A", v = 2)
final class GetPiplCbdtAgreementUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50270b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetPiplCbdtAgreementUseCase f50271c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetPiplCbdtAgreementUseCase$run$1(GetPiplCbdtAgreementUseCase getPiplCbdtAgreementUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50271c = getPiplCbdtAgreementUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50270b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f50271c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
