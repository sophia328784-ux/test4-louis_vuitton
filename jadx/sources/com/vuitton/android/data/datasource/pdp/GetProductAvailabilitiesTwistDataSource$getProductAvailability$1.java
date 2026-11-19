package com.vuitton.android.data.datasource.pdp;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.pdp.GetProductAvailabilitiesTwistDataSource", f = "GetProductAvailabilitiesTwistDataSource.kt", l = {21}, m = "getProductAvailability-gIAlu-s", v = 2)
final class GetProductAvailabilitiesTwistDataSource$getProductAvailability$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44230b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetProductAvailabilitiesTwistDataSource f44231c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetProductAvailabilitiesTwistDataSource$getProductAvailability$1(GetProductAvailabilitiesTwistDataSource getProductAvailabilitiesTwistDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44231c = getProductAvailabilitiesTwistDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f44230b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f44231c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
