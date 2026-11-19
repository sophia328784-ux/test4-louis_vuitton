package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.dagger.internal.InstanceFactory;
import com.google.android.datatransport.runtime.scheduling.DefaultScheduler_Factory;
import com.google.android.datatransport.runtime.scheduling.SchedulingModule_WorkSchedulerFactory;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader_Factory;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer_Factory;
import com.google.android.datatransport.runtime.scheduling.persistence.SchemaManager_Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
final class DaggerTransportRuntimeComponent$TransportRuntimeComponentImpl extends TransportRuntimeComponent {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Provider f27962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public InstanceFactory f27963c;
    public Provider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SchemaManager_Factory f27964e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Provider f27965f;
    public Provider g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public SchedulingModule_WorkSchedulerFactory f27966h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public DefaultScheduler_Factory f27967i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Uploader_Factory f27968j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public WorkInitializer_Factory f27969k;
    public Provider l;
}
