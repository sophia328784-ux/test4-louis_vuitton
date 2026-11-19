package com.vuitton.android.presentation.screen.pdp;

import android.location.Geocoder;
import com.vuitton.android.presentation.model.location.PlaceGeocodingUiModel;
import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.PlaceAutocompleteUiModel;
import com.vuitton.android.presentation.screen.pdp.models.tracking.FindInStoreTrackingUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface FindInStoreViewModel {
    void Qa(String str);

    StateFlow a();

    void a6(String str, PlaceGeocodingUiModel placeGeocodingUiModel);

    void b1();

    void b9(Geocoder geocoder, StoreUiModel storeUiModel, PlaceGeocodingUiModel placeGeocodingUiModel);

    void c6(double d, double d2);

    Flow i5();

    void m1(PlaceAutocompleteUiModel placeAutocompleteUiModel);

    void s6(FindInStoreTrackingUiModel findInStoreTrackingUiModel);

    Flow y8();
}
