package com.vuitton.android.presentation.screen.filter.quickaccess;

import com.vuitton.android.presentation.screen.filter.model.FilterParams;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersTrackingUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface QuickAccessFiltersViewModel {
    void M4(boolean z);

    void Q1(FiltersButtonState filtersButtonState);

    void Y0(FilterParams filterParams);

    StateFlow a();

    void l0(QuickAccessFiltersTrackingUiModel quickAccessFiltersTrackingUiModel);

    void o2(FiltersDropDownType filtersDropDownType);

    void sa(String str);
}
