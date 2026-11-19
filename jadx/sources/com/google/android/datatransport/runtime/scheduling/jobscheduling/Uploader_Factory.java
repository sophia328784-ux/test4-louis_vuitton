package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import com.google.android.datatransport.runtime.backends.BackendRegistry;
import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.scheduling.persistence.ClientHealthMetricsStore;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.android.datatransport.runtime.time.Clock;
import java.util.concurrent.Executor;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class Uploader_Factory implements Factory<Uploader> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f28076a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Provider f28077b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Provider f28078c;
    public final Provider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Provider f28079e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Provider f28080f;
    public final Provider g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Provider f28081h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Provider f28082i;

    public Uploader_Factory(Provider<Context> provider, Provider<BackendRegistry> provider2, Provider<EventStore> provider3, Provider<WorkScheduler> provider4, Provider<Executor> provider5, Provider<SynchronizationGuard> provider6, Provider<Clock> provider7, Provider<Clock> provider8, Provider<ClientHealthMetricsStore> provider9) {
        this.f28076a = provider;
        this.f28077b = provider2;
        this.f28078c = provider3;
        this.d = provider4;
        this.f28079e = provider5;
        this.f28080f = provider6;
        this.g = provider7;
        this.f28081h = provider8;
        this.f28082i = provider9;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new Uploader((Context) this.f28076a.get(), (BackendRegistry) this.f28077b.get(), (EventStore) this.f28078c.get(), (WorkScheduler) this.d.get(), (Executor) this.f28079e.get(), (SynchronizationGuard) this.f28080f.get(), (Clock) this.g.get(), (Clock) this.f28081h.get(), (ClientHealthMetricsStore) this.f28082i.get());
    }
}
