package com.vuitton.android.data.datasource.careservice;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.careservice.CareServicesBffRemoteDataSourceImpl", f = "CareServicesBffRemoteDataSourceImpl.kt", l = {23}, m = "get-6ahOT10", v = 2)
final class CareServicesBffRemoteDataSourceImpl$get$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43876b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CareServicesBffRemoteDataSourceImpl f43877c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CareServicesBffRemoteDataSourceImpl$get$1(CareServicesBffRemoteDataSourceImpl careServicesBffRemoteDataSourceImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43877c = careServicesBffRemoteDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f43876b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objB = this.f43877c.b(null, this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
