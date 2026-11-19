package com.vuitton.android.presentation.screen.connectivity.travel.detail;

import androidx.lifecycle.MutableLiveData;
import com.vuitton.android.presentation.screen.connectivity.travel.TravelUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.models.TravelTrackingUiModel;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface TravelDetailViewModel {
    MutableLiveData R5();

    void Xa(String str);

    MutableLiveData h6();

    void t0(TravelTrackingUiModel travelTrackingUiModel);

    void u7(TravelUiModel travelUiModel);
}
