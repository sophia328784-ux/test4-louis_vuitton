package com.vuitton.android.presentation.screen.repairs.detail;

import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentKt;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.repairs.RepairBffViewModel;
import com.vuitton.android.presentation.screen.repairs.RepairRouter;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceTransactionIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import defpackage.rr0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class RepairConfirmAddressBffFragment$onCreateView$1$1$1$1$4$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        RepairConfirmAddressBffFragment repairConfirmAddressBffFragment = (RepairConfirmAddressBffFragment) this.receiver;
        RepairConfirmAddressBffFragment.Companion companion = RepairConfirmAddressBffFragment.M;
        repairConfirmAddressBffFragment.getClass();
        FragmentKt.b(repairConfirmAddressBffFragment, "SELECT_ADDRESS_REQUEST", new rr0(repairConfirmAddressBffFragment, 3));
        repairConfirmAddressBffFragment.R();
        FragmentActivity fragmentActivityRequireActivity = repairConfirmAddressBffFragment.requireActivity();
        fragmentActivityRequireActivity.getClass();
        AddressUiModel addressUiModel = ((AssessmentBffViewState) repairConfirmAddressBffFragment.S().getI().getValue()).g;
        CareServiceTransactionIdUiModel.Companion companion2 = CareServiceTransactionIdUiModel.f64071c;
        CareServiceDetailUiModel careServiceDetailUiModel = ((RepairsBffViewState) ((RepairBffViewModel) repairConfirmAddressBffFragment.F.getF71699b()).getD().getValue()).f64088h;
        String str = careServiceDetailUiModel != null ? careServiceDetailUiModel.f64038c : null;
        companion2.getClass();
        if (str == null) {
            str = CareServiceTransactionIdUiModel.d;
        }
        RepairRouter.h(fragmentActivityRequireActivity, addressUiModel, str);
        return Unit.f71739a;
    }
}
