package com.google.firebase.components;

import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
import defpackage.ln;
import defpackage.p3;
import defpackage.tg0;

/* JADX INFO: loaded from: classes2.dex */
class OptionalProvider<T> implements Provider<T>, Deferred<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final tg0 f34415c = new tg0(6);
    public static final ln d = new ln(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Deferred.DeferredHandler f34416a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Provider f34417b;

    public OptionalProvider(tg0 tg0Var, Provider provider) {
        this.f34416a = tg0Var;
        this.f34417b = provider;
    }

    @Override // com.google.firebase.inject.Deferred
    public final void a(Deferred.DeferredHandler deferredHandler) {
        Provider provider;
        Provider provider2;
        Provider provider3 = this.f34417b;
        ln lnVar = d;
        if (provider3 != lnVar) {
            deferredHandler.g(provider3);
            return;
        }
        synchronized (this) {
            provider = this.f34417b;
            if (provider != lnVar) {
                provider2 = provider;
            } else {
                this.f34416a = new p3(this.f34416a, deferredHandler, 19);
                provider2 = null;
            }
        }
        if (provider2 != null) {
            deferredHandler.g(provider);
        }
    }

    @Override // com.google.firebase.inject.Provider
    public final Object get() {
        return this.f34417b.get();
    }
}
