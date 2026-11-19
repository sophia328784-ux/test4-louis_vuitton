package com.vuitton.android.presentation.screen.repairs.detail;

import android.content.Context;
import androidx.activity.result.ActivityResultLauncher;
import com.vuitton.android.presentation.screen.repairs.RepairRouter;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class RepairDetailsFragment$onCreateView$1$1$1$1$8$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        RepairDetailsFragment repairDetailsFragment = (RepairDetailsFragment) this.receiver;
        RepairDetailsFragment.Companion companion = RepairDetailsFragment.P;
        if (((RepairsViewState) repairDetailsFragment.R().getI().getValue()).m.f64011c) {
            repairDetailsFragment.Q();
            Context contextRequireContext = repairDetailsFragment.requireContext();
            contextRequireContext.getClass();
            ActivityResultLauncher activityResultLauncher = repairDetailsFragment.O;
            CareServiceDetailUiModel careServiceDetailUiModel = ((RepairsViewState) repairDetailsFragment.R().getI().getValue()).f64018h;
            RepairRouter.a(contextRequireContext, activityResultLauncher, careServiceDetailUiModel != null ? careServiceDetailUiModel.d : null);
        } else {
            repairDetailsFragment.R().D0(null);
        }
        return Unit.f71739a;
    }
}
