package com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel;

import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeItemUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.tracking.ThematicPlpTrackingUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.tracking.TrackingClickType;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ThematicPlpViewModel {
    static /* synthetic */ void n5(ThematicPlpViewModel thematicPlpViewModel, TrackingClickType trackingClickType, int i2) {
        boolean z = (i2 & 1) == 0;
        if ((i2 & 2) != 0) {
            trackingClickType = null;
        }
        thematicPlpViewModel.J3(z, trackingClickType);
    }

    StateFlow B7();

    void D6(String str, String str2, List list);

    StateFlow E8();

    void F2();

    void J3(boolean z, TrackingClickType trackingClickType);

    void Q(GridModes gridModes);

    void X8(List list);

    StateFlow a();

    StateFlow a8();

    void b3(ThemeItemUiModel themeItemUiModel, boolean z);

    void b4();

    SharedFlowImpl g();

    void h4(String str, TrackingClickType trackingClickType);

    void n7();

    void nb(String str);

    void p();

    void v7(ThemeUiModel themeUiModel, boolean z);

    void w9(ThematicPlpTrackingUiModel thematicPlpTrackingUiModel);

    StateFlow wb();
}
