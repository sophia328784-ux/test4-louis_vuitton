package com.vuitton.android.presentation.screen.maintenance;

import android.app.Service;
import dagger.hilt.android.internal.managers.ServiceComponentManager;
import dagger.hilt.internal.GeneratedComponentManagerHolder;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_CheckMaintenanceStatusService extends Service implements GeneratedComponentManagerHolder {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile ServiceComponentManager f59201b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f59202c = new Object();
    private boolean d = false;

    @Override // dagger.hilt.internal.GeneratedComponentManager
    public final Object C() {
        return b().C();
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ServiceComponentManager b() {
        if (this.f59201b == null) {
            synchronized (this.f59202c) {
                try {
                    if (this.f59201b == null) {
                        this.f59201b = c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f59201b;
    }

    public ServiceComponentManager c() {
        return new ServiceComponentManager(this);
    }

    public void d() {
        if (this.d) {
            return;
        }
        this.d = true;
        ((CheckMaintenanceStatusService_GeneratedInjector) C()).a((CheckMaintenanceStatusService) this);
    }

    @Override // android.app.Service
    public void onCreate() {
        d();
        super.onCreate();
    }
}
