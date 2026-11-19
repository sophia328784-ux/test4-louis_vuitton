package com.vuitton.android.data.datasource.cart.bff;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.cart.bff.CartDataSource", f = "CartDataSource.kt", l = {213}, m = "getCartContribution-IoAF18A", v = 2)
final class CartDataSource$getCartContribution$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43907b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CartDataSource f43908c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CartDataSource$getCartContribution$1(CartDataSource cartDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43908c = cartDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f43907b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objE = this.f43908c.e(this);
        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : new Result(objE);
    }
}
