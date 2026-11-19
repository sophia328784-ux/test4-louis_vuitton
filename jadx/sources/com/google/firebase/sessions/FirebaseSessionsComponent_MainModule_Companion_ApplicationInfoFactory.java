package com.google.firebase.sessions;

import com.google.firebase.FirebaseApp;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class FirebaseSessionsComponent_MainModule_Companion_ApplicationInfoFactory implements Factory<ApplicationInfo> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f35430a;

    public FirebaseSessionsComponent_MainModule_Companion_ApplicationInfoFactory(Provider provider) {
        this.f35430a = provider;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        FirebaseApp firebaseApp = (FirebaseApp) this.f35430a.get();
        firebaseApp.getClass();
        SessionEvents sessionEvents = SessionEvents.f35473a;
        return SessionEvents.a(firebaseApp);
    }
}
