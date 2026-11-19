package com.vuitton.android.data.api.bff.publication;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.address.AddressDetailDto;
import com.vuitton.android.data.dto.address.autocomplete.AutocompleteContextDto;
import com.vuitton.android.data.dto.address.autocomplete.PlaceAutocompleteDto;
import com.vuitton.android.data.dto.product.availability.PlaceGeocodingDto;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import org.squirrelframework.foundation.fsm.MvelScriptManager;
import retrofit2.http.GET;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\bH§@¢\u0006\u0002\u0010\tJ\u001a\u0010\n\u001a\u00020\u000b2\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\u0006H§@¢\u0006\u0002\u0010\rJ&\u0010\u000e\u001a\u00020\u000b2\n\b\u0003\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0003\u0010\u0011\u001a\u0004\u0018\u00010\u0010H§@¢\u0006\u0002\u0010\u0012J>\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0014\u001a\u00020\u00062\b\b\u0001\u0010\u0015\u001a\u00020\u00062\b\b\u0001\u0010\u0016\u001a\u00020\u00062\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\bH§@¢\u0006\u0002\u0010\u0017J\"\u0010\u0018\u001a\u00020\u00192\b\b\u0001\u0010\f\u001a\u00020\u00062\b\b\u0001\u0010\u0015\u001a\u00020\u0006H§@¢\u0006\u0002\u0010\u001aJ\"\u0010\u001b\u001a\u00020\u00192\b\b\u0001\u0010\u001c\u001a\u00020\u00062\b\b\u0001\u0010\u001d\u001a\u00020\u0006H§@¢\u0006\u0002\u0010\u001a¨\u0006\u001eÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/publication/PlaceApi;", "", "getPlaceAutocomplete", "", "Lcom/vuitton/android/data/dto/address/autocomplete/PlaceAutocompleteDto;", "text", "", "autocompleteContext", "Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getGeocodingPlace", "Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;", "placeId", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getGeocodingPlaceWithCoroutine", "latitude", "", "longitude", "(Ljava/lang/Double;Ljava/lang/Double;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAddressAutoComplete", "query", "sessionToken", "selectedCountry", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAddressDetails", "Lcom/vuitton/android/data/dto/address/AddressDetailDto;", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPostalCodeAutoComplete", "postalCode", "dispatchRegionCodeIso31661Alpha2", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PlaceApi {
    @GET("maps/autocomplete")
    Object getAddressAutoComplete(@Query("input") String str, @Query("sessionToken") String str2, @Query("selectedCountry") String str3, @Query(MvelScriptManager.VAR_CONTEXT) AutocompleteContextDto autocompleteContextDto, Continuation<? super List<PlaceAutocompleteDto>> continuation);

    @GET("maps/address-form/{placeId}")
    Object getAddressDetails(@Path("placeId") String str, @Query("sessionToken") String str2, Continuation<? super AddressDetailDto> continuation);

    @GET("maps/geocode")
    Object getGeocodingPlace(@Query("placeId") String str, Continuation<? super PlaceGeocodingDto> continuation);

    @GET("maps/reverse-geocode")
    Object getGeocodingPlaceWithCoroutine(@Query("lat") Double d, @Query("lng") Double d2, Continuation<? super PlaceGeocodingDto> continuation);

    @GET("maps/autocomplete")
    Object getPlaceAutocomplete(@Query("input") String str, @Query(MvelScriptManager.VAR_CONTEXT) AutocompleteContextDto autocompleteContextDto, Continuation<? super List<PlaceAutocompleteDto>> continuation);

    @GET("maps/postal-code/autocomplete")
    Object getPostalCodeAutoComplete(@Query("postalCode") String str, @Query("selectedCountry") String str2, Continuation<? super AddressDetailDto> continuation);
}
