package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.google.android.datatransport.runtime.time.Clock;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class SchedulingConfigModule_ConfigFactory implements Factory<SchedulerConfig> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f28050a;

    public SchedulingConfigModule_ConfigFactory(Provider<Clock> provider) {
        this.f28050a = provider;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return SchedulerConfig.b((Clock) this.f28050a.get());
    }
}
