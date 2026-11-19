package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CatalogRepositoryImpl", f = "CatalogRepositoryImpl.kt", l = {396}, m = "getReinsurance-IoAF18A", v = 2)
final class CatalogRepositoryImpl$getReinsurance$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47563b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CatalogRepositoryImpl f47564c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogRepositoryImpl$getReinsurance$1(CatalogRepositoryImpl catalogRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47564c = catalogRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47563b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objL = this.f47564c.l(this);
        return objL == CoroutineSingletons.COROUTINE_SUSPENDED ? objL : new Result(objL);
    }
}
