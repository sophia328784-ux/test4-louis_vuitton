package com.vuitton.android.presentation.screen.spotlight;

import com.vuitton.android.presentation.screen.spotlight.models.SpotlightTrackingUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface SpotlightViewModel {
    void Ca(int i2);

    void J2();

    void Kb();

    void X9(SpotlightTrackingUiModel spotlightTrackingUiModel);

    StateFlow a();

    void e5(int i2);

    void ha(int i2, int i3);

    void j3(int i2);

    void oc(int i2, int i3);

    void p7(int i2, int i3);

    void ua();
}
