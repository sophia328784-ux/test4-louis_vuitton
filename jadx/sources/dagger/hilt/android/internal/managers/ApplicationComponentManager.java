package dagger.hilt.android.internal.managers;

import dagger.hilt.internal.GeneratedComponentManager;

/* JADX INFO: loaded from: classes3.dex */
public final class ApplicationComponentManager implements GeneratedComponentManager<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Object f68511b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f68512c = new Object();
    public final ComponentSupplier d;

    public ApplicationComponentManager(ComponentSupplier componentSupplier) {
        this.d = componentSupplier;
    }

    @Override // dagger.hilt.internal.GeneratedComponentManager
    public final Object C() {
        if (this.f68511b == null) {
            synchronized (this.f68512c) {
                try {
                    if (this.f68511b == null) {
                        this.f68511b = this.d.get();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f68511b;
    }
}
