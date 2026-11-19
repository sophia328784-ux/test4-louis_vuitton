package com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff;

import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class CancellationReasonsBffActivity$onCreate$1$1$1$1 extends FunctionReferenceImpl implements Function1<CareServiceDetailUiModel.CancellationReason, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        CareServiceDetailUiModel.CancellationReason cancellationReason = (CareServiceDetailUiModel.CancellationReason) obj;
        cancellationReason.getClass();
        ((CancellationReasonsBffViewModel) this.receiver).Nb(cancellationReason);
        return Unit.f71739a;
    }
}
