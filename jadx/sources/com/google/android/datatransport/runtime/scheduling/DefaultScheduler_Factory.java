package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.runtime.backends.BackendRegistry;
import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import java.util.concurrent.Executor;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class DefaultScheduler_Factory implements Factory<DefaultScheduler> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f28046a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Provider f28047b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Provider f28048c;
    public final Provider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Provider f28049e;

    public DefaultScheduler_Factory(Provider<Executor> provider, Provider<BackendRegistry> provider2, Provider<WorkScheduler> provider3, Provider<EventStore> provider4, Provider<SynchronizationGuard> provider5) {
        this.f28046a = provider;
        this.f28047b = provider2;
        this.f28048c = provider3;
        this.d = provider4;
        this.f28049e = provider5;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new DefaultScheduler((Executor) this.f28046a.get(), (BackendRegistry) this.f28047b.get(), (WorkScheduler) this.f28048c.get(), (EventStore) this.d.get(), (SynchronizationGuard) this.f28049e.get());
    }
}
