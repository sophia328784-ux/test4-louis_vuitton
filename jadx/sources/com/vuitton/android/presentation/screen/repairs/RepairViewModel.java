package com.vuitton.android.presentation.screen.repairs;

import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface RepairViewModel extends ContactUsDelegate {
    void D0(String str);

    void O(TimeSlotUiModel timeSlotUiModel);

    void T0(String str);

    Flow U();

    void Z0(String str);

    StateFlow a();

    Flow b();

    void c();

    void d(DistantRepairTrackingUiModel distantRepairTrackingUiModel);

    void k0(boolean z);
}
