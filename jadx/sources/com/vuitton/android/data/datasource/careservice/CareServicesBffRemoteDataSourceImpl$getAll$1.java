package com.vuitton.android.data.datasource.careservice;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.careservice.CareServicesBffRemoteDataSourceImpl", f = "CareServicesBffRemoteDataSourceImpl.kt", l = {19}, m = "getAll-IoAF18A", v = 2)
final class CareServicesBffRemoteDataSourceImpl$getAll$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43878b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CareServicesBffRemoteDataSourceImpl f43879c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CareServicesBffRemoteDataSourceImpl$getAll$1(CareServicesBffRemoteDataSourceImpl careServicesBffRemoteDataSourceImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43879c = careServicesBffRemoteDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f43878b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objG = this.f43879c.g(this);
        return objG == CoroutineSingletons.COROUTINE_SUSPENDED ? objG : new Result(objG);
    }
}
