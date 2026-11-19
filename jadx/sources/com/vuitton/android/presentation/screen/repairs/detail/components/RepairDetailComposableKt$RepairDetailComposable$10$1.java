package com.vuitton.android.presentation.screen.repairs.detail.components;

import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.repairs.RepairViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class RepairDetailComposableKt$RepairDetailComposable$10$1 extends FunctionReferenceImpl implements Function1<DistantRepairTrackingUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        DistantRepairTrackingUiModel distantRepairTrackingUiModel = (DistantRepairTrackingUiModel) obj;
        distantRepairTrackingUiModel.getClass();
        ((RepairViewModel) this.receiver).d(distantRepairTrackingUiModel);
        return Unit.f71739a;
    }
}
