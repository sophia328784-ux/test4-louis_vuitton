package com.vuitton.android.presentation.screen.distantrepairs.assessment;

import com.vuitton.android.presentation.screen.distantrepairs.DistantRepairRouter;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class DistantRepairAssessmentFragment$onCreateView$1$1$1$1$3$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        DistantRepairAssessmentFragment distantRepairAssessmentFragment = (DistantRepairAssessmentFragment) this.receiver;
        DistantRepairAssessmentFragment.Companion companion = DistantRepairAssessmentFragment.M;
        distantRepairAssessmentFragment.O().d(DistantRepairTrackingUiModel.PreliminaryGoToMyCareClickedEvent.f57440a);
        if (distantRepairAssessmentFragment.G != null) {
            DistantRepairRouter.b(distantRepairAssessmentFragment.requireActivity());
            return Unit.f71739a;
        }
        Intrinsics.h("distantRepairRouter");
        throw null;
    }
}
