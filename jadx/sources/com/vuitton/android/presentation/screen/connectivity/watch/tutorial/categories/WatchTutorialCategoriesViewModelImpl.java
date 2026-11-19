package com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.usecase.connectivity.watch.GetWatchTutorialCategoryListUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.connectivity.watch.models.WatchTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.watch.models.WatchTrackingUiModelKt;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesViewModel;", "Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchTutorialCategoryListUseCase;", "getWatchTutorialCategoryListUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchTutorialCategoryListUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WatchTutorialCategoriesViewModelImpl extends ViewModel implements WatchTutorialCategoriesViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetWatchTutorialCategoryListUseCase f56793a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f56794b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableLiveData f56795c;
    public final MutableLiveData d;

    @Inject
    public WatchTutorialCategoriesViewModelImpl(GetWatchTutorialCategoryListUseCase getWatchTutorialCategoryListUseCase, AnalyticsTracker analyticsTracker) {
        getWatchTutorialCategoryListUseCase.getClass();
        analyticsTracker.getClass();
        this.f56793a = getWatchTutorialCategoryListUseCase;
        this.f56794b = analyticsTracker;
        MutableLiveData mutableLiveData = new MutableLiveData();
        this.f56795c = mutableLiveData;
        this.d = mutableLiveData;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories.WatchTutorialCategoriesViewModel
    public final void D(WatchTrackingUiModel watchTrackingUiModel) {
        this.f56794b.a(WatchTrackingUiModelKt.a(WatchTrackingUiModel.WatchTutorialCategoriesPageScreen.f56750a));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories.WatchTutorialCategoriesViewModel
    /* JADX INFO: renamed from: G7, reason: from getter */
    public final MutableLiveData getD() {
        return this.d;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories.WatchTutorialCategoriesViewModel
    public final void Ya() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new WatchTutorialCategoriesViewModelImpl$getWatchTutorialCategories$1(this, null), 3);
    }
}
