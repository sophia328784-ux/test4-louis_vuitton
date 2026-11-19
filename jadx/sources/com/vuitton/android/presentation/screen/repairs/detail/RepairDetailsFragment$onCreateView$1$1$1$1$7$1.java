package com.vuitton.android.presentation.screen.repairs.detail;

import com.vuitton.android.presentation.screen.repairs.models.CareServiceUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class RepairDetailsFragment$onCreateView$1$1$1$1$7$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        RepairDetailsFragment repairDetailsFragment = (RepairDetailsFragment) this.receiver;
        RepairDetailsFragment.Companion companion = RepairDetailsFragment.P;
        CareServiceUiModel careServiceUiModel = (CareServiceUiModel) repairDetailsFragment.M.getF71699b();
        if (careServiceUiModel != null) {
            repairDetailsFragment.Q().c(repairDetailsFragment.requireActivity(), careServiceUiModel.f63994b);
        }
        return Unit.f71739a;
    }
}
