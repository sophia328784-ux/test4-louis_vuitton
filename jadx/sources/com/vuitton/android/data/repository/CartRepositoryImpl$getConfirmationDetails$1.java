package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CartRepositoryImpl", f = "CartRepositoryImpl.kt", l = {147}, m = "getConfirmationDetails-IoAF18A", v = 2)
final class CartRepositoryImpl$getConfirmationDetails$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47485b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CartRepositoryImpl f47486c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CartRepositoryImpl$getConfirmationDetails$1(CartRepositoryImpl cartRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47486c = cartRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47485b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objN = this.f47486c.n(this);
        return objN == CoroutineSingletons.COROUTINE_SUSPENDED ? objN : new Result(objN);
    }
}
