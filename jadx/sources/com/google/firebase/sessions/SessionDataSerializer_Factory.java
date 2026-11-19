package com.google.firebase.sessions;

import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class SessionDataSerializer_Factory implements Factory<SessionDataSerializer> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f35465a;

    public SessionDataSerializer_Factory(Provider provider) {
        this.f35465a = provider;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new SessionDataSerializer((SessionGenerator) this.f35465a.get());
    }
}
