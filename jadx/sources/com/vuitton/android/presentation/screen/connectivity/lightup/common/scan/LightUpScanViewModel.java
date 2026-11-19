package com.vuitton.android.presentation.screen.connectivity.lightup.common.scan;

import com.vuitton.android.domain.usecase.connectivity.lightup.GetLightUpObjectsUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.connectivity.LVViewModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModelKt;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanView;", "Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpObjectsUseCase;", "getLightUpObjectsUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpObjectsUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LightUpScanViewModel extends LVViewModel<LightUpScanView> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f56196e = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetLightUpObjectsUseCase f56197c;
    public final AnalyticsTracker d;

    @Inject
    public LightUpScanViewModel(GetLightUpObjectsUseCase getLightUpObjectsUseCase, AnalyticsTracker analyticsTracker) {
        getLightUpObjectsUseCase.getClass();
        analyticsTracker.getClass();
        this.f56197c = getLightUpObjectsUseCase;
        this.d = analyticsTracker;
    }

    public final void Cc() {
        LVViewModel.Bc(this, null, new LightUpScanViewModel$getPairedObjects$1(this, null), 3);
    }

    public final void Dc(LVLightUpTrackingUiModel lVLightUpTrackingUiModel) {
        this.d.a(LVLightUpTrackingUiModelKt.a(lVLightUpTrackingUiModel));
    }
}
