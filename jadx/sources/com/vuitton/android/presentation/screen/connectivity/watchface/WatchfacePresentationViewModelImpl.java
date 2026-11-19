package com.vuitton.android.presentation.screen.connectivity.watchface;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.usecase.connectivity.watch.watchface.GetWatchfacePresentationForUserUseCase;
import com.vuitton.android.domain.usecase.connectivity.watch.watchface.GetWatchfacePresentationWithVersionUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.connectivity.watch.models.WatchTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.watch.models.WatchTrackingUiModelKt;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B!\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationViewModel;", "Lcom/vuitton/android/domain/usecase/connectivity/watch/watchface/GetWatchfacePresentationWithVersionUseCase;", "getWatchfacePresentationWithVersionUseCase", "Lcom/vuitton/android/domain/usecase/connectivity/watch/watchface/GetWatchfacePresentationForUserUseCase;", "getWatchfacePresentationForUserUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Lcom/vuitton/android/domain/usecase/connectivity/watch/watchface/GetWatchfacePresentationWithVersionUseCase;Lcom/vuitton/android/domain/usecase/connectivity/watch/watchface/GetWatchfacePresentationForUserUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WatchfacePresentationViewModelImpl extends ViewModel implements WatchfacePresentationViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetWatchfacePresentationWithVersionUseCase f56836a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetWatchfacePresentationForUserUseCase f56837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnalyticsTracker f56838c;
    public final MutableLiveData d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableLiveData f56839e;

    @Inject
    public WatchfacePresentationViewModelImpl(GetWatchfacePresentationWithVersionUseCase getWatchfacePresentationWithVersionUseCase, GetWatchfacePresentationForUserUseCase getWatchfacePresentationForUserUseCase, AnalyticsTracker analyticsTracker) {
        getWatchfacePresentationWithVersionUseCase.getClass();
        getWatchfacePresentationForUserUseCase.getClass();
        analyticsTracker.getClass();
        this.f56836a = getWatchfacePresentationWithVersionUseCase;
        this.f56837b = getWatchfacePresentationForUserUseCase;
        this.f56838c = analyticsTracker;
        MutableLiveData mutableLiveData = new MutableLiveData();
        this.d = mutableLiveData;
        this.f56839e = mutableLiveData;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationViewModel
    public final void D(WatchTrackingUiModel watchTrackingUiModel) {
        this.f56838c.a(WatchTrackingUiModelKt.a(watchTrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationViewModel
    public final void Qb() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new WatchfacePresentationViewModelImpl$getWatchfaceListForUser$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationViewModel
    /* JADX INFO: renamed from: U3, reason: from getter */
    public final MutableLiveData getF56839e() {
        return this.f56839e;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationViewModel
    public final void t2(int i2) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new WatchfacePresentationViewModelImpl$getWatchfaceListWithVersion$1(this, i2, null), 3);
    }
}
