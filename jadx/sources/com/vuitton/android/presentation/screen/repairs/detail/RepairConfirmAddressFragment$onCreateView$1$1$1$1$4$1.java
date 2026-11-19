package com.vuitton.android.presentation.screen.repairs.detail;

import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentKt;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.repairs.RepairRouter;
import com.vuitton.android.presentation.screen.repairs.RepairViewModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceTransactionIdUiModel;
import defpackage.vr0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class RepairConfirmAddressFragment$onCreateView$1$1$1$1$4$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        RepairConfirmAddressFragment repairConfirmAddressFragment = (RepairConfirmAddressFragment) this.receiver;
        RepairConfirmAddressFragment.Companion companion = RepairConfirmAddressFragment.M;
        repairConfirmAddressFragment.getClass();
        FragmentKt.b(repairConfirmAddressFragment, "SELECT_ADDRESS_REQUEST", new vr0(repairConfirmAddressFragment, 3));
        repairConfirmAddressFragment.Q();
        FragmentActivity fragmentActivityRequireActivity = repairConfirmAddressFragment.requireActivity();
        fragmentActivityRequireActivity.getClass();
        AddressUiModel addressUiModel = ((AssessmentViewState) repairConfirmAddressFragment.R().getH().getValue()).f57361h;
        CareServiceTransactionIdUiModel.Companion companion2 = CareServiceTransactionIdUiModel.f64071c;
        CareServiceDetailUiModel careServiceDetailUiModel = ((RepairsViewState) ((RepairViewModel) repairConfirmAddressFragment.F.getF71699b()).getI().getValue()).f64018h;
        String str = careServiceDetailUiModel != null ? careServiceDetailUiModel.E : null;
        companion2.getClass();
        if (str == null) {
            str = CareServiceTransactionIdUiModel.d;
        }
        RepairRouter.h(fragmentActivityRequireActivity, addressUiModel, str);
        return Unit.f71739a;
    }
}
