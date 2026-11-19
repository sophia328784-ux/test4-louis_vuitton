package com.vuitton.android.presentation.screen.distantrepairs.assessment;

import android.content.Context;
import androidx.activity.result.ActivityResultLauncher;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.repairs.RepairRouter;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class DistantRepairAssessmentFragment$onCreateView$1$1$1$1$7$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        DistantRepairAssessmentFragment distantRepairAssessmentFragment = (DistantRepairAssessmentFragment) this.receiver;
        if (distantRepairAssessmentFragment.H == null) {
            Intrinsics.h("repairRouter");
            throw null;
        }
        Context contextRequireContext = distantRepairAssessmentFragment.requireContext();
        contextRequireContext.getClass();
        ActivityResultLauncher activityResultLauncher = distantRepairAssessmentFragment.L;
        CareServiceDetailUiModel careServiceDetailUiModel = ((AssessmentViewState) distantRepairAssessmentFragment.O().getH().getValue()).d;
        RepairRouter.a(contextRequireContext, activityResultLauncher, careServiceDetailUiModel != null ? careServiceDetailUiModel.d : null);
        return Unit.f71739a;
    }
}
