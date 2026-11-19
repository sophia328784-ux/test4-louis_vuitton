package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.StoreRepositoryImpl", f = "StoreRepositoryImpl.kt", l = {27}, m = "getStoreListByCodes-gIAlu-s", v = 2)
final class StoreRepositoryImpl$getStoreListByCodes$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f48048b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ StoreRepositoryImpl f48049c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoreRepositoryImpl$getStoreListByCodes$1(StoreRepositoryImpl storeRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f48049c = storeRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48048b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f48049c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
