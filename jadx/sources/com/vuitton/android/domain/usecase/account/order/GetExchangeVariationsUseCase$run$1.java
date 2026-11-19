package com.vuitton.android.domain.usecase.account.order;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.account.order.GetExchangeVariationsUseCase", f = "GetExchangeVariationsUseCase.kt", l = {13}, m = "run-icxJlF4", v = 2)
final class GetExchangeVariationsUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetExchangeVariationsUseCase f49112c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetExchangeVariationsUseCase$run$1(GetExchangeVariationsUseCase getExchangeVariationsUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49112c = getExchangeVariationsUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49111b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49112c.a(null, 0.0d, 0.0d, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
