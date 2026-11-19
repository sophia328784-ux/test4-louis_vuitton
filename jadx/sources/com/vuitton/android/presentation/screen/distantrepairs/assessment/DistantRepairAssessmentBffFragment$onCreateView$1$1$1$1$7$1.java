package com.vuitton.android.presentation.screen.distantrepairs.assessment;

import android.content.Context;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.repairs.RepairRouter;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class DistantRepairAssessmentBffFragment$onCreateView$1$1$1$1$7$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        DistantRepairAssessmentBffFragment distantRepairAssessmentBffFragment = (DistantRepairAssessmentBffFragment) this.receiver;
        DistantRepairAssessmentBffFragment.Companion companion = DistantRepairAssessmentBffFragment.N;
        CareServiceDetailUiModel careServiceDetailUiModel = ((AssessmentBffViewState) distantRepairAssessmentBffFragment.O().getI().getValue()).d;
        if (careServiceDetailUiModel != null) {
            if (distantRepairAssessmentBffFragment.I == null) {
                Intrinsics.h("repairRouter");
                throw null;
            }
            Context contextRequireContext = distantRepairAssessmentBffFragment.requireContext();
            contextRequireContext.getClass();
            RepairRouter.b(contextRequireContext, distantRepairAssessmentBffFragment.M, careServiceDetailUiModel.l != null, careServiceDetailUiModel.n);
        }
        return Unit.f71739a;
    }
}
