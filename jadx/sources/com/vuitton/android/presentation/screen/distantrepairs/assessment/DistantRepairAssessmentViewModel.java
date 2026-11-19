package com.vuitton.android.presentation.screen.distantrepairs.assessment;

import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.Step;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface DistantRepairAssessmentViewModel {
    void A0(AddressUiModel addressUiModel, AddressUiModel addressUiModel2);

    void B0(Step step);

    void J0();

    void K0(String str);

    Flow L();

    void L6(CareServiceDetailUiModel careServiceDetailUiModel);

    void L8(String str);

    void M3();

    void N0();

    Flow P0();

    void S(int i2);

    void T8(AddressUiModel addressUiModel, CareServiceDetailUiModel careServiceDetailUiModel);

    Flow V();

    StateFlow a();

    Flow b();

    void b6(String str);

    void c();

    void d(DistantRepairTrackingUiModel distantRepairTrackingUiModel);

    Flow i();

    void l7(String str, String str2);

    void m(Step step);

    boolean o0(String str);

    Flow r0();

    void t7();

    void v0(String str);

    Flow w0();

    String z1();
}
