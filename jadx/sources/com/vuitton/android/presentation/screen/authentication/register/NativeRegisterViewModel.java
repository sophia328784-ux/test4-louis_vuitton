package com.vuitton.android.presentation.screen.authentication.register;

import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AutocompleteAddressResultUiModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterAddressTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterTrackingUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface NativeRegisterViewModel {
    void A(String str);

    void Fa(Step step, FormSectionTypeUiModel formSectionTypeUiModel, Object obj);

    Flow G3();

    void L4(NativeRegisterTrackingUiModel nativeRegisterTrackingUiModel);

    void La();

    void N4(long j2);

    void Q9(Step step);

    void V5();

    String Z8();

    StateFlow a();

    Flow b();

    void c9();

    Flow e();

    void g8(NativeRegisterAddressTrackingUiModel nativeRegisterAddressTrackingUiModel);

    void i0(FormSectionTypeUiModel formSectionTypeUiModel);

    void j4(AutocompleteAddressResultUiModel autocompleteAddressResultUiModel);

    Flow k();

    void n4(Step step);

    Flow x2();

    void xb();
}
