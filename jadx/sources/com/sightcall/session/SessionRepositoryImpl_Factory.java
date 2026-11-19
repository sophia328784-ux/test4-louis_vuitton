package com.sightcall.session;

import com.sightcall.session.datasource.reference.ReferenceDataSource;
import dagger.internal.Factory;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SessionRepositoryImpl_Factory implements Factory<SessionRepositoryImpl> {
    private final Provider<ReferenceDataSource> referenceDataSourceProvider;

    private SessionRepositoryImpl_Factory(Provider<ReferenceDataSource> provider) {
        this.referenceDataSourceProvider = provider;
    }

    public static SessionRepositoryImpl_Factory create(Provider<ReferenceDataSource> provider) {
        return new SessionRepositoryImpl_Factory(provider);
    }

    public static SessionRepositoryImpl newInstance(ReferenceDataSource referenceDataSource) {
        return new SessionRepositoryImpl(referenceDataSource);
    }

    @Override // javax.inject.Provider
    public SessionRepositoryImpl get() {
        return newInstance((ReferenceDataSource) this.referenceDataSourceProvider.get());
    }
}
