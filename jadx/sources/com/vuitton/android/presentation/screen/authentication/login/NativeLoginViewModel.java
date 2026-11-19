package com.vuitton.android.presentation.screen.authentication.login;

import com.vuitton.android.presentation.screen.authentication.login.models.NativeLoginTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.login.models.NativeLoginUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface NativeLoginViewModel {
    void P6(NativeLoginTrackingUiModel nativeLoginTrackingUiModel);

    StateFlow a();

    Flow b();

    void c7(NativeLoginUiModel nativeLoginUiModel);

    void f(FormSectionTypeUiModel formSectionTypeUiModel, Object obj);

    Flow k();
}
