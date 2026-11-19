package com.vuitton.android.data.dto.address.autocomplete.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.address.AddressDetailDto;
import com.vuitton.android.data.dto.address.autocomplete.PlaceAutocompleteDto;
import com.vuitton.android.data.dto.address.mapper.AddressDetailMapperKt;
import com.vuitton.foundation.model.domain.model.place.PlaceAutocomplete;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PlaceAutocompleteMapperKt {
    public static final PlaceAutocomplete a(PlaceAutocompleteDto placeAutocompleteDto) {
        placeAutocompleteDto.getClass();
        String str = placeAutocompleteDto.f44473a;
        String str2 = placeAutocompleteDto.f44474b;
        if (str2 == null) {
            str2 = "";
        }
        String str3 = placeAutocompleteDto.f44475c;
        String str4 = str3 != null ? str3 : "";
        AddressDetailDto addressDetailDto = placeAutocompleteDto.d;
        return new PlaceAutocomplete(str, str2, str4, addressDetailDto != null ? AddressDetailMapperKt.a(addressDetailDto) : null);
    }
}
