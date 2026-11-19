package com.vuitton.android.presentation.screen.repairs.cancellationreasons;

import com.vuitton.android.presentation.screen.repairs.models.CancellationReasonUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class CancellationReasonsActivity$onCreate$1$1$1$1 extends FunctionReferenceImpl implements Function1<CancellationReasonUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        CancellationReasonUiModel cancellationReasonUiModel = (CancellationReasonUiModel) obj;
        cancellationReasonUiModel.getClass();
        ((CancellationReasonsViewModel) this.receiver).Y4(cancellationReasonUiModel);
        return Unit.f71739a;
    }
}
