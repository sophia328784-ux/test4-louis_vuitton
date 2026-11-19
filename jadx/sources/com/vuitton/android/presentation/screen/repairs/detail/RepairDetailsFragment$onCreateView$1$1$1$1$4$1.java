package com.vuitton.android.presentation.screen.repairs.detail;

import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentKt;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.repairs.RepairRouter;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceTransactionIdUiModel;
import defpackage.es0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class RepairDetailsFragment$onCreateView$1$1$1$1$4$1 extends FunctionReferenceImpl implements Function1<CareServiceDetailUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        CareServiceDetailUiModel careServiceDetailUiModel = (CareServiceDetailUiModel) obj;
        careServiceDetailUiModel.getClass();
        RepairDetailsFragment repairDetailsFragment = (RepairDetailsFragment) this.receiver;
        RepairDetailsFragment.Companion companion = RepairDetailsFragment.P;
        repairDetailsFragment.R().d(DistantRepairTrackingUiModel.ModifyDeliveryClickedEvent.f57435a);
        FragmentKt.b(repairDetailsFragment, "SELECT_ADDRESS_REQUEST", new es0(repairDetailsFragment, careServiceDetailUiModel, 1));
        repairDetailsFragment.Q();
        FragmentActivity fragmentActivityRequireActivity = repairDetailsFragment.requireActivity();
        fragmentActivityRequireActivity.getClass();
        AddressUiModel addressUiModel = ((AssessmentViewState) repairDetailsFragment.S().getH().getValue()).g;
        CareServiceTransactionIdUiModel.Companion companion2 = CareServiceTransactionIdUiModel.f64071c;
        String str = careServiceDetailUiModel.E;
        companion2.getClass();
        if (str == null) {
            str = CareServiceTransactionIdUiModel.d;
        }
        RepairRouter.h(fragmentActivityRequireActivity, addressUiModel, str);
        return Unit.f71739a;
    }
}
