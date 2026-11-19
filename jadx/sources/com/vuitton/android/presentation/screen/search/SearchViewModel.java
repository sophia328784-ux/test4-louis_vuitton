package com.vuitton.android.presentation.screen.search;

import com.vuitton.android.domain.monitoring.search.SearchPanelExitContext;
import com.vuitton.android.presentation.screen.search.models.HistoryItemUiModel;
import com.vuitton.android.presentation.screen.search.models.SearchTrackingUiModel;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/SearchViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface SearchViewModel {
    void H1();

    void N9(HistoryItemUiModel.HistoryProductUiModel historyProductUiModel);

    void P3(String str);

    void S5(SearchPanelExitContext searchPanelExitContext);

    void X1(String str);

    void Y9(String str);

    StateFlow a();

    void j(GA4TrackingUiModel gA4TrackingUiModel);

    void x7(SearchTrackingUiModel searchTrackingUiModel);
}
