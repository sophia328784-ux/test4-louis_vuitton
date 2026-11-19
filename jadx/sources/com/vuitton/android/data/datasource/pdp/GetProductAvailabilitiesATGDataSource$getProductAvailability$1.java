package com.vuitton.android.data.datasource.pdp;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.pdp.GetProductAvailabilitiesATGDataSource", f = "GetProductAvailabilitiesATGDataSource.kt", l = {27}, m = "getProductAvailability-D9mHw4E", v = 2)
final class GetProductAvailabilitiesATGDataSource$getProductAvailability$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetProductAvailabilitiesATGDataSource f44226c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetProductAvailabilitiesATGDataSource$getProductAvailability$1(GetProductAvailabilitiesATGDataSource getProductAvailabilitiesATGDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44226c = getProductAvailabilitiesATGDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f44225b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f44226c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
