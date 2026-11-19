package com.vuitton.android.presentation.screen.connectivity.tutorial;

import androidx.lifecycle.MutableLiveData;
import com.vuitton.android.presentation.screen.connectivity.earphone.models.EarphoneTrackingUiModel;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface TutorialViewModel {
    void Pb(EarphoneTrackingUiModel earphoneTrackingUiModel);

    void U2(TutorialType tutorialType);

    MutableLiveData nc();
}
