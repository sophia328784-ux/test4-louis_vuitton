package com.vuitton.android.data.datasource.cart.legacy;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.cart.legacy.CartLegacyDataSource", f = "CartLegacyDataSource.kt", l = {21}, m = "getCheckoutUrl-IoAF18A", v = 2)
final class CartLegacyDataSource$getCheckoutUrl$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43942b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CartLegacyDataSource f43943c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CartLegacyDataSource$getCheckoutUrl$1(CartLegacyDataSource cartLegacyDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43943c = cartLegacyDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f43942b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f43943c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
