package com.vuitton.android.presentation.screen.thankyou;

import com.vuitton.android.presentation.screen.thankyou.models.ThankYouFeedbackUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class ThankYouActivity$onCreate$2$1$5$1$1 extends FunctionReferenceImpl implements Function1<ThankYouFeedbackUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ThankYouFeedbackUiModel thankYouFeedbackUiModel = (ThankYouFeedbackUiModel) obj;
        thankYouFeedbackUiModel.getClass();
        ((ThankYouViewModel) this.receiver).t1(thankYouFeedbackUiModel);
        return Unit.f71739a;
    }
}
