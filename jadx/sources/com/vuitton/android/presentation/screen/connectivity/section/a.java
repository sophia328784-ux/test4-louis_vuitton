package com.vuitton.android.presentation.screen.connectivity.section;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.connectivity.models.ConnectivityTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.models.ConnectivityTrackingUiModelKt;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f56317b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConnectivitySectionDetailFragment f56318c;

    public /* synthetic */ a(ConnectivitySectionDetailFragment connectivitySectionDetailFragment, int i2) {
        this.f56317b = i2;
        this.f56318c = connectivitySectionDetailFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f56317b) {
            case 0:
                ConnectivitySectionDetailFragment.Companion companion = ConnectivitySectionDetailFragment.I;
                ConnectivitySectionDetailFragment connectivitySectionDetailFragment = this.f56318c;
                connectivitySectionDetailFragment.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.DiscoverVideoClickEvent(LVLightUpDeviceType.KEEPALL)));
                ConnectivitySectionDetailViewModelImpl connectivitySectionDetailViewModelImplS = connectivitySectionDetailFragment.S();
                BuildersKt.c(ViewModelKt.a(connectivitySectionDetailViewModelImplS), null, null, new ConnectivitySectionDetailViewModelImpl$getLightUpVideo$1(connectivitySectionDetailViewModelImplS, null), 3);
                connectivitySectionDetailFragment.S().s.observe(connectivitySectionDetailFragment.getViewLifecycleOwner(), new ConnectivitySectionDetailFragment$sam$androidx_lifecycle_Observer$0(new ConnectivitySectionDetailFragment$getKeepAllVideoView$1$1$1(1, connectivitySectionDetailFragment, ConnectivitySectionDetailFragment.class, "observeLightUpVideoResult", "observeLightUpVideoResult(Ljava/lang/Object;)V", 0)));
                break;
            case 1:
                ConnectivitySectionDetailFragment.Companion companion2 = ConnectivitySectionDetailFragment.I;
                ConnectivitySectionDetailFragment connectivitySectionDetailFragment2 = this.f56318c;
                ConnectivitySectionDetailViewModelImpl connectivitySectionDetailViewModelImplS2 = connectivitySectionDetailFragment2.S();
                BuildersKt.c(ViewModelKt.a(connectivitySectionDetailViewModelImplS2), null, null, new ConnectivitySectionDetailViewModelImpl$getWatchVideo$1(connectivitySectionDetailViewModelImplS2, null), 3);
                connectivitySectionDetailFragment2.S().m.observe(connectivitySectionDetailFragment2.getViewLifecycleOwner(), new ConnectivitySectionDetailFragment$sam$androidx_lifecycle_Observer$0(new ConnectivitySectionDetailFragment$getDiscoverWatchVideoView$1$1$1(1, connectivitySectionDetailFragment2, ConnectivitySectionDetailFragment.class, "observeWatchVideoResult", "observeWatchVideoResult(Ljava/lang/Object;)V", 0)));
                break;
            case 2:
                ConnectivitySectionDetailFragment.Companion companion3 = ConnectivitySectionDetailFragment.I;
                ConnectivitySectionDetailFragment connectivitySectionDetailFragment3 = this.f56318c;
                connectivitySectionDetailFragment3.S().f56278k.a(ConnectivityTrackingUiModelKt.a(new ConnectivityTrackingUiModel.ClickOnDiscoverEvent("Discover our video", "Earphones")));
                ConnectivitySectionDetailViewModelImpl connectivitySectionDetailViewModelImplS3 = connectivitySectionDetailFragment3.S();
                BuildersKt.c(ViewModelKt.a(connectivitySectionDetailViewModelImplS3), null, null, new ConnectivitySectionDetailViewModelImpl$getEarphoneVideo$1(connectivitySectionDetailViewModelImplS3, null), 3);
                connectivitySectionDetailFragment3.S().o.observe(connectivitySectionDetailFragment3.getViewLifecycleOwner(), new ConnectivitySectionDetailFragment$sam$androidx_lifecycle_Observer$0(new ConnectivitySectionDetailFragment$getEarphoneVideoView$1$1$1(1, connectivitySectionDetailFragment3, ConnectivitySectionDetailFragment.class, "observeEarphoneVideoResult", "observeEarphoneVideoResult(Ljava/lang/Object;)V", 0)));
                break;
            default:
                ConnectivitySectionDetailFragment.Companion companion4 = ConnectivitySectionDetailFragment.I;
                ConnectivitySectionDetailFragment connectivitySectionDetailFragment4 = this.f56318c;
                connectivitySectionDetailFragment4.S().f56278k.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.DiscoverVideoClickEvent(LVLightUpDeviceType.X408PAIR)));
                ConnectivitySectionDetailViewModelImpl connectivitySectionDetailViewModelImplS4 = connectivitySectionDetailFragment4.S();
                BuildersKt.c(ViewModelKt.a(connectivitySectionDetailViewModelImplS4), null, null, new ConnectivitySectionDetailViewModelImpl$getLightUpVideo$1(connectivitySectionDetailViewModelImplS4, null), 3);
                connectivitySectionDetailFragment4.S().s.observe(connectivitySectionDetailFragment4.getViewLifecycleOwner(), new ConnectivitySectionDetailFragment$sam$androidx_lifecycle_Observer$0(new ConnectivitySectionDetailFragment$getSneakersVideoView$1$1$1(1, connectivitySectionDetailFragment4, ConnectivitySectionDetailFragment.class, "observeLightUpVideoResult", "observeLightUpVideoResult(Ljava/lang/Object;)V", 0)));
                break;
        }
        return Unit.f71739a;
    }
}
