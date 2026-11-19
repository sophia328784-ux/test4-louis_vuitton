package com.vuitton.android.presentation.screen.connectivity.watch.detail;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.connectivity.watch.GetWatchUseCase;
import com.vuitton.android.domain.usecase.connectivity.watch.watchface.GetWatchfacePresentationWithVersionUseCase;
import com.vuitton.android.domain.usecase.travel.GetTravelListUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.connectivity.watch.models.WatchTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.watch.models.WatchTrackingUiModelKt;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u000fB1\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;", "Lcom/vuitton/android/domain/usecase/travel/GetTravelListUseCase;", "getTravelListUseCase", "Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase;", "getWatchUseCase", "Lcom/vuitton/android/domain/usecase/connectivity/watch/watchface/GetWatchfacePresentationWithVersionUseCase;", "getWatchfacePresentationWithVersionUseCase", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Lcom/vuitton/android/domain/usecase/travel/GetTravelListUseCase;Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase;Lcom/vuitton/android/domain/usecase/connectivity/watch/watchface/GetWatchfacePresentationWithVersionUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WatchDetailsViewModelImpl extends ViewModel implements WatchDetailsViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetTravelListUseCase f56722a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetWatchUseCase f56723b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetWatchfacePresentationWithVersionUseCase f56724c;
    public final GetProfileUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AnalyticsTracker f56725e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableLiveData f56726f;
    public final MutableLiveData g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableLiveData f56727h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableLiveData f56728i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableLiveData f56729j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableLiveData f56730k;
    public final MutableLiveData l;
    public final MutableLiveData m;
    public Job n;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl$Companion;", "", "", "WATCHFACE_PRESENTATION_TO_TAKE", "I", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public WatchDetailsViewModelImpl(GetTravelListUseCase getTravelListUseCase, GetWatchUseCase getWatchUseCase, GetWatchfacePresentationWithVersionUseCase getWatchfacePresentationWithVersionUseCase, GetProfileUseCase getProfileUseCase, AnalyticsTracker analyticsTracker) {
        getTravelListUseCase.getClass();
        getWatchUseCase.getClass();
        getWatchfacePresentationWithVersionUseCase.getClass();
        getProfileUseCase.getClass();
        analyticsTracker.getClass();
        this.f56722a = getTravelListUseCase;
        this.f56723b = getWatchUseCase;
        this.f56724c = getWatchfacePresentationWithVersionUseCase;
        this.d = getProfileUseCase;
        this.f56725e = analyticsTracker;
        MutableLiveData mutableLiveData = new MutableLiveData();
        this.f56726f = mutableLiveData;
        this.g = mutableLiveData;
        MutableLiveData mutableLiveData2 = new MutableLiveData();
        this.f56727h = mutableLiveData2;
        this.f56728i = mutableLiveData2;
        MutableLiveData mutableLiveData3 = new MutableLiveData();
        this.f56729j = mutableLiveData3;
        this.f56730k = mutableLiveData3;
        MutableLiveData mutableLiveData4 = new MutableLiveData();
        this.l = mutableLiveData4;
        this.m = mutableLiveData4;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsViewModel
    public final void D(WatchTrackingUiModel watchTrackingUiModel) {
        this.f56725e.a(WatchTrackingUiModelKt.a(watchTrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsViewModel
    /* JADX INFO: renamed from: Ha, reason: from getter */
    public final MutableLiveData getG() {
        return this.g;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsViewModel
    /* JADX INFO: renamed from: T, reason: from getter */
    public final MutableLiveData getF56728i() {
        return this.f56728i;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsViewModel
    public final void T9() {
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        BuildersKt.c(closeableCoroutineScopeA, DefaultIoScheduler.f75161b, null, new WatchDetailsViewModelImpl$getProfile$1(this, null), 2);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsViewModel
    public final void U9(Integer num) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new WatchDetailsViewModelImpl$getWatchFaces$1(this, num, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsViewModel
    /* JADX INFO: renamed from: Ub, reason: from getter */
    public final MutableLiveData getM() {
        return this.m;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsViewModel
    public final void Xb(String str) {
        str.getClass();
        Job job = this.n;
        if (job == null || !job.isActive()) {
            this.n = BuildersKt.c(ViewModelKt.a(this), null, null, new WatchDetailsViewModelImpl$getWatch$1(this, str, null), 3);
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsViewModel
    public final void p0() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new WatchDetailsViewModelImpl$getTravels$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsViewModel
    /* JADX INFO: renamed from: w, reason: from getter */
    public final MutableLiveData getF56730k() {
        return this.f56730k;
    }
}
