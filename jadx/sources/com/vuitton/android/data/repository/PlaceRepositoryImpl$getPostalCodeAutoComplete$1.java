package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.PlaceRepositoryImpl", f = "PlaceRepositoryImpl.kt", l = {56}, m = "getPostalCodeAutoComplete-77MOCHU", v = 2)
final class PlaceRepositoryImpl$getPostalCodeAutoComplete$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47897b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PlaceRepositoryImpl f47898c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlaceRepositoryImpl$getPostalCodeAutoComplete$1(PlaceRepositoryImpl placeRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47898c = placeRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47897b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objE = this.f47898c.e(null, null, this);
        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : new Result(objE);
    }
}
