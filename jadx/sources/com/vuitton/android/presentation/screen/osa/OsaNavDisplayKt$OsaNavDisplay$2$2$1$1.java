package com.vuitton.android.presentation.screen.osa;

import com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModel;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OsaNavDisplayKt$OsaNavDisplay$2$2$1$1 extends FunctionReferenceImpl implements Function1<OsaReasonUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        OsaReasonUiModel osaReasonUiModel = (OsaReasonUiModel) obj;
        osaReasonUiModel.getClass();
        ((OsaReasonsFormViewModel) this.receiver).r8(osaReasonUiModel);
        return Unit.f71739a;
    }
}
