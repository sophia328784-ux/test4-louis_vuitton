package com.vuitton.android.presentation.screen.connectivity.lightup.common.detail;

import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.usecase.connectivity.lightup.DeleteLightUpProductUseCase;
import com.vuitton.android.domain.usecase.connectivity.lightup.UpdateLightUpProductUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.connectivity.LVViewModel;
import com.vuitton.android.presentation.screen.connectivity.LightUpProductUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModelKt;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B)\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailView;", "Lcom/vuitton/android/domain/usecase/connectivity/lightup/DeleteLightUpProductUseCase;", "deleteLightUpProductUseCase", "Lcom/vuitton/android/domain/usecase/connectivity/lightup/UpdateLightUpProductUseCase;", "updateLightUpProductUseCase", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Lcom/vuitton/android/domain/usecase/connectivity/lightup/DeleteLightUpProductUseCase;Lcom/vuitton/android/domain/usecase/connectivity/lightup/UpdateLightUpProductUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LightUpDetailViewModel extends LVViewModel<LightUpDetailView> {
    public static final /* synthetic */ int g = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DeleteLightUpProductUseCase f56131c;
    public final UpdateLightUpProductUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LVEventSender f56132e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AnalyticsTracker f56133f;

    @Inject
    public LightUpDetailViewModel(DeleteLightUpProductUseCase deleteLightUpProductUseCase, UpdateLightUpProductUseCase updateLightUpProductUseCase, LVEventSender lVEventSender, AnalyticsTracker analyticsTracker) {
        deleteLightUpProductUseCase.getClass();
        updateLightUpProductUseCase.getClass();
        lVEventSender.getClass();
        analyticsTracker.getClass();
        this.f56131c = deleteLightUpProductUseCase;
        this.d = updateLightUpProductUseCase;
        this.f56132e = lVEventSender;
        this.f56133f = analyticsTracker;
    }

    public final void Cc(LVLightUpTrackingUiModel lVLightUpTrackingUiModel) {
        this.f56133f.a(LVLightUpTrackingUiModelKt.a(lVLightUpTrackingUiModel));
    }

    public final void Dc(LightUpProductUiModel lightUpProductUiModel) {
        lightUpProductUiModel.getClass();
        LVViewModel.Bc(this, null, new LightUpDetailViewModel$updateLightUpProduct$1(this, lightUpProductUiModel, null), 3);
    }
}
