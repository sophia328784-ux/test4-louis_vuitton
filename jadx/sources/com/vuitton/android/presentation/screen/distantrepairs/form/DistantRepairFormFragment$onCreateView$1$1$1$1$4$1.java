package com.vuitton.android.presentation.screen.distantrepairs.form;

import com.vuitton.android.presentation.screen.distantrepairs.DistantRepairRouter;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class DistantRepairFormFragment$onCreateView$1$1$1$1$4$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        DistantRepairFormFragment distantRepairFormFragment = (DistantRepairFormFragment) this.receiver;
        DistantRepairFormFragment.Companion companion = DistantRepairFormFragment.M;
        distantRepairFormFragment.O().d(DistantRepairTrackingUiModel.GoToMyCareClickedEvent.f57433a);
        if (distantRepairFormFragment.H != null) {
            DistantRepairRouter.b(distantRepairFormFragment.requireActivity());
            return Unit.f71739a;
        }
        Intrinsics.h("distantRepairRouter");
        throw null;
    }
}
