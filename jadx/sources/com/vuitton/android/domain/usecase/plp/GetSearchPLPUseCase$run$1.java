package com.vuitton.android.domain.usecase.plp;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.plp.GetSearchPLPUseCase", f = "GetSearchPLPUseCase.kt", l = {18}, m = "run-hUnOzRk", v = 2)
final class GetSearchPLPUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50242b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetSearchPLPUseCase f50243c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetSearchPLPUseCase$run$1(GetSearchPLPUseCase getSearchPLPUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50243c = getSearchPLPUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50242b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f50243c.a(null, null, null, 0, null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
