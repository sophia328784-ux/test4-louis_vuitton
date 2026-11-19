package com.vuitton.android.presentation.screen.connectivity.tutorial;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.usecase.connectivity.earphone.GetEarphoneTutorialUseCase;
import com.vuitton.android.domain.usecase.connectivity.horizon.GetHorizonSpeakerTutorialUseCase;
import com.vuitton.android.domain.usecase.connectivity.watchv3.GetWatchV3TutorialUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.connectivity.earphone.models.EarphoneTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.earphone.models.EarphoneTrackingUiModelKt;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B)\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModel;", "Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase;", "getWatchV3TutorialUseCase", "Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneTutorialUseCase;", "getEarphoneTutorialUseCase", "Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerTutorialUseCase;", "getHorizonSpeakerTutorialUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase;Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneTutorialUseCase;Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerTutorialUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TutorialViewModelImpl extends ViewModel implements TutorialViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetWatchV3TutorialUseCase f56665a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetEarphoneTutorialUseCase f56666b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetHorizonSpeakerTutorialUseCase f56667c;
    public final AnalyticsTracker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableLiveData f56668e;

    @Inject
    public TutorialViewModelImpl(GetWatchV3TutorialUseCase getWatchV3TutorialUseCase, GetEarphoneTutorialUseCase getEarphoneTutorialUseCase, GetHorizonSpeakerTutorialUseCase getHorizonSpeakerTutorialUseCase, AnalyticsTracker analyticsTracker) {
        getWatchV3TutorialUseCase.getClass();
        getEarphoneTutorialUseCase.getClass();
        getHorizonSpeakerTutorialUseCase.getClass();
        analyticsTracker.getClass();
        this.f56665a = getWatchV3TutorialUseCase;
        this.f56666b = getEarphoneTutorialUseCase;
        this.f56667c = getHorizonSpeakerTutorialUseCase;
        this.d = analyticsTracker;
        this.f56668e = new MutableLiveData();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialViewModel
    public final void Pb(EarphoneTrackingUiModel earphoneTrackingUiModel) {
        this.d.a(EarphoneTrackingUiModelKt.a(earphoneTrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialViewModel
    public final void U2(TutorialType tutorialType) {
        tutorialType.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new TutorialViewModelImpl$getTutorialList$1(tutorialType, this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialViewModel
    /* JADX INFO: renamed from: nc, reason: from getter */
    public final MutableLiveData getF56668e() {
        return this.f56668e;
    }
}
