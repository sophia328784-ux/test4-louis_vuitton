package com.vuitton.android.presentation.model.location;

import com.vuitton.foundation.model.domain.model.product.availability.PlaceGeocoding;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class GeocodingMapperKt {
    public static final PlaceGeocodingUiModel a(PlaceGeocoding placeGeocoding) {
        placeGeocoding.getClass();
        return new PlaceGeocodingUiModel(placeGeocoding.f67941a, placeGeocoding.f67942b, placeGeocoding.f67943c, placeGeocoding.d, placeGeocoding.f67944e, placeGeocoding.f67945f, placeGeocoding.g);
    }
}
