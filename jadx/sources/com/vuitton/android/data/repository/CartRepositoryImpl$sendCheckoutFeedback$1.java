package com.vuitton.android.data.repository;

import com.vuitton.android.data.datasource.cart.bff.CartDataSource;
import com.vuitton.foundation.model.domain.model.cart.CheckoutFeedback;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CartRepositoryImpl", f = "CartRepositoryImpl.kt", l = {150, 150}, m = "sendCheckoutFeedback-gIAlu-s", v = 2)
final class CartRepositoryImpl$sendCheckoutFeedback$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CartDataSource f47491b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CheckoutFeedback f47492c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CartRepositoryImpl f47493e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f47494f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CartRepositoryImpl$sendCheckoutFeedback$1(CartRepositoryImpl cartRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47493e = cartRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.d = obj;
        this.f47494f |= Integer.MIN_VALUE;
        Object objM = this.f47493e.m(null, this);
        return objM == CoroutineSingletons.COROUTINE_SUSPENDED ? objM : new Result(objM);
    }
}
