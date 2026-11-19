package com.google.android.datatransport.runtime.scheduling;

import android.content.Context;
import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoScheduler;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.time.Clock;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class SchedulingModule_WorkSchedulerFactory implements Factory<WorkScheduler> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f28051a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Provider f28052b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Provider f28053c;
    public final Provider d;

    public SchedulingModule_WorkSchedulerFactory(Provider<Context> provider, Provider<EventStore> provider2, Provider<SchedulerConfig> provider3, Provider<Clock> provider4) {
        this.f28051a = provider;
        this.f28052b = provider2;
        this.f28053c = provider3;
        this.d = provider4;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        Context context = (Context) this.f28051a.get();
        EventStore eventStore = (EventStore) this.f28052b.get();
        SchedulerConfig schedulerConfig = (SchedulerConfig) this.f28053c.get();
        return new JobInfoScheduler(context, eventStore, schedulerConfig);
    }
}
