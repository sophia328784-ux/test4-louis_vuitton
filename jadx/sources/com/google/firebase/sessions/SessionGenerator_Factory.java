package com.google.firebase.sessions;

import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class SessionGenerator_Factory implements Factory<SessionGenerator> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f35495a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Provider f35496b;

    public SessionGenerator_Factory(Provider provider, Provider provider2) {
        this.f35495a = provider;
        this.f35496b = provider2;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new SessionGenerator((TimeProvider) this.f35495a.get(), (UuidGenerator) this.f35496b.get());
    }
}
