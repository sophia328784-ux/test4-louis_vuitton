package com.dynatrace.android.agent.mixed;

import com.dynatrace.agent.metrics.AppVersion;
import com.dynatrace.agent.metrics.SecondGenMetricsProvider;
import com.dynatrace.android.agent.metrics.AppVersionTracker;
import com.dynatrace.android.agent.metrics.BatteryTracker;

/* JADX INFO: loaded from: classes2.dex */
public class SecondGenMetricsProviderImpl implements SecondGenMetricsProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AppVersionTracker f27575a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BatteryTracker f27576b;

    public SecondGenMetricsProviderImpl(AppVersionTracker appVersionTracker, BatteryTracker batteryTracker) {
        this.f27575a = appVersionTracker;
        this.f27576b = batteryTracker;
    }

    @Override // com.dynatrace.agent.metrics.SecondGenMetricsProvider
    public final AppVersion a() {
        return this.f27575a.a();
    }

    @Override // com.dynatrace.agent.metrics.SecondGenMetricsProvider
    public final int b() {
        return this.f27576b.a();
    }
}
