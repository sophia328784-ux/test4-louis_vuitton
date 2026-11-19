package com.vuitton.android.data.datasource.pdp;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.pdp.GetProductDataSource", f = "GetProductDataSource.kt", l = {26, 28}, m = "getProduct-PGdywGU", v = 2)
final class GetProductDataSource$getProduct$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44235b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetProductDataSource f44236c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetProductDataSource$getProduct$1(GetProductDataSource getProductDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44236c = getProductDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f44235b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f44236c.a(null, false, null, null, null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
