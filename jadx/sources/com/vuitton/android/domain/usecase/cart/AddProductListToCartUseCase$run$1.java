package com.vuitton.android.domain.usecase.cart;

import com.vuitton.android.domain.repository.CartRepository;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.cart.AddProductListToCartUseCase", f = "AddProductListToCartUseCase.kt", l = {16, 14}, m = "run-gIAlu-s", v = 2)
final class AddProductListToCartUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CartRepository f49562b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f49563c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AddProductListToCartUseCase f49564e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f49565f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddProductListToCartUseCase$run$1(AddProductListToCartUseCase addProductListToCartUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49564e = addProductListToCartUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f49565f |= Integer.MIN_VALUE;
        Object objA = this.f49564e.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
