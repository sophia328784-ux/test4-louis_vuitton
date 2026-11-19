package com.vuitton.android.presentation.screen.connectivity.travel.detail;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.usecase.travel.DeleteTravelUseCase;
import com.vuitton.android.domain.usecase.travel.EditTravelUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.connectivity.travel.TravelUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.models.TravelTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.models.TravelTrackingUiModelKt;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B!\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModel;", "Lcom/vuitton/android/domain/usecase/travel/DeleteTravelUseCase;", "deleteTravelUseCase", "Lcom/vuitton/android/domain/usecase/travel/EditTravelUseCase;", "editTravelUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Lcom/vuitton/android/domain/usecase/travel/DeleteTravelUseCase;Lcom/vuitton/android/domain/usecase/travel/EditTravelUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TravelDetailViewModelImpl extends ViewModel implements TravelDetailViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DeleteTravelUseCase f56392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EditTravelUseCase f56393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnalyticsTracker f56394c;
    public final MutableLiveData d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableLiveData f56395e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableLiveData f56396f;
    public final MutableLiveData g;

    @Inject
    public TravelDetailViewModelImpl(DeleteTravelUseCase deleteTravelUseCase, EditTravelUseCase editTravelUseCase, AnalyticsTracker analyticsTracker) {
        deleteTravelUseCase.getClass();
        editTravelUseCase.getClass();
        analyticsTracker.getClass();
        this.f56392a = deleteTravelUseCase;
        this.f56393b = editTravelUseCase;
        this.f56394c = analyticsTracker;
        MutableLiveData mutableLiveData = new MutableLiveData(null);
        this.d = mutableLiveData;
        this.f56395e = mutableLiveData;
        MutableLiveData mutableLiveData2 = new MutableLiveData();
        this.f56396f = mutableLiveData2;
        this.g = mutableLiveData2;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailViewModel
    /* JADX INFO: renamed from: R5, reason: from getter */
    public final MutableLiveData getF56395e() {
        return this.f56395e;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailViewModel
    public final void Xa(String str) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new TravelDetailViewModelImpl$deleteTravel$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailViewModel
    /* JADX INFO: renamed from: h6, reason: from getter */
    public final MutableLiveData getG() {
        return this.g;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailViewModel
    public final void t0(TravelTrackingUiModel travelTrackingUiModel) {
        this.f56394c.a(TravelTrackingUiModelKt.a(travelTrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailViewModel
    public final void u7(TravelUiModel travelUiModel) {
        travelUiModel.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new TravelDetailViewModelImpl$editTravel$1(this, travelUiModel, null), 3);
    }
}
