package com.google.firebase.sessions;

import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class SessionsActivityLifecycleCallbacks_Factory implements Factory<SessionsActivityLifecycleCallbacks> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f35503a;

    public SessionsActivityLifecycleCallbacks_Factory(Provider provider) {
        this.f35503a = provider;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new SessionsActivityLifecycleCallbacks((SharedSessionRepository) this.f35503a.get());
    }
}
