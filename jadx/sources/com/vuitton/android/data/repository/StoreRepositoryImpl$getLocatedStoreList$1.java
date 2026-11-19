package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.StoreRepositoryImpl", f = "StoreRepositoryImpl.kt", l = {14}, m = "getLocatedStoreList-gIAlu-s", v = 2)
final class StoreRepositoryImpl$getLocatedStoreList$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f48046b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ StoreRepositoryImpl f48047c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoreRepositoryImpl$getLocatedStoreList$1(StoreRepositoryImpl storeRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f48047c = storeRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48046b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objB = this.f48047c.b(null, this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
