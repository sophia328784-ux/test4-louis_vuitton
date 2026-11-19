package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.scheduling.Scheduler;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer;
import com.google.android.datatransport.runtime.time.Clock;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class TransportRuntime_Factory implements Factory<TransportRuntime> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f27986a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Provider f27987b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Provider f27988c;
    public final Provider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Provider f27989e;

    public TransportRuntime_Factory(Provider<Clock> provider, Provider<Clock> provider2, Provider<Scheduler> provider3, Provider<Uploader> provider4, Provider<WorkInitializer> provider5) {
        this.f27986a = provider;
        this.f27987b = provider2;
        this.f27988c = provider3;
        this.d = provider4;
        this.f27989e = provider5;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new TransportRuntime((Clock) this.f27986a.get(), (Clock) this.f27987b.get(), (Scheduler) this.f27988c.get(), (Uploader) this.d.get(), (WorkInitializer) this.f27989e.get());
    }
}
