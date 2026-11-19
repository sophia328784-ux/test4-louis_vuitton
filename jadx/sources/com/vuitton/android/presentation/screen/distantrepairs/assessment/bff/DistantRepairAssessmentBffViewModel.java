package com.vuitton.android.presentation.screen.distantrepairs.assessment.bff;

import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.Step;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface DistantRepairAssessmentBffViewModel {
    void A0(AddressUiModel addressUiModel, AddressUiModel addressUiModel2);

    void Ab(String str, boolean z);

    void B0(Step step);

    void J0();

    void K0(String str);

    void K7(AddressUiModel addressUiModel);

    Flow L();

    void N0();

    Flow P0();

    void S(int i2);

    void S4();

    Flow V();

    void Va();

    StateFlow a();

    Flow b();

    void c();

    void d(DistantRepairTrackingUiModel distantRepairTrackingUiModel);

    Flow i();

    void m(Step step);

    boolean o0(String str);

    Flow r0();

    void tb(String str, String str2);

    void v0(String str);

    Flow w0();
}
