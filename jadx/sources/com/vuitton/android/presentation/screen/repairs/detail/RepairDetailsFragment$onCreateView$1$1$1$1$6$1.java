package com.vuitton.android.presentation.screen.repairs.detail;

import com.vuitton.android.presentation.screen.repairs.RepairRouter;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class RepairDetailsFragment$onCreateView$1$1$1$1$6$1 extends FunctionReferenceImpl implements Function1<String, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = (String) obj;
        str.getClass();
        RepairDetailsFragment repairDetailsFragment = (RepairDetailsFragment) this.receiver;
        RepairDetailsFragment.Companion companion = RepairDetailsFragment.P;
        String str2 = ((RepairsViewState) repairDetailsFragment.R().getI().getValue()).n.f64005e;
        if (str2 != null) {
            repairDetailsFragment.Q();
            RepairRouter.k(repairDetailsFragment.requireActivity(), String.format(str2, Arrays.copyOf(new Object[]{str}, 1)));
        }
        return Unit.f71739a;
    }
}
