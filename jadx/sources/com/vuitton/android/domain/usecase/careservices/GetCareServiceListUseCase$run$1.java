package com.vuitton.android.domain.usecase.careservices;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.careservices.GetCareServiceListUseCase", f = "GetCareServiceListUseCase.kt", l = {11}, m = "run-IoAF18A", v = 2)
final class GetCareServiceListUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetCareServiceListUseCase f49544c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetCareServiceListUseCase$run$1(GetCareServiceListUseCase getCareServiceListUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49544c = getCareServiceListUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49543b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49544c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
