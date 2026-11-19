package com.vuitton.android.domain.usecase.cart;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.cart.AddProductToCartUseCase", f = "AddProductListToCartUseCase.kt", l = {24}, m = "run-IiOnze8", v = 2)
final class AddProductToCartUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49567b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddProductToCartUseCase f49568c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddProductToCartUseCase$run$1(AddProductToCartUseCase addProductToCartUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49568c = addProductToCartUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49567b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49568c.a(null, null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
