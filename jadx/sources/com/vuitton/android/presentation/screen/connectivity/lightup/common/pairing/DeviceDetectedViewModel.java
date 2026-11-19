package com.vuitton.android.presentation.screen.connectivity.lightup.common.pairing;

import androidx.lifecycle.MutableLiveData;
import com.vuitton.android.domain.usecase.connectivity.lightup.InsertLightUpProductUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.connectivity.LVViewModel;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedView;", "Lcom/vuitton/android/domain/usecase/connectivity/lightup/InsertLightUpProductUseCase;", "insertLightUpProductUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Lcom/vuitton/android/domain/usecase/connectivity/lightup/InsertLightUpProductUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DeviceDetectedViewModel extends LVViewModel<DeviceDetectedView> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InsertLightUpProductUseCase f56180c;
    public final AnalyticsTracker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableLiveData f56181e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableLiveData f56182f;

    @Inject
    public DeviceDetectedViewModel(InsertLightUpProductUseCase insertLightUpProductUseCase, AnalyticsTracker analyticsTracker) {
        insertLightUpProductUseCase.getClass();
        analyticsTracker.getClass();
        this.f56180c = insertLightUpProductUseCase;
        this.d = analyticsTracker;
        this.f56181e = new MutableLiveData();
        this.f56182f = new MutableLiveData();
    }
}
