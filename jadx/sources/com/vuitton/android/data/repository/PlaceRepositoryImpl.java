package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.publication.PlaceApi;
import com.vuitton.android.data.dto.address.AddressDetailDto;
import com.vuitton.android.data.dto.address.autocomplete.AutocompleteContextDto;
import com.vuitton.android.data.dto.address.autocomplete.PlaceAutocompleteDto;
import com.vuitton.android.data.dto.address.autocomplete.mapper.AutocompleteContextMapperKt;
import com.vuitton.android.data.dto.address.autocomplete.mapper.PlaceAutocompleteMapperKt;
import com.vuitton.android.data.dto.address.mapper.AddressDetailMapperKt;
import com.vuitton.android.data.dto.product.availability.PlaceGeocodingDto;
import com.vuitton.android.domain.repository.PlaceRepository;
import com.vuitton.foundation.model.domain.model.place.AutocompleteContext;
import com.vuitton.foundation.model.domain.model.product.availability.PlaceGeocoding;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/PlaceRepositoryImpl;", "Lcom/vuitton/android/domain/repository/PlaceRepository;", "Lcom/vuitton/android/data/api/bff/publication/PlaceApi;", "placeApi", "<init>", "(Lcom/vuitton/android/data/api/bff/publication/PlaceApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PlaceRepositoryImpl implements PlaceRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PlaceApi f47886a;

    @Inject
    public PlaceRepositoryImpl(PlaceApi placeApi) {
        placeApi.getClass();
        this.f47886a = placeApi;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    @Override // com.vuitton.android.domain.repository.PlaceRepository
    public final Object a(String str, String str2, String str3, AutocompleteContext autocompleteContext, ContinuationImpl continuationImpl) throws Throwable {
        PlaceRepositoryImpl$getAddressAutocomplete$1 placeRepositoryImpl$getAddressAutocomplete$1;
        Object failure;
        if (continuationImpl instanceof PlaceRepositoryImpl$getAddressAutocomplete$1) {
            placeRepositoryImpl$getAddressAutocomplete$1 = (PlaceRepositoryImpl$getAddressAutocomplete$1) continuationImpl;
            int i2 = placeRepositoryImpl$getAddressAutocomplete$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                placeRepositoryImpl$getAddressAutocomplete$1.d = i2 - Integer.MIN_VALUE;
            } else {
                placeRepositoryImpl$getAddressAutocomplete$1 = new PlaceRepositoryImpl$getAddressAutocomplete$1(this, continuationImpl);
            }
        } else {
            placeRepositoryImpl$getAddressAutocomplete$1 = new PlaceRepositoryImpl$getAddressAutocomplete$1(this, continuationImpl);
        }
        PlaceRepositoryImpl$getAddressAutocomplete$1 placeRepositoryImpl$getAddressAutocomplete$2 = placeRepositoryImpl$getAddressAutocomplete$1;
        Object addressAutoComplete = placeRepositoryImpl$getAddressAutocomplete$2.f47887b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = placeRepositoryImpl$getAddressAutocomplete$2.d;
        try {
            if (i3 == 0) {
                ResultKt.b(addressAutoComplete);
                Result.Companion companion = Result.INSTANCE;
                PlaceApi placeApi = this.f47886a;
                AutocompleteContextDto autocompleteContextDtoA = autocompleteContext != null ? AutocompleteContextMapperKt.a(autocompleteContext) : null;
                placeRepositoryImpl$getAddressAutocomplete$2.d = 1;
                addressAutoComplete = placeApi.getAddressAutoComplete(str, str2, str3, autocompleteContextDtoA, placeRepositoryImpl$getAddressAutocomplete$2);
                if (addressAutoComplete == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(addressAutoComplete);
            }
            Iterable iterable = (Iterable) addressAutoComplete;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(PlaceAutocompleteMapperKt.a((PlaceAutocompleteDto) it.next()));
            }
            failure = new Result(arrayList);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.PlaceRepository
    public final Object b(String str, AutocompleteContext autocompleteContext, ContinuationImpl continuationImpl) throws Throwable {
        PlaceRepositoryImpl$getPlaceAutocomplete$1 placeRepositoryImpl$getPlaceAutocomplete$1;
        Object failure;
        if (continuationImpl instanceof PlaceRepositoryImpl$getPlaceAutocomplete$1) {
            placeRepositoryImpl$getPlaceAutocomplete$1 = (PlaceRepositoryImpl$getPlaceAutocomplete$1) continuationImpl;
            int i2 = placeRepositoryImpl$getPlaceAutocomplete$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                placeRepositoryImpl$getPlaceAutocomplete$1.d = i2 - Integer.MIN_VALUE;
            } else {
                placeRepositoryImpl$getPlaceAutocomplete$1 = new PlaceRepositoryImpl$getPlaceAutocomplete$1(this, continuationImpl);
            }
        } else {
            placeRepositoryImpl$getPlaceAutocomplete$1 = new PlaceRepositoryImpl$getPlaceAutocomplete$1(this, continuationImpl);
        }
        Object placeAutocomplete = placeRepositoryImpl$getPlaceAutocomplete$1.f47895b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = placeRepositoryImpl$getPlaceAutocomplete$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(placeAutocomplete);
                Result.Companion companion = Result.INSTANCE;
                PlaceApi placeApi = this.f47886a;
                AutocompleteContextDto autocompleteContextDtoA = autocompleteContext != null ? AutocompleteContextMapperKt.a(autocompleteContext) : null;
                placeRepositoryImpl$getPlaceAutocomplete$1.d = 1;
                placeAutocomplete = placeApi.getPlaceAutocomplete(str, autocompleteContextDtoA, placeRepositoryImpl$getPlaceAutocomplete$1);
                if (placeAutocomplete == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(placeAutocomplete);
            }
            Iterable iterable = (Iterable) placeAutocomplete;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(PlaceAutocompleteMapperKt.a((PlaceAutocompleteDto) it.next()));
            }
            failure = new Result(arrayList);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // com.vuitton.android.domain.repository.PlaceRepository
    public final Object c(double d, double d2, ContinuationImpl continuationImpl) throws Throwable {
        PlaceRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1 placeRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1;
        Object failure;
        if (continuationImpl instanceof PlaceRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1) {
            placeRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1 = (PlaceRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1) continuationImpl;
            int i2 = placeRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                placeRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1.d = i2 - Integer.MIN_VALUE;
            } else {
                placeRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1 = new PlaceRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1(this, continuationImpl);
            }
        } else {
            placeRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1 = new PlaceRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1(this, continuationImpl);
        }
        Object geocodingPlaceWithCoroutine = placeRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1.f47893b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = placeRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(geocodingPlaceWithCoroutine);
                Result.Companion companion = Result.INSTANCE;
                PlaceApi placeApi = this.f47886a;
                Double d3 = new Double(d);
                Double d4 = new Double(d2);
                placeRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1.d = 1;
                geocodingPlaceWithCoroutine = placeApi.getGeocodingPlaceWithCoroutine(d3, d4, placeRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1);
                if (geocodingPlaceWithCoroutine == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(geocodingPlaceWithCoroutine);
            }
            PlaceGeocodingDto placeGeocodingDto = (PlaceGeocodingDto) geocodingPlaceWithCoroutine;
            failure = new Result(new PlaceGeocoding(placeGeocodingDto.f46425a, placeGeocodingDto.f46426b, placeGeocodingDto.f46427c, placeGeocodingDto.d, placeGeocodingDto.f46428e, placeGeocodingDto.f46429f, placeGeocodingDto.g));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // com.vuitton.android.domain.repository.PlaceRepository
    public final Object d(String str, ContinuationImpl continuationImpl) throws Throwable {
        PlaceRepositoryImpl$getGeocodingPlaceById$1 placeRepositoryImpl$getGeocodingPlaceById$1;
        Object failure;
        if (continuationImpl instanceof PlaceRepositoryImpl$getGeocodingPlaceById$1) {
            placeRepositoryImpl$getGeocodingPlaceById$1 = (PlaceRepositoryImpl$getGeocodingPlaceById$1) continuationImpl;
            int i2 = placeRepositoryImpl$getGeocodingPlaceById$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                placeRepositoryImpl$getGeocodingPlaceById$1.d = i2 - Integer.MIN_VALUE;
            } else {
                placeRepositoryImpl$getGeocodingPlaceById$1 = new PlaceRepositoryImpl$getGeocodingPlaceById$1(this, continuationImpl);
            }
        } else {
            placeRepositoryImpl$getGeocodingPlaceById$1 = new PlaceRepositoryImpl$getGeocodingPlaceById$1(this, continuationImpl);
        }
        Object geocodingPlace = placeRepositoryImpl$getGeocodingPlaceById$1.f47891b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = placeRepositoryImpl$getGeocodingPlaceById$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(geocodingPlace);
                Result.Companion companion = Result.INSTANCE;
                PlaceApi placeApi = this.f47886a;
                placeRepositoryImpl$getGeocodingPlaceById$1.d = 1;
                geocodingPlace = placeApi.getGeocodingPlace(str, placeRepositoryImpl$getGeocodingPlaceById$1);
                if (geocodingPlace == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(geocodingPlace);
            }
            PlaceGeocodingDto placeGeocodingDto = (PlaceGeocodingDto) geocodingPlace;
            failure = new Result(new PlaceGeocoding(placeGeocodingDto.f46425a, placeGeocodingDto.f46426b, placeGeocodingDto.f46427c, placeGeocodingDto.d, placeGeocodingDto.f46428e, placeGeocodingDto.f46429f, placeGeocodingDto.g));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.PlaceRepository
    public final Object e(String str, String str2, ContinuationImpl continuationImpl) throws Throwable {
        PlaceRepositoryImpl$getPostalCodeAutoComplete$1 placeRepositoryImpl$getPostalCodeAutoComplete$1;
        Object failure;
        if (continuationImpl instanceof PlaceRepositoryImpl$getPostalCodeAutoComplete$1) {
            placeRepositoryImpl$getPostalCodeAutoComplete$1 = (PlaceRepositoryImpl$getPostalCodeAutoComplete$1) continuationImpl;
            int i2 = placeRepositoryImpl$getPostalCodeAutoComplete$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                placeRepositoryImpl$getPostalCodeAutoComplete$1.d = i2 - Integer.MIN_VALUE;
            } else {
                placeRepositoryImpl$getPostalCodeAutoComplete$1 = new PlaceRepositoryImpl$getPostalCodeAutoComplete$1(this, continuationImpl);
            }
        } else {
            placeRepositoryImpl$getPostalCodeAutoComplete$1 = new PlaceRepositoryImpl$getPostalCodeAutoComplete$1(this, continuationImpl);
        }
        Object postalCodeAutoComplete = placeRepositoryImpl$getPostalCodeAutoComplete$1.f47897b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = placeRepositoryImpl$getPostalCodeAutoComplete$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(postalCodeAutoComplete);
                Result.Companion companion = Result.INSTANCE;
                PlaceApi placeApi = this.f47886a;
                placeRepositoryImpl$getPostalCodeAutoComplete$1.d = 1;
                postalCodeAutoComplete = placeApi.getPostalCodeAutoComplete(str, str2, placeRepositoryImpl$getPostalCodeAutoComplete$1);
                if (postalCodeAutoComplete == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(postalCodeAutoComplete);
            }
            failure = new Result(AddressDetailMapperKt.a((AddressDetailDto) postalCodeAutoComplete));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.PlaceRepository
    public final Object f(String str, String str2, ContinuationImpl continuationImpl) throws Throwable {
        PlaceRepositoryImpl$getAddressDetails$1 placeRepositoryImpl$getAddressDetails$1;
        Object failure;
        if (continuationImpl instanceof PlaceRepositoryImpl$getAddressDetails$1) {
            placeRepositoryImpl$getAddressDetails$1 = (PlaceRepositoryImpl$getAddressDetails$1) continuationImpl;
            int i2 = placeRepositoryImpl$getAddressDetails$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                placeRepositoryImpl$getAddressDetails$1.d = i2 - Integer.MIN_VALUE;
            } else {
                placeRepositoryImpl$getAddressDetails$1 = new PlaceRepositoryImpl$getAddressDetails$1(this, continuationImpl);
            }
        } else {
            placeRepositoryImpl$getAddressDetails$1 = new PlaceRepositoryImpl$getAddressDetails$1(this, continuationImpl);
        }
        Object addressDetails = placeRepositoryImpl$getAddressDetails$1.f47889b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = placeRepositoryImpl$getAddressDetails$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(addressDetails);
                Result.Companion companion = Result.INSTANCE;
                PlaceApi placeApi = this.f47886a;
                placeRepositoryImpl$getAddressDetails$1.d = 1;
                addressDetails = placeApi.getAddressDetails(str, str2, placeRepositoryImpl$getAddressDetails$1);
                if (addressDetails == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(addressDetails);
            }
            failure = new Result(AddressDetailMapperKt.a((AddressDetailDto) addressDetails));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }
}
