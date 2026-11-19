package com.vuitton.android.presentation.screen.repairs.detail;

import com.vuitton.android.presentation.screen.repairs.RepairRouter;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class RepairDetailBffFragment$onCreateView$1$1$1$1$6$1 extends FunctionReferenceImpl implements Function1<String, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = (String) obj;
        str.getClass();
        RepairDetailBffFragment repairDetailBffFragment = (RepairDetailBffFragment) this.receiver;
        RepairDetailBffFragment.Companion companion = RepairDetailBffFragment.P;
        if (((RepairsBffViewState) repairDetailBffFragment.R().getD().getValue()).l.f64005e != null) {
            repairDetailBffFragment.Q();
            RepairRouter.k(repairDetailBffFragment.requireActivity(), str);
        }
        return Unit.f71739a;
    }
}
