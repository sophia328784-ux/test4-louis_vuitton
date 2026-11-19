package com.vuitton.android.presentation.screen.storemode;

import com.vuitton.android.presentation.screen.storemode.models.StoreModeTrackingUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface StoreModeViewModel {
    void C6();

    boolean F();

    void G();

    Flow H5();

    void R1();

    void S6(StoreModeTrackingUiModel storeModeTrackingUiModel);

    StateFlow a();

    void b1();

    void b7();

    StateFlow d8();

    void mb(String str, boolean z);
}
