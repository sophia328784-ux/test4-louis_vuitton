package com.google.android.datatransport.runtime;

import android.content.Context;
import com.google.android.datatransport.runtime.backends.CreationContextFactory_Factory;
import com.google.android.datatransport.runtime.backends.MetadataBackendRegistry_Factory;
import com.google.android.datatransport.runtime.dagger.internal.DoubleCheck;
import com.google.android.datatransport.runtime.dagger.internal.InstanceFactory;
import com.google.android.datatransport.runtime.scheduling.DefaultScheduler_Factory;
import com.google.android.datatransport.runtime.scheduling.SchedulingConfigModule_ConfigFactory;
import com.google.android.datatransport.runtime.scheduling.SchedulingModule_WorkSchedulerFactory;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader_Factory;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer_Factory;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStoreModule_DbNameFactory;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStoreModule_PackageNameFactory;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStoreModule_SchemaVersionFactory;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStoreModule_StoreConfigFactory;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore_Factory;
import com.google.android.datatransport.runtime.scheduling.persistence.SchemaManager_Factory;
import com.google.android.datatransport.runtime.time.TimeModule_EventClockFactory;
import com.google.android.datatransport.runtime.time.TimeModule_UptimeClockFactory;
import defpackage.no0;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
final class DaggerTransportRuntimeComponent$Builder implements TransportRuntimeComponent.Builder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f27961a;

    public final DaggerTransportRuntimeComponent$TransportRuntimeComponentImpl a() {
        Context context = this.f27961a;
        if (context == null) {
            no0.l(Context.class.getCanonicalName(), " must be set");
            return null;
        }
        DaggerTransportRuntimeComponent$TransportRuntimeComponentImpl daggerTransportRuntimeComponent$TransportRuntimeComponentImpl = new DaggerTransportRuntimeComponent$TransportRuntimeComponentImpl();
        daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.f27962b = DoubleCheck.a(ExecutionModule_ExecutorFactory.InstanceHolder.f27972a);
        InstanceFactory instanceFactory = new InstanceFactory(context);
        daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.f27963c = instanceFactory;
        daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.d = DoubleCheck.a(new MetadataBackendRegistry_Factory(daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.f27963c, new CreationContextFactory_Factory(instanceFactory, TimeModule_EventClockFactory.a(), TimeModule_UptimeClockFactory.a())));
        daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.f27964e = new SchemaManager_Factory(daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.f27963c, EventStoreModule_DbNameFactory.a(), EventStoreModule_SchemaVersionFactory.a());
        daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.f27965f = DoubleCheck.a(new EventStoreModule_PackageNameFactory(daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.f27963c));
        daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.g = DoubleCheck.a(new SQLiteEventStore_Factory(TimeModule_EventClockFactory.a(), TimeModule_UptimeClockFactory.a(), EventStoreModule_StoreConfigFactory.a(), daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.f27964e, daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.f27965f));
        SchedulingModule_WorkSchedulerFactory schedulingModule_WorkSchedulerFactory = new SchedulingModule_WorkSchedulerFactory(daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.f27963c, daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.g, new SchedulingConfigModule_ConfigFactory(TimeModule_EventClockFactory.a()), TimeModule_UptimeClockFactory.a());
        daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.f27966h = schedulingModule_WorkSchedulerFactory;
        Provider provider = daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.f27962b;
        Provider provider2 = daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.d;
        Provider provider3 = daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.g;
        daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.f27967i = new DefaultScheduler_Factory(provider, provider2, schedulingModule_WorkSchedulerFactory, provider3, provider3);
        InstanceFactory instanceFactory2 = daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.f27963c;
        Provider provider4 = daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.d;
        Provider provider5 = daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.g;
        daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.f27968j = new Uploader_Factory(instanceFactory2, provider4, provider5, daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.f27966h, daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.f27962b, provider5, TimeModule_EventClockFactory.a(), TimeModule_UptimeClockFactory.a(), daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.g);
        Provider provider6 = daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.f27962b;
        Provider provider7 = daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.g;
        daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.f27969k = new WorkInitializer_Factory(provider6, provider7, daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.f27966h, provider7);
        daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.l = DoubleCheck.a(new TransportRuntime_Factory(TimeModule_EventClockFactory.a(), TimeModule_UptimeClockFactory.a(), daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.f27967i, daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.f27968j, daggerTransportRuntimeComponent$TransportRuntimeComponentImpl.f27969k));
        return daggerTransportRuntimeComponent$TransportRuntimeComponentImpl;
    }
}
