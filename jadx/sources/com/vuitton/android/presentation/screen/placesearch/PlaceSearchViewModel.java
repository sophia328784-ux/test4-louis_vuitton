package com.vuitton.android.presentation.screen.placesearch;

import androidx.lifecycle.MutableLiveData;
import com.vuitton.foundation.model.domain.model.place.AutocompleteContext;
import kotlin.Metadata;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PlaceSearchViewModel {
    void M8(String str, PlaceSearchActivity.PlaceInfoType placeInfoType);

    void R3(String str, AutocompleteContext autocompleteContext);

    /* JADX INFO: renamed from: a */
    StateFlow getF62666j();

    /* JADX INFO: renamed from: dc */
    MutableLiveData getD();

    /* JADX INFO: renamed from: sb */
    MutableLiveData getF62663f();
}
