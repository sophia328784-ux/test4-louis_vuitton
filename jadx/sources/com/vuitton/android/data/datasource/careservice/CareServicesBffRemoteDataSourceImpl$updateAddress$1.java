package com.vuitton.android.data.datasource.careservice;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.careservice.CareServicesBffRemoteDataSourceImpl", f = "CareServicesBffRemoteDataSourceImpl.kt", l = {35}, m = "updateAddress-FjMe0-8", v = 2)
final class CareServicesBffRemoteDataSourceImpl$updateAddress$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CareServicesBffRemoteDataSourceImpl f43881c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CareServicesBffRemoteDataSourceImpl$updateAddress$1(CareServicesBffRemoteDataSourceImpl careServicesBffRemoteDataSourceImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43881c = careServicesBffRemoteDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f43880b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f43881c.a(null, null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
