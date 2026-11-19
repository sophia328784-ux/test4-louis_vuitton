package com.vuitton.android.presentation.screen.account.myinformation;

import com.vuitton.android.presentation.screen.account.myinformation.models.MyInfoTrackingUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface MyInformationViewModel {
    void Da();

    void Q4();

    void Y7();

    StateFlow a();

    void ac(boolean z);

    SharedFlow b();

    void d2();

    void f(FormSectionTypeUiModel formSectionTypeUiModel, Object obj);

    void g9();

    SharedFlow h();

    void j9();

    void m5(MyInfoTrackingUiModel myInfoTrackingUiModel);

    void na(String str, String str2);

    void q();

    void q4();

    void r5();

    void z3();
}
