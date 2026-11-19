package com.vuitton.android.presentation.screen.connectivity.travel.airport;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.usecase.travel.GetAirportListUseCase;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListViewModel;", "Lcom/vuitton/android/domain/usecase/travel/GetAirportListUseCase;", "getAirportListUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/travel/GetAirportListUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AirportListViewModelImpl extends ViewModel implements AirportListViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetAirportListUseCase f56374a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableLiveData f56375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableLiveData f56376c;
    public final MutableLiveData d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableLiveData f56377e;

    @Inject
    public AirportListViewModelImpl(GetAirportListUseCase getAirportListUseCase) {
        getAirportListUseCase.getClass();
        this.f56374a = getAirportListUseCase;
        MutableLiveData mutableLiveData = new MutableLiveData();
        this.f56375b = mutableLiveData;
        this.f56376c = mutableLiveData;
        MutableLiveData mutableLiveData2 = new MutableLiveData();
        this.d = mutableLiveData2;
        this.f56377e = mutableLiveData2;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListViewModel
    /* JADX INFO: renamed from: W2, reason: from getter */
    public final MutableLiveData getF56377e() {
        return this.f56377e;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListViewModel
    public final void pc() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new AirportListViewModelImpl$getAirports$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListViewModel
    /* JADX INFO: renamed from: z7, reason: from getter */
    public final MutableLiveData getF56376c() {
        return this.f56376c;
    }
}
