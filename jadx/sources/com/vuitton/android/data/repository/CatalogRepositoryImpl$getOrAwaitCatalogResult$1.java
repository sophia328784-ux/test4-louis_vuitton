package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CatalogRepositoryImpl", f = "CatalogRepositoryImpl.kt", l = {120, 124}, m = "getOrAwaitCatalogResult-IoAF18A", v = 2)
final class CatalogRepositoryImpl$getOrAwaitCatalogResult$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47518b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CatalogRepositoryImpl f47519c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogRepositoryImpl$getOrAwaitCatalogResult$1(CatalogRepositoryImpl catalogRepositoryImpl, Continuation continuation) {
        super(continuation);
        this.f47519c = catalogRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47518b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objP = CatalogRepositoryImpl.p(this.f47519c, this);
        return objP == CoroutineSingletons.COROUTINE_SUSPENDED ? objP : new Result(objP);
    }
}
