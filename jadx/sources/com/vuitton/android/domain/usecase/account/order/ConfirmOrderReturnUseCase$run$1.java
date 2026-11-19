package com.vuitton.android.domain.usecase.account.order;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.account.order.ConfirmOrderReturnUseCase", f = "ConfirmOrderReturnUseCase.kt", l = {10}, m = "run-gIAlu-s", v = 2)
final class ConfirmOrderReturnUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49108b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConfirmOrderReturnUseCase f49109c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfirmOrderReturnUseCase$run$1(ConfirmOrderReturnUseCase confirmOrderReturnUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49109c = confirmOrderReturnUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49108b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49109c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
