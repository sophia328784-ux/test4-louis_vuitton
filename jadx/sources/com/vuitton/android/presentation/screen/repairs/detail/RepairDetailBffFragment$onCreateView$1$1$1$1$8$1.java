package com.vuitton.android.presentation.screen.repairs.detail;

import android.content.Context;
import androidx.activity.result.ActivityResultLauncher;
import com.vuitton.android.presentation.screen.repairs.RepairRouter;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class RepairDetailBffFragment$onCreateView$1$1$1$1$8$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        RepairDetailBffFragment repairDetailBffFragment = (RepairDetailBffFragment) this.receiver;
        RepairDetailBffFragment.Companion companion = RepairDetailBffFragment.P;
        if (((RepairsBffViewState) repairDetailBffFragment.R().getD().getValue()).f64091k.f64011c) {
            CareServiceDetailUiModel careServiceDetailUiModel = ((RepairsBffViewState) repairDetailBffFragment.R().getD().getValue()).f64088h;
            repairDetailBffFragment.Q();
            Context contextRequireContext = repairDetailBffFragment.requireContext();
            contextRequireContext.getClass();
            ActivityResultLauncher activityResultLauncher = repairDetailBffFragment.O;
            boolean z = (careServiceDetailUiModel != null ? careServiceDetailUiModel.l : null) != null;
            List list = careServiceDetailUiModel != null ? careServiceDetailUiModel.n : null;
            if (list == null) {
                list = EmptyList.f71768b;
            }
            RepairRouter.b(contextRequireContext, activityResultLauncher, z, list);
        } else {
            repairDetailBffFragment.R().D0(null);
        }
        return Unit.f71739a;
    }
}
