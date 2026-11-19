package com.vuitton.android.domain.usecase.products.availability;

import com.vuitton.android.domain.repository.AvailabilityInStoreRepository;
import com.vuitton.foundation.model.domain.model.product.availability.GetProductAvailabilityInStoreParam;
import com.vuitton.foundation.model.domain.model.product.availability.PlaceGeocoding;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase;", "", "Lcom/vuitton/android/domain/repository/AvailabilityInStoreRepository;", "repository", "<init>", "(Lcom/vuitton/android/domain/repository/AvailabilityInStoreRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetProductAvailabilityInStoresUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AvailabilityInStoreRepository f50354a;

    @Inject
    public GetProductAvailabilityInStoresUseCase(AvailabilityInStoreRepository availabilityInStoreRepository) {
        availabilityInStoreRepository.getClass();
        this.f50354a = availabilityInStoreRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    public final Object a(GetProductAvailabilityInStoreParam getProductAvailabilityInStoreParam, ContinuationImpl continuationImpl) {
        GetProductAvailabilityInStoresUseCase$run$1 getProductAvailabilityInStoresUseCase$run$1;
        if (continuationImpl instanceof GetProductAvailabilityInStoresUseCase$run$1) {
            getProductAvailabilityInStoresUseCase$run$1 = (GetProductAvailabilityInStoresUseCase$run$1) continuationImpl;
            int i2 = getProductAvailabilityInStoresUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getProductAvailabilityInStoresUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getProductAvailabilityInStoresUseCase$run$1 = new GetProductAvailabilityInStoresUseCase$run$1(this, continuationImpl);
            }
        } else {
            getProductAvailabilityInStoresUseCase$run$1 = new GetProductAvailabilityInStoresUseCase$run$1(this, continuationImpl);
        }
        Object obj = getProductAvailabilityInStoresUseCase$run$1.f50355b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getProductAvailabilityInStoresUseCase$run$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        String str = getProductAvailabilityInStoreParam.f67939a;
        PlaceGeocoding placeGeocoding = getProductAvailabilityInStoreParam.f67940b;
        double d = placeGeocoding.f67942b;
        double d2 = placeGeocoding.f67943c;
        double d3 = placeGeocoding.d;
        double d4 = placeGeocoding.f67944e;
        double d5 = placeGeocoding.f67945f;
        double d6 = placeGeocoding.g;
        getProductAvailabilityInStoresUseCase$run$1.d = 1;
        Object objA = this.f50354a.a(str, d, d2, d3, d4, d5, d6, getProductAvailabilityInStoresUseCase$run$1);
        return objA == coroutineSingletons ? coroutineSingletons : objA;
    }
}
