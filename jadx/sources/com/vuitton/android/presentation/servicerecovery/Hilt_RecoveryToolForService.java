package com.vuitton.android.presentation.servicerecovery;

import android.app.Service;
import dagger.hilt.android.internal.managers.ServiceComponentManager;
import dagger.hilt.internal.GeneratedComponentManagerHolder;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_RecoveryToolForService extends Service implements GeneratedComponentManagerHolder {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile ServiceComponentManager f65802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f65803c = new Object();
    private boolean d = false;

    @Override // dagger.hilt.internal.GeneratedComponentManager
    public final Object C() {
        return b().C();
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ServiceComponentManager b() {
        if (this.f65802b == null) {
            synchronized (this.f65803c) {
                try {
                    if (this.f65802b == null) {
                        this.f65802b = c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f65802b;
    }

    public ServiceComponentManager c() {
        return new ServiceComponentManager(this);
    }

    public void d() {
        if (this.d) {
            return;
        }
        this.d = true;
        ((RecoveryToolForService_GeneratedInjector) C()).b((RecoveryToolForService) this);
    }

    @Override // android.app.Service
    public void onCreate() {
        d();
        super.onCreate();
    }
}
