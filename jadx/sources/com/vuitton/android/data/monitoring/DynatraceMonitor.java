package com.vuitton.android.data.monitoring;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.analytic.DeviceIdLocalDataSource;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorActionName;
import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/monitoring/DynatraceMonitor;", "Lcom/vuitton/android/domain/monitoring/Monitor;", "Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;", "deviceIdLocalDataSource", "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;", "buildConfigProvider", "<init>", "(Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DynatraceMonitor implements Monitor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DeviceIdLocalDataSource f46971a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BuildConfigProvider f46972b;

    @Inject
    public DynatraceMonitor(DeviceIdLocalDataSource deviceIdLocalDataSource, BuildConfigProvider buildConfigProvider) {
        deviceIdLocalDataSource.getClass();
        buildConfigProvider.getClass();
        this.f46971a = deviceIdLocalDataSource;
        this.f46972b = buildConfigProvider;
    }

    @Override // com.vuitton.android.domain.monitoring.Monitor
    public final DynatraceMonitorAction a(InAppDispatch inAppDispatch, MonitorActionName monitorActionName) {
        monitorActionName.getClass();
        String str = (String) BuildersKt.e(EmptyCoroutineContext.f71840b, new DynatraceMonitor$startRootAction$deviceId$1(this, null));
        this.f46972b.getClass();
        return new DynatraceMonitorAction(inAppDispatch, monitorActionName, str, false);
    }
}
