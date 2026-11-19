package com.vuitton.android.domain.usecase.pdp.backinstock;

import com.vuitton.android.domain.repository.BackInStockRepository;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.pdp.backinstock.SubscribeBackInStockUseCase", f = "SubscribeBackInStockUseCase.kt", l = {15, 13}, m = "run-TPjgr7Q", v = 2)
final class SubscribeBackInStockUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public BackInStockRepository f50182b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f50183c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SubscribeBackInStockUseCase f50184e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f50185f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubscribeBackInStockUseCase$run$1(SubscribeBackInStockUseCase subscribeBackInStockUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50184e = subscribeBackInStockUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f50185f |= Integer.MIN_VALUE;
        Object objA = this.f50184e.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
