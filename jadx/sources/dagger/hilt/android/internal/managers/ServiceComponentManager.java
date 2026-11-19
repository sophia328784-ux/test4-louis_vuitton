package dagger.hilt.android.internal.managers;

import android.app.Application;
import android.app.Service;
import dagger.hilt.EntryPoints;
import dagger.hilt.android.components.ServiceComponent;
import dagger.hilt.android.internal.builders.ServiceComponentBuilder;
import dagger.hilt.internal.GeneratedComponentManager;
import dagger.hilt.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class ServiceComponentManager implements GeneratedComponentManager<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Service f68517b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ServiceComponent f68518c;

    public interface ServiceComponentBuilderEntryPoint {
        ServiceComponentBuilder a();
    }

    public ServiceComponentManager(Service service) {
        this.f68517b = service;
    }

    @Override // dagger.hilt.internal.GeneratedComponentManager
    public final Object C() {
        if (this.f68518c == null) {
            Service service = this.f68517b;
            Application application = service.getApplication();
            Preconditions.a(application instanceof GeneratedComponentManager, "Hilt service must be attached to an @HiltAndroidApp Application. Found: %s", application.getClass());
            ServiceComponentBuilder serviceComponentBuilderA = ((ServiceComponentBuilderEntryPoint) EntryPoints.a(ServiceComponentBuilderEntryPoint.class, application)).a();
            serviceComponentBuilderA.a(service);
            this.f68518c = serviceComponentBuilderA.build();
        }
        return this.f68518c;
    }
}
