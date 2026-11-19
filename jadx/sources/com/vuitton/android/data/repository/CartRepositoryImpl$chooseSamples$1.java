package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CartRepositoryImpl", f = "CartRepositoryImpl.kt", l = {126}, m = "chooseSamples-BWLJW6A", v = 2)
final class CartRepositoryImpl$chooseSamples$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47475b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CartRepositoryImpl f47476c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CartRepositoryImpl$chooseSamples$1(CartRepositoryImpl cartRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47476c = cartRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47475b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objC = this.f47476c.c(null, false, null, this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
