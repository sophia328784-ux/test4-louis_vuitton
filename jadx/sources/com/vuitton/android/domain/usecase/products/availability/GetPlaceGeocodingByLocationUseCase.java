package com.vuitton.android.domain.usecase.products.availability;

import com.vuitton.android.domain.repository.PlaceRepository;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByLocationUseCase;", "", "Lcom/vuitton/android/domain/repository/PlaceRepository;", "placeRepository", "<init>", "(Lcom/vuitton/android/domain/repository/PlaceRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetPlaceGeocodingByLocationUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PlaceRepository f50348a;

    @Inject
    public GetPlaceGeocodingByLocationUseCase(PlaceRepository placeRepository) {
        placeRepository.getClass();
        this.f50348a = placeRepository;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object a(Pair pair, ContinuationImpl continuationImpl) {
        GetPlaceGeocodingByLocationUseCase$run$1 getPlaceGeocodingByLocationUseCase$run$1;
        if (continuationImpl instanceof GetPlaceGeocodingByLocationUseCase$run$1) {
            getPlaceGeocodingByLocationUseCase$run$1 = (GetPlaceGeocodingByLocationUseCase$run$1) continuationImpl;
            int i2 = getPlaceGeocodingByLocationUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getPlaceGeocodingByLocationUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getPlaceGeocodingByLocationUseCase$run$1 = new GetPlaceGeocodingByLocationUseCase$run$1(this, continuationImpl);
            }
        } else {
            getPlaceGeocodingByLocationUseCase$run$1 = new GetPlaceGeocodingByLocationUseCase$run$1(this, continuationImpl);
        }
        GetPlaceGeocodingByLocationUseCase$run$1 getPlaceGeocodingByLocationUseCase$run$2 = getPlaceGeocodingByLocationUseCase$run$1;
        Object obj = getPlaceGeocodingByLocationUseCase$run$2.f50349b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getPlaceGeocodingByLocationUseCase$run$2.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        double dDoubleValue = ((Number) pair.f71705b).doubleValue();
        double dDoubleValue2 = ((Number) pair.f71706c).doubleValue();
        getPlaceGeocodingByLocationUseCase$run$2.d = 1;
        Object objC = this.f50348a.c(dDoubleValue, dDoubleValue2, getPlaceGeocodingByLocationUseCase$run$2);
        return objC == coroutineSingletons ? coroutineSingletons : objC;
    }
}
