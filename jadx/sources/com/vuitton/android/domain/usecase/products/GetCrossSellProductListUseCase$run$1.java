package com.vuitton.android.domain.usecase.products;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.products.GetCrossSellProductListUseCase", f = "GetCrossSellProductListUseCase.kt", l = {9}, m = "run-TPjgr7Q", v = 2)
final class GetCrossSellProductListUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50296b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetCrossSellProductListUseCase f50297c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetCrossSellProductListUseCase$run$1(GetCrossSellProductListUseCase getCrossSellProductListUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50297c = getCrossSellProductListUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50296b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f50297c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
