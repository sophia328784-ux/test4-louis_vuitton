package com.vuitton.android.domain.usecase.cart;

import com.vuitton.android.domain.repository.CartRepository;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.cart.GetCheckoutUrlUseCase", f = "GetCheckoutUrlUseCase.kt", l = {15, 15}, m = "run-IoAF18A", v = 2)
final class GetCheckoutUrlUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CartRepository f49583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49584c;
    public final /* synthetic */ GetCheckoutUrlUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49585e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetCheckoutUrlUseCase$run$1(GetCheckoutUrlUseCase getCheckoutUrlUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = getCheckoutUrlUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49584c = obj;
        this.f49585e |= Integer.MIN_VALUE;
        Object objA = this.d.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
