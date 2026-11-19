package com.vuitton.android.presentation.screen.account.addresseditor;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AutocompleteAddressResultUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.phone.PhoneType;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AddressEditorViewModel {
    void G6();

    /* JADX INFO: renamed from: a */
    StateFlow getG();

    void a0(PhoneType phoneType);

    /* JADX INFO: renamed from: b */
    Flow getY();

    void e0(PhoneType phoneType);

    void f(FormSectionTypeUiModel formSectionTypeUiModel, Object obj);

    void i0(FormSectionTypeUiModel formSectionTypeUiModel);

    /* JADX INFO: renamed from: l5 */
    Flow getW();

    void n0();

    MonitorAction p5();

    void w8(AutocompleteAddressResultUiModel autocompleteAddressResultUiModel, boolean z);

    void x0();
}
