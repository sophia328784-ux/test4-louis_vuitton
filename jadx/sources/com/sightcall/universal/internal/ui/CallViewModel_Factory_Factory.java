package com.sightcall.universal.internal.ui;

import com.sightcall.gpslocation.GpsRepository;
import com.sightcall.session.SessionRepository;
import dagger.internal.Factory;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class CallViewModel_Factory_Factory implements Factory<CallViewModel.Factory> {
    private final Provider<GpsRepository> gpsRepositoryProvider;
    private final Provider<SessionRepository> sessionRepositoryProvider;

    private CallViewModel_Factory_Factory(Provider<SessionRepository> provider, Provider<GpsRepository> provider2) {
        this.sessionRepositoryProvider = provider;
        this.gpsRepositoryProvider = provider2;
    }

    public static CallViewModel_Factory_Factory create(Provider<SessionRepository> provider, Provider<GpsRepository> provider2) {
        return new CallViewModel_Factory_Factory(provider, provider2);
    }

    public static CallViewModel.Factory newInstance(SessionRepository sessionRepository, GpsRepository gpsRepository) {
        return new CallViewModel.Factory(sessionRepository, gpsRepository);
    }

    @Override // javax.inject.Provider
    public CallViewModel.Factory get() {
        return newInstance((SessionRepository) this.sessionRepositoryProvider.get(), (GpsRepository) this.gpsRepositoryProvider.get());
    }
}
