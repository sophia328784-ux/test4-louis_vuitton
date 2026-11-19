package com.vuitton.android.data.datasource.cart.bff;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.cart.bff.CartDataSource", f = "CartDataSource.kt", l = {179}, m = "addToCart--Qg0zLE", v = 2)
final class CartDataSource$addToCart$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CartDataSource f43893c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CartDataSource$addToCart$1(CartDataSource cartDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43893c = cartDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f43892b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objB = this.f43893c.b(null, null, this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
