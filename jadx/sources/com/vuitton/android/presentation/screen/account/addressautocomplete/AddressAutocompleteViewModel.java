package com.vuitton.android.presentation.screen.account.addressautocomplete;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AddressAutocompleteScreenContext;
import com.vuitton.android.presentation.screen.account.addressautocomplete.tracking.AddressAutocompleteTrackingUiModel;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AddressAutocompleteViewModel {
    void N1(AddressAutocompleteTrackingUiModel addressAutocompleteTrackingUiModel);

    void Ra(String str);

    void X5(String str);

    /* JADX INFO: renamed from: a */
    StateFlow getP();

    /* JADX INFO: renamed from: g4 */
    Flow getL();

    void l1(MonitorAction monitorAction);

    void n0();

    void pa(String str, AddressAutocompleteScreenContext addressAutocompleteScreenContext);

    void w7();

    void zb(Function1 function1);
}
