package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.usecase.connectivity.trunkspeaker.GetTrunkSpeakerFaqUseCase;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailViewModel;", "Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerFaqUseCase;", "getTrunkSpeakerFaqUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerFaqUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WifiDeviceDetailViewModelImpl extends ViewModel implements WifiDeviceDetailViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetTrunkSpeakerFaqUseCase f56520a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableLiveData f56521b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableLiveData f56522c;

    @Inject
    public WifiDeviceDetailViewModelImpl(GetTrunkSpeakerFaqUseCase getTrunkSpeakerFaqUseCase) {
        getTrunkSpeakerFaqUseCase.getClass();
        this.f56520a = getTrunkSpeakerFaqUseCase;
        MutableLiveData mutableLiveData = new MutableLiveData();
        this.f56521b = mutableLiveData;
        this.f56522c = mutableLiveData;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailViewModel
    /* JADX INFO: renamed from: h0 */
    public final void mo86h0() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new WifiDeviceDetailViewModelImpl$getTrunkSpeakerFaq$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailViewModel
    /* JADX INFO: renamed from: h0, reason: from getter */
    public final MutableLiveData getF56522c() {
        return this.f56522c;
    }
}
