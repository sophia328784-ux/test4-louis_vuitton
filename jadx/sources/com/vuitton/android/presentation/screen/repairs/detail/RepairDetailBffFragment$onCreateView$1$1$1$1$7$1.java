package com.vuitton.android.presentation.screen.repairs.detail;

import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceShortUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class RepairDetailBffFragment$onCreateView$1$1$1$1$7$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        RepairDetailBffFragment repairDetailBffFragment = (RepairDetailBffFragment) this.receiver;
        RepairDetailBffFragment.Companion companion = RepairDetailBffFragment.P;
        CareServiceShortUiModel careServiceShortUiModel = (CareServiceShortUiModel) repairDetailBffFragment.M.getF71699b();
        if (careServiceShortUiModel != null) {
            repairDetailBffFragment.Q().c(repairDetailBffFragment.requireActivity(), careServiceShortUiModel.f64063b);
        }
        return Unit.f71739a;
    }
}
