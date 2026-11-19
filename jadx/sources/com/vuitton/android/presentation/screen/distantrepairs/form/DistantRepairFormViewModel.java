package com.vuitton.android.presentation.screen.distantrepairs.form;

import android.net.Uri;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.Step;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface DistantRepairFormViewModel {
    void C0();

    boolean E0();

    void H0(String str);

    void J(String str);

    void P(String str, TimeSlotUiModel timeSlotUiModel);

    void V0(String str, String str2, String str3);

    void W0(Uri uri, int i2);

    Flow X();

    StateFlow a();

    Flow b();

    void b0();

    void c();

    void d(DistantRepairTrackingUiModel distantRepairTrackingUiModel);

    Flow i();

    void m(Step step);

    void m0(int i2);

    void s0(Step step);

    void z0(DistantRepairContactMethod distantRepairContactMethod);
}
