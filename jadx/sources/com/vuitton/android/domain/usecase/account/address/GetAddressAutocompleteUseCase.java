package com.vuitton.android.domain.usecase.account.address;

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
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/account/address/GetAddressAutocompleteUseCase;", "", "Lcom/vuitton/android/domain/repository/PlaceRepository;", "placeRepository", "<init>", "(Lcom/vuitton/android/domain/repository/PlaceRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetAddressAutocompleteUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PlaceRepository f49076a;

    @Inject
    public GetAddressAutocompleteUseCase(PlaceRepository placeRepository) {
        placeRepository.getClass();
        this.f49076a = placeRepository;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object a(String str, String str2, String str3, AutocompleteContext autocompleteContext, ContinuationImpl continuationImpl) {
        GetAddressAutocompleteUseCase$run$1 getAddressAutocompleteUseCase$run$1;
        if (continuationImpl instanceof GetAddressAutocompleteUseCase$run$1) {
            getAddressAutocompleteUseCase$run$1 = (GetAddressAutocompleteUseCase$run$1) continuationImpl;
            int i2 = getAddressAutocompleteUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getAddressAutocompleteUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getAddressAutocompleteUseCase$run$1 = new GetAddressAutocompleteUseCase$run$1(this, continuationImpl);
            }
        } else {
            getAddressAutocompleteUseCase$run$1 = new GetAddressAutocompleteUseCase$run$1(this, continuationImpl);
        }
        GetAddressAutocompleteUseCase$run$1 getAddressAutocompleteUseCase$run$2 = getAddressAutocompleteUseCase$run$1;
        Object obj = getAddressAutocompleteUseCase$run$2.f49077b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getAddressAutocompleteUseCase$run$2.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            getAddressAutocompleteUseCase$run$2.d = 1;
            Object objA = this.f49076a.a(str, str2, str3, autocompleteContext, getAddressAutocompleteUseCase$run$2);
            return objA == coroutineSingletons ? coroutineSingletons : objA;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
