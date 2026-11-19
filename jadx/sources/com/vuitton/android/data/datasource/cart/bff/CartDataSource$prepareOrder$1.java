package com.vuitton.android.data.datasource.cart.bff;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.cart.bff.CartDataSource", f = "CartDataSource.kt", l = {165}, m = "prepareOrder-IoAF18A", v = 2)
final class CartDataSource$prepareOrder$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CartDataSource f43916c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CartDataSource$prepareOrder$1(CartDataSource cartDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43916c = cartDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f43915b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objH = this.f43916c.h(this);
        return objH == CoroutineSingletons.COROUTINE_SUSPENDED ? objH : new Result(objH);
    }
}
