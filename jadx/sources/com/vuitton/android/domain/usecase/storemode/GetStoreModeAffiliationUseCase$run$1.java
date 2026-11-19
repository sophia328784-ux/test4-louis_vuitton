package com.vuitton.android.domain.usecase.storemode;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.storemode.GetStoreModeAffiliationUseCase", f = "GetStoreModeAffiliationUseCase.kt", l = {8}, m = "run-gIAlu-s", v = 2)
final class GetStoreModeAffiliationUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetStoreModeAffiliationUseCase f50394c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetStoreModeAffiliationUseCase$run$1(GetStoreModeAffiliationUseCase getStoreModeAffiliationUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50394c = getStoreModeAffiliationUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50393b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f50394c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
