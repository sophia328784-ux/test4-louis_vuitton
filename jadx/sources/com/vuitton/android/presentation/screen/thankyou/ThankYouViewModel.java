package com.vuitton.android.presentation.screen.thankyou;

import com.vuitton.android.presentation.screen.thankyou.models.ThankYouBottomSheet;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouFeedbackUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouTrackingUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ThankYouViewModel {
    /* JADX INFO: renamed from: B6 */
    SharedFlowImpl getP();

    void Ba(ThankYouTrackingUiModel thankYouTrackingUiModel);

    void V3(ThankYouBottomSheet.Feedback feedback);

    /* JADX INFO: renamed from: a */
    StateFlow getN();

    /* JADX INFO: renamed from: e */
    StateFlow getT();

    void o6();

    void t1(ThankYouFeedbackUiModel thankYouFeedbackUiModel);

    /* JADX INFO: renamed from: t6 */
    SharedFlowImpl getR();
}
