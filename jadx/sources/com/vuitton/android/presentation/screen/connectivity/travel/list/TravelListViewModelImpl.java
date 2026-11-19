package com.vuitton.android.presentation.screen.connectivity.travel.list;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.usecase.travel.GetTravelListUseCase;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListViewModel;", "Lcom/vuitton/android/domain/usecase/travel/GetTravelListUseCase;", "getTravelListUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/travel/GetTravelListUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TravelListViewModelImpl extends ViewModel implements TravelListViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetTravelListUseCase f56444a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableLiveData f56445b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableLiveData f56446c;

    @Inject
    public TravelListViewModelImpl(GetTravelListUseCase getTravelListUseCase) {
        getTravelListUseCase.getClass();
        this.f56444a = getTravelListUseCase;
        MutableLiveData mutableLiveData = new MutableLiveData();
        this.f56445b = mutableLiveData;
        this.f56446c = mutableLiveData;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListViewModel
    public final void p0() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new TravelListViewModelImpl$getTravels$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListViewModel
    /* JADX INFO: renamed from: w, reason: from getter */
    public final MutableLiveData getF56446c() {
        return this.f56446c;
    }
}
