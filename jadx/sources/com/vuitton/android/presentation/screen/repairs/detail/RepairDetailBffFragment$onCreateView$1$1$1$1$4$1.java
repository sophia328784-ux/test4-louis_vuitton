package com.vuitton.android.presentation.screen.repairs.detail;

import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.repairs.RepairRouter;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceTransactionIdUiModel;
import defpackage.xr0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class RepairDetailBffFragment$onCreateView$1$1$1$1$4$1 extends FunctionReferenceImpl implements Function1<CareServiceTransactionIdUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = ((CareServiceTransactionIdUiModel) obj).f64072b;
        str.getClass();
        RepairDetailBffFragment repairDetailBffFragment = (RepairDetailBffFragment) this.receiver;
        RepairDetailBffFragment.Companion companion = RepairDetailBffFragment.P;
        repairDetailBffFragment.R().d(DistantRepairTrackingUiModel.ModifyDeliveryClickedEvent.f57435a);
        FragmentKt.b(repairDetailBffFragment, "SELECT_ADDRESS_REQUEST", new xr0(repairDetailBffFragment, 2));
        repairDetailBffFragment.Q();
        FragmentActivity fragmentActivityRequireActivity = repairDetailBffFragment.requireActivity();
        fragmentActivityRequireActivity.getClass();
        RepairRouter.h(fragmentActivityRequireActivity, ((AssessmentBffViewState) repairDetailBffFragment.S().getI().getValue()).f57348f, str);
        return Unit.f71739a;
    }
}
