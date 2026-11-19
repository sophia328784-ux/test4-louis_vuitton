package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public class WorkInitializer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Executor f28083a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EventStore f28084b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WorkScheduler f28085c;
    public final SynchronizationGuard d;

    public WorkInitializer(Executor executor, EventStore eventStore, WorkScheduler workScheduler, SynchronizationGuard synchronizationGuard) {
        this.f28083a = executor;
        this.f28084b = eventStore;
        this.f28085c = workScheduler;
        this.d = synchronizationGuard;
    }
}
