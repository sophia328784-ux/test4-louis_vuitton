package com.vuitton.android.data.datasource.cart.twist;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.cart.twist.CartTwistDataSource", f = "CartTwistDataSource.kt", l = {29}, m = "getCheckoutUrl-IoAF18A", v = 2)
final class CartTwistDataSource$getCheckoutUrl$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43948b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CartTwistDataSource f43949c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CartTwistDataSource$getCheckoutUrl$1(CartTwistDataSource cartTwistDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43949c = cartTwistDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f43948b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f43949c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
