package com.vuitton.android.presentation.screen.repairs.cancellationreasons;

import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.repairs.models.CancellationReasonUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CancellationReasonsViewModel {
    /* JADX INFO: renamed from: N2 */
    RepairStatusUiModel getF63576c();

    void Y4(CancellationReasonUiModel cancellationReasonUiModel);

    /* JADX INFO: renamed from: a */
    StateFlow getF63579h();

    void d(DistantRepairTrackingUiModel distantRepairTrackingUiModel);
}
