package com.vuitton.android.presentation.screen.repairs.detail.components;

import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.repairs.RepairBffViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class RepairDetailBffComposableKt$RepairDetailBffComposable$6$1 extends FunctionReferenceImpl implements Function1<TimeSlotUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        TimeSlotUiModel timeSlotUiModel = (TimeSlotUiModel) obj;
        timeSlotUiModel.getClass();
        ((RepairBffViewModel) this.receiver).O(timeSlotUiModel);
        return Unit.f71739a;
    }
}
