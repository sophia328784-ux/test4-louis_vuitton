package com.vuitton.android.domain.usecase.travel;

import com.vuitton.android.domain.repository.PlaceRepository;
import com.vuitton.foundation.model.domain.model.place.AutocompleteContext;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/travel/GetPlaceAutocompleteUseCase;", "", "Lcom/vuitton/android/domain/repository/PlaceRepository;", "placeRepository", "<init>", "(Lcom/vuitton/android/domain/repository/PlaceRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetPlaceAutocompleteUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PlaceRepository f50419a;

    @Inject
    public GetPlaceAutocompleteUseCase(PlaceRepository placeRepository) {
        placeRepository.getClass();
        this.f50419a = placeRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, AutocompleteContext autocompleteContext, ContinuationImpl continuationImpl) {
        GetPlaceAutocompleteUseCase$run$1 getPlaceAutocompleteUseCase$run$1;
        if (continuationImpl instanceof GetPlaceAutocompleteUseCase$run$1) {
            getPlaceAutocompleteUseCase$run$1 = (GetPlaceAutocompleteUseCase$run$1) continuationImpl;
            int i2 = getPlaceAutocompleteUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getPlaceAutocompleteUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getPlaceAutocompleteUseCase$run$1 = new GetPlaceAutocompleteUseCase$run$1(this, continuationImpl);
            }
        } else {
            getPlaceAutocompleteUseCase$run$1 = new GetPlaceAutocompleteUseCase$run$1(this, continuationImpl);
        }
        Object obj = getPlaceAutocompleteUseCase$run$1.f50420b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getPlaceAutocompleteUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            getPlaceAutocompleteUseCase$run$1.d = 1;
            Object objB = this.f50419a.b(str, autocompleteContext, getPlaceAutocompleteUseCase$run$1);
            return objB == coroutineSingletons ? coroutineSingletons : objB;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
