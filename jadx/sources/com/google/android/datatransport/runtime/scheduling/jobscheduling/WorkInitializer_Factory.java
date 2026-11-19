package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import java.util.concurrent.Executor;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class WorkInitializer_Factory implements Factory<WorkInitializer> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f28086a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Provider f28087b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Provider f28088c;
    public final Provider d;

    public WorkInitializer_Factory(Provider<Executor> provider, Provider<EventStore> provider2, Provider<WorkScheduler> provider3, Provider<SynchronizationGuard> provider4) {
        this.f28086a = provider;
        this.f28087b = provider2;
        this.f28088c = provider3;
        this.d = provider4;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new WorkInitializer((Executor) this.f28086a.get(), (EventStore) this.f28087b.get(), (WorkScheduler) this.f28088c.get(), (SynchronizationGuard) this.d.get());
    }
}
