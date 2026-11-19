package com.vuitton.android.presentation.screen.storemode;

import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPWishlistUpdateUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PLPStoreModeViewModel {
    void E(PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel);

    void H(PlpProductUiModel plpProductUiModel);

    void N(PlpProductUiModel plpProductUiModel);

    void O0(PLPTrackingUiModel pLPTrackingUiModel);

    StateFlow Y();

    void Z(StoreModeContentUiModel storeModeContentUiModel);

    StateFlow a();

    StateFlow c1();

    String d0();

    SharedFlowImpl g();

    void j(GA4TrackingUiModel gA4TrackingUiModel);

    void l(String str, String str2);

    void p();

    boolean q0();

    SharedFlowImpl y0();
}
