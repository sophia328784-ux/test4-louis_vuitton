package com.vuitton.android.presentation.screen.connectivity.faq;

import com.vuitton.android.domain.usecase.connectivity.GetFaqItemListUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.connectivity.LVViewModel;
import com.vuitton.android.presentation.screen.connectivity.faq.models.FaqTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.faq.models.FaqTrackingUiModelKt;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.cj;
import defpackage.o60;
import defpackage.pq0;
import defpackage.v40;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqView;", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;", "getFaqItemListUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FaqViewModel extends LVViewModel<FaqView> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f55994f = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetFaqItemListUseCase f55995c;
    public final AnalyticsTracker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final InAppDispatch f55996e;

    @Inject
    public FaqViewModel(RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, GetFaqItemListUseCase getFaqItemListUseCase, AnalyticsTracker analyticsTracker) {
        requireUserInAppDispatchUseCase.getClass();
        getFaqItemListUseCase.getClass();
        analyticsTracker.getClass();
        this.f55995c = getFaqItemListUseCase;
        this.d = analyticsTracker;
        this.f55996e = requireUserInAppDispatchUseCase.f49912a.b();
    }

    public final void Cc(FaqTrackingUiModel faqTrackingUiModel) {
        Hit.EventHit.DefaultEventHit defaultEventHit;
        Hit defaultScreenHit;
        Hit.EventHit.DefaultEventHit defaultEventHit2;
        if (faqTrackingUiModel instanceof FaqTrackingUiModel.FaqPageScreen) {
            FaqTrackingUiModel.FaqPageScreen faqPageScreen = (FaqTrackingUiModel.FaqPageScreen) faqTrackingUiModel;
            defaultScreenHit = new Hit.ScreenHit.DefaultScreenHit(null, FaqTrackingUiModelKt.a(faqPageScreen.f56012a, faqPageScreen.f56013b), null, "IoT", null, 17, null);
        } else {
            if (faqTrackingUiModel instanceof FaqTrackingUiModel.OpenFaqItemEvent) {
                FaqTrackingUiModel.OpenFaqItemEvent openFaqItemEvent = (FaqTrackingUiModel.OpenFaqItemEvent) faqTrackingUiModel;
                defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, FaqTrackingUiModelKt.a(openFaqItemEvent.f56014a, openFaqItemEvent.f56016c), pq0.k(openFaqItemEvent.f56015b + 1, "Question_"), "IoT", "Open", null, null, 97, null);
            } else if (faqTrackingUiModel instanceof FaqTrackingUiModel.CloseFaqItemEvent) {
                FaqTrackingUiModel.CloseFaqItemEvent closeFaqItemEvent = (FaqTrackingUiModel.CloseFaqItemEvent) faqTrackingUiModel;
                defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, FaqTrackingUiModelKt.a(closeFaqItemEvent.f56006a, closeFaqItemEvent.f56008c), pq0.k(closeFaqItemEvent.f56007b + 1, "Question_"), "IoT", "Close", null, null, 97, null);
            } else {
                if (faqTrackingUiModel instanceof FaqTrackingUiModel.OpenFaqQuestionEvent) {
                    FaqTrackingUiModel.OpenFaqQuestionEvent openFaqQuestionEvent = (FaqTrackingUiModel.OpenFaqQuestionEvent) faqTrackingUiModel;
                    String str = openFaqQuestionEvent.f56019c;
                    int i2 = openFaqQuestionEvent.f56018b + 1;
                    String strK = pq0.k(i2, "Question_");
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(null, FaqTrackingUiModelKt.a(openFaqQuestionEvent.f56017a, str), cj.e(i2, str, "_"), "IoT", "faq_question_unfolded", null, o60.t(strK), 33, null);
                } else {
                    if (!(faqTrackingUiModel instanceof FaqTrackingUiModel.CloseFaqQuestionEvent)) {
                        v40.g();
                        return;
                    }
                    FaqTrackingUiModel.CloseFaqQuestionEvent closeFaqQuestionEvent = (FaqTrackingUiModel.CloseFaqQuestionEvent) faqTrackingUiModel;
                    String str2 = closeFaqQuestionEvent.f56011c;
                    int i3 = closeFaqQuestionEvent.f56010b + 1;
                    String strK2 = pq0.k(i3, "Question_");
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(null, FaqTrackingUiModelKt.a(closeFaqQuestionEvent.f56009a, str2), cj.e(i3, str2, "_"), "IoT", "faq_question_folded", null, o60.t(strK2), 33, null);
                }
                defaultScreenHit = defaultEventHit;
            }
            defaultScreenHit = defaultEventHit2;
        }
        this.d.a(defaultScreenHit);
    }
}
