package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.BackInStockRepositoryImpl", f = "BackInStockRepositoryImpl.kt", l = {35}, m = "subscribe-IiOnze8", v = 2)
final class BackInStockRepositoryImpl$subscribe$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47373b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BackInStockRepositoryImpl f47374c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BackInStockRepositoryImpl$subscribe$1(BackInStockRepositoryImpl backInStockRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47374c = backInStockRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47373b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f47374c.a(null, false, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
