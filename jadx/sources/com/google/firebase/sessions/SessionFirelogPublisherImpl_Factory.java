package com.google.firebase.sessions;

import com.google.firebase.FirebaseApp;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;
import com.google.firebase.sessions.settings.SessionsSettings;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes2.dex */
public final class SessionFirelogPublisherImpl_Factory implements Factory<SessionFirelogPublisherImpl> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f35489a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Provider f35490b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Provider f35491c;
    public final Provider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Provider f35492e;

    public SessionFirelogPublisherImpl_Factory(Provider provider, Provider provider2, Provider provider3, Provider provider4, Provider provider5) {
        this.f35489a = provider;
        this.f35490b = provider2;
        this.f35491c = provider3;
        this.d = provider4;
        this.f35492e = provider5;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new SessionFirelogPublisherImpl((FirebaseApp) this.f35489a.get(), (FirebaseInstallationsApi) this.f35490b.get(), (SessionsSettings) this.f35491c.get(), (EventGDTLoggerInterface) this.d.get(), (CoroutineContext) this.f35492e.get());
    }
}
