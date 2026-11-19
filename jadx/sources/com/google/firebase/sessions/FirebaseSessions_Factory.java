package com.google.firebase.sessions;

import com.google.firebase.FirebaseApp;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;
import com.google.firebase.sessions.settings.SessionsSettings;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes2.dex */
public final class FirebaseSessions_Factory implements Factory<FirebaseSessions> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f35438a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Provider f35439b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Provider f35440c;
    public final Provider d;

    public FirebaseSessions_Factory(Provider provider, Provider provider2, Provider provider3, Provider provider4) {
        this.f35438a = provider;
        this.f35439b = provider2;
        this.f35440c = provider3;
        this.d = provider4;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new FirebaseSessions((FirebaseApp) this.f35438a.get(), (SessionsSettings) this.f35439b.get(), (CoroutineContext) this.f35440c.get(), (SessionsActivityLifecycleCallbacks) this.d.get());
    }
}
