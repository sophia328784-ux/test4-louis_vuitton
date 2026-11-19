package com.vuitton.android.presentation.screen.connectivity.watch.settings;

import androidx.lifecycle.MutableLiveData;
import com.vuitton.android.domain.usecase.account.GetCachedUserIdUseCase;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.connectivity.watch.RenameWatchUseCase;
import com.vuitton.android.domain.usecase.connectivity.watch.pairing.UnpairWatchV2UseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.connectivity.LVViewModel;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsView;", "Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/UnpairWatchV2UseCase;", "unpairWatchV2UseCase", "Lcom/vuitton/android/domain/usecase/connectivity/watch/RenameWatchUseCase;", "renameWatchUseCase", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;", "getCachedUserIdUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/UnpairWatchV2UseCase;Lcom/vuitton/android/domain/usecase/connectivity/watch/RenameWatchUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WatchSettingsViewModel extends LVViewModel<WatchSettingsView> {
    public static final /* synthetic */ int l = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UnpairWatchV2UseCase f56764c;
    public final RenameWatchUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GetProfileUseCase f56765e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GetCachedUserIdUseCase f56766f;
    public final AnalyticsTracker g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableLiveData f56767h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableLiveData f56768i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableLiveData f56769j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableLiveData f56770k;

    @Inject
    public WatchSettingsViewModel(UnpairWatchV2UseCase unpairWatchV2UseCase, RenameWatchUseCase renameWatchUseCase, GetProfileUseCase getProfileUseCase, GetCachedUserIdUseCase getCachedUserIdUseCase, AnalyticsTracker analyticsTracker) {
        unpairWatchV2UseCase.getClass();
        renameWatchUseCase.getClass();
        getProfileUseCase.getClass();
        getCachedUserIdUseCase.getClass();
        analyticsTracker.getClass();
        this.f56764c = unpairWatchV2UseCase;
        this.d = renameWatchUseCase;
        this.f56765e = getProfileUseCase;
        this.f56766f = getCachedUserIdUseCase;
        this.g = analyticsTracker;
        MutableLiveData mutableLiveData = new MutableLiveData();
        this.f56767h = mutableLiveData;
        this.f56768i = mutableLiveData;
        MutableLiveData mutableLiveData2 = new MutableLiveData();
        this.f56769j = mutableLiveData2;
        this.f56770k = mutableLiveData2;
    }
}
