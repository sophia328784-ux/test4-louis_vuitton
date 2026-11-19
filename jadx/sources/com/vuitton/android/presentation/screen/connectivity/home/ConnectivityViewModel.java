package com.vuitton.android.presentation.screen.connectivity.home;

import androidx.lifecycle.MutableLiveData;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.account.GetCachedUserIdUseCase;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.connectivity.GetConnectedObjectListUseCase;
import com.vuitton.android.domain.usecase.connectivity.lightup.DeleteLightUpProductUseCase;
import com.vuitton.android.domain.usecase.connectivity.lightup.GetLightUpObjectsUseCase;
import com.vuitton.android.domain.usecase.connectivity.watch.pairing.PairWatchV2UseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.connectivity.LVViewModel;
import java.util.ArrayList;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BI\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityView;", "Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpObjectsUseCase;", "getLightUpObjectsUseCase", "Lcom/vuitton/android/domain/usecase/connectivity/lightup/DeleteLightUpProductUseCase;", "deleteLightUpProductUseCase", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;", "getConnectedObjectListUseCase", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;", "getCachedUserIdUseCase", "Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;", "pairWatchV2UseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpObjectsUseCase;Lcom/vuitton/android/domain/usecase/connectivity/lightup/DeleteLightUpProductUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ConnectivityViewModel extends LVViewModel<ConnectivityView> {
    public static final /* synthetic */ int o = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetLightUpObjectsUseCase f56073c;
    public final DeleteLightUpProductUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final UserSessionService f56074e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GetConnectedObjectListUseCase f56075f;
    public final GetProfileUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final GetCachedUserIdUseCase f56076h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final PairWatchV2UseCase f56077i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AnalyticsTracker f56078j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableLiveData f56079k;
    public final MutableLiveData l;
    public final MutableLiveData m;
    public final MutableLiveData n;

    @Inject
    public ConnectivityViewModel(GetLightUpObjectsUseCase getLightUpObjectsUseCase, DeleteLightUpProductUseCase deleteLightUpProductUseCase, UserSessionService userSessionService, GetConnectedObjectListUseCase getConnectedObjectListUseCase, GetProfileUseCase getProfileUseCase, GetCachedUserIdUseCase getCachedUserIdUseCase, PairWatchV2UseCase pairWatchV2UseCase, AnalyticsTracker analyticsTracker) {
        getLightUpObjectsUseCase.getClass();
        deleteLightUpProductUseCase.getClass();
        userSessionService.getClass();
        getConnectedObjectListUseCase.getClass();
        getProfileUseCase.getClass();
        getCachedUserIdUseCase.getClass();
        pairWatchV2UseCase.getClass();
        analyticsTracker.getClass();
        this.f56073c = getLightUpObjectsUseCase;
        this.d = deleteLightUpProductUseCase;
        this.f56074e = userSessionService;
        this.f56075f = getConnectedObjectListUseCase;
        this.g = getProfileUseCase;
        this.f56076h = getCachedUserIdUseCase;
        this.f56077i = pairWatchV2UseCase;
        this.f56078j = analyticsTracker;
        MutableLiveData mutableLiveData = new MutableLiveData();
        this.f56079k = mutableLiveData;
        this.l = mutableLiveData;
        MutableLiveData mutableLiveData2 = new MutableLiveData();
        this.m = mutableLiveData2;
        this.n = mutableLiveData2;
    }

    public static final void Cc(ConnectivityViewModel connectivityViewModel, ArrayList arrayList) {
        connectivityViewModel.getClass();
        LVViewModel.Bc(connectivityViewModel, new ConnectivityViewModel$manageConnectedObject$1(connectivityViewModel, null), new ConnectivityViewModel$manageConnectedObject$2(arrayList, connectivityViewModel, null), 2);
    }
}
