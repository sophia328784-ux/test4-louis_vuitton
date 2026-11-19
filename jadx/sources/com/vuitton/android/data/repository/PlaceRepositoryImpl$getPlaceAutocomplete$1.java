package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.PlaceRepositoryImpl", f = "PlaceRepositoryImpl.kt", l = {22}, m = "getPlaceAutocomplete-0E7RQCE", v = 2)
final class PlaceRepositoryImpl$getPlaceAutocomplete$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PlaceRepositoryImpl f47896c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlaceRepositoryImpl$getPlaceAutocomplete$1(PlaceRepositoryImpl placeRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47896c = placeRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47895b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objB = this.f47896c.b(null, null, this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
