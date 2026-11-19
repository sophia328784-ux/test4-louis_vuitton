package com.vuitton.android.presentation.screen.connectivity.lightup.common.detail;

import com.vuitton.android.presentation.screen.connectivity.LVViewModel;
import com.vuitton.android.presentation.screen.connectivity.LightUpProductUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.lvlisteners.LVLightUpOpenDeviceListener;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModelKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$unPairProduct$1$1", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/lvlisteners/LVLightUpOpenDeviceListener;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LightUpDetailFragment$unPairProduct$1$1 implements LVLightUpOpenDeviceListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LightUpDetailFragment f56126a;

    public LightUpDetailFragment$unPairProduct$1$1(LightUpDetailFragment lightUpDetailFragment) {
        this.f56126a = lightUpDetailFragment;
    }

    public final void a() {
        LightUpDetailFragment lightUpDetailFragment = this.f56126a;
        LightUpProductUiModel lightUpProductUiModel = lightUpDetailFragment.lightUpProduct;
        if (lightUpProductUiModel != null) {
            lightUpDetailFragment.j0().f56133f.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.UnPairObjectEvent(lightUpProductUiModel.f55961c)));
            LightUpDetailViewModel lightUpDetailViewModelJ0 = lightUpDetailFragment.j0();
            String str = lightUpProductUiModel.f55960b;
            lightUpDetailViewModelJ0.getClass();
            str.getClass();
            LVViewModel.Bc(lightUpDetailViewModelJ0, new LightUpDetailViewModel$unPair$1(lightUpDetailViewModelJ0, null), new LightUpDetailViewModel$unPair$2(lightUpDetailViewModelJ0, str, null), 2);
        }
    }
}
