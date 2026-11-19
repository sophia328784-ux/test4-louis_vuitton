package com.vuitton.android.domain.usecase.pdp.vto;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.pdp.vto.GetTryOnProductListUseCase", f = "GetTryOnProductListUseCase.kt", l = {13}, m = "run-0E7RQCE", v = 2)
final class GetTryOnProductListUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50201b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetTryOnProductListUseCase f50202c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetTryOnProductListUseCase$run$1(GetTryOnProductListUseCase getTryOnProductListUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50202c = getTryOnProductListUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50201b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f50202c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
