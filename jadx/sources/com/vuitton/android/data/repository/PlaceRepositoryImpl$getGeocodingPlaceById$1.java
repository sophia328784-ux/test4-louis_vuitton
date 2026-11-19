package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.PlaceRepositoryImpl", f = "PlaceRepositoryImpl.kt", l = {63}, m = "getGeocodingPlaceById-gIAlu-s", v = 2)
final class PlaceRepositoryImpl$getGeocodingPlaceById$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47891b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PlaceRepositoryImpl f47892c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlaceRepositoryImpl$getGeocodingPlaceById$1(PlaceRepositoryImpl placeRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47892c = placeRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47891b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objD = this.f47892c.d(null, this);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : new Result(objD);
    }
}
