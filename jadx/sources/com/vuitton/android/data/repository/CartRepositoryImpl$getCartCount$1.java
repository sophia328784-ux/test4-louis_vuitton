package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CartRepositoryImpl", f = "CartRepositoryImpl.kt", l = {49}, m = "getCartCount-IoAF18A", v = 2)
final class CartRepositoryImpl$getCartCount$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47481b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CartRepositoryImpl f47482c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CartRepositoryImpl$getCartCount$1(CartRepositoryImpl cartRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47482c = cartRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47481b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objJ = this.f47482c.j(this);
        return objJ == CoroutineSingletons.COROUTINE_SUSPENDED ? objJ : new Result(objJ);
    }
}
