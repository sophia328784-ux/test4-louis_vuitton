package com.vuitton.android.presentation.screen.repairs.detail;

import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class RepairDetailBffFragment$onCreateView$1$1$1$1$5$1 extends FunctionReferenceImpl implements Function1<CareServiceIdUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = ((CareServiceIdUiModel) obj).f64060b;
        str.getClass();
        RepairDetailBffFragment repairDetailBffFragment = (RepairDetailBffFragment) this.receiver;
        RepairDetailBffFragment.Companion companion = RepairDetailBffFragment.P;
        repairDetailBffFragment.Q().g(repairDetailBffFragment.requireActivity(), str);
        return Unit.f71739a;
    }
}
