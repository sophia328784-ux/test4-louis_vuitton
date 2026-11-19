package com.vuitton.android.presentation.screen.plp.viewmodels;

import com.vuitton.android.presentation.screen.search.models.HistoryItemUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;", "Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PSPViewModel extends PLPViewModel {
    StateFlow M0();

    void X0(String str);

    void l(String str, String str2);

    void x6(HistoryItemUiModel.HistoryProductUiModel historyProductUiModel);
}
