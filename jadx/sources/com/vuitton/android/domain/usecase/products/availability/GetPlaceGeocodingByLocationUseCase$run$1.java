package com.vuitton.android.domain.usecase.products.availability;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.products.availability.GetPlaceGeocodingByLocationUseCase", f = "GetPlaceGeocodingByLocationUseCase.kt", l = {9}, m = "run-gIAlu-s", v = 2)
final class GetPlaceGeocodingByLocationUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetPlaceGeocodingByLocationUseCase f50350c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetPlaceGeocodingByLocationUseCase$run$1(GetPlaceGeocodingByLocationUseCase getPlaceGeocodingByLocationUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50350c = getPlaceGeocodingByLocationUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50349b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f50350c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
