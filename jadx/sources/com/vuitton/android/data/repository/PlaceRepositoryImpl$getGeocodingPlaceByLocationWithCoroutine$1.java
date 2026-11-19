package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.PlaceRepositoryImpl", f = "PlaceRepositoryImpl.kt", l = {EACTags.UNIFORM_RESOURCE_LOCATOR}, m = "getGeocodingPlaceByLocationWithCoroutine-0E7RQCE", v = 2)
final class PlaceRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47893b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PlaceRepositoryImpl f47894c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlaceRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1(PlaceRepositoryImpl placeRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47894c = placeRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47893b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objC = this.f47894c.c(0.0d, 0.0d, this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
