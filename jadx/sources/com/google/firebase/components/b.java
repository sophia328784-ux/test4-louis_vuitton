package com.google.firebase.components;

import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f34429b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Provider f34430c;
    public final /* synthetic */ Provider d;

    public /* synthetic */ b(Provider provider, Provider provider2, int i2) {
        this.f34429b = i2;
        this.d = provider;
        this.f34430c = provider2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Deferred.DeferredHandler deferredHandler;
        switch (this.f34429b) {
            case 0:
                OptionalProvider optionalProvider = (OptionalProvider) this.d;
                Provider provider = this.f34430c;
                if (optionalProvider.f34417b != OptionalProvider.d) {
                    md.k("provide() can be called only once.");
                    return;
                }
                synchronized (optionalProvider) {
                    deferredHandler = optionalProvider.f34416a;
                    optionalProvider.f34416a = null;
                    optionalProvider.f34417b = provider;
                    break;
                }
                deferredHandler.g(provider);
                return;
            default:
                LazySet lazySet = (LazySet) this.d;
                Provider provider2 = this.f34430c;
                synchronized (lazySet) {
                    try {
                        if (lazySet.f34414b == null) {
                            lazySet.f34413a.add(provider2);
                        } else {
                            lazySet.f34414b.add(provider2.get());
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }
}
