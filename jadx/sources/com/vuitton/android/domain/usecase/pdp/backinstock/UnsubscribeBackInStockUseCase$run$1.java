package com.vuitton.android.domain.usecase.pdp.backinstock;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.pdp.backinstock.UnsubscribeBackInStockUseCase", f = "UnsubscribeBackInStockUseCase.kt", l = {7}, m = "run-IoAF18A", v = 2)
final class UnsubscribeBackInStockUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ UnsubscribeBackInStockUseCase f50188c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnsubscribeBackInStockUseCase$run$1(UnsubscribeBackInStockUseCase unsubscribeBackInStockUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50188c = unsubscribeBackInStockUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50187b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f50188c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
