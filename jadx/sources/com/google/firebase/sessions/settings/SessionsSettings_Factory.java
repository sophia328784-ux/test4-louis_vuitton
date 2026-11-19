package com.google.firebase.sessions.settings;

import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class SessionsSettings_Factory implements Factory<SessionsSettings> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f35598a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Provider f35599b;

    public SessionsSettings_Factory(Provider provider, Provider provider2) {
        this.f35598a = provider;
        this.f35599b = provider2;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new SessionsSettings((SettingsProvider) this.f35598a.get(), (SettingsProvider) this.f35599b.get());
    }
}
