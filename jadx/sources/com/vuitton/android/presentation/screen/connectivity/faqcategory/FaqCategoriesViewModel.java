package com.vuitton.android.presentation.screen.connectivity.faqcategory;

import com.vuitton.android.domain.usecase.connectivity.GetFaqCategoryListUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.connectivity.LVViewModel;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesView;", "Lcom/vuitton/android/domain/usecase/connectivity/GetFaqCategoryListUseCase;", "getFaqCategoryListUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Lcom/vuitton/android/domain/usecase/connectivity/GetFaqCategoryListUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FaqCategoriesViewModel extends LVViewModel<FaqCategoriesView> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f56032e = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetFaqCategoryListUseCase f56033c;
    public final AnalyticsTracker d;

    @Inject
    public FaqCategoriesViewModel(GetFaqCategoryListUseCase getFaqCategoryListUseCase, AnalyticsTracker analyticsTracker) {
        getFaqCategoryListUseCase.getClass();
        analyticsTracker.getClass();
        this.f56033c = getFaqCategoryListUseCase;
        this.d = analyticsTracker;
    }
}
