package com.sightcall.analytics;

import com.sightcall.analytics.datasource.AnalyticsUploadDatasource;
import dagger.internal.Factory;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class AnalyticsRepositoryImpl_Factory implements Factory<AnalyticsRepositoryImpl> {
    private final Provider<AnalyticsUploadDatasource> analyticsUploadDatasourceProvider;

    private AnalyticsRepositoryImpl_Factory(Provider<AnalyticsUploadDatasource> provider) {
        this.analyticsUploadDatasourceProvider = provider;
    }

    public static AnalyticsRepositoryImpl_Factory create(Provider<AnalyticsUploadDatasource> provider) {
        return new AnalyticsRepositoryImpl_Factory(provider);
    }

    public static AnalyticsRepositoryImpl newInstance(AnalyticsUploadDatasource analyticsUploadDatasource) {
        return new AnalyticsRepositoryImpl(analyticsUploadDatasource);
    }

    @Override // javax.inject.Provider
    public AnalyticsRepositoryImpl get() {
        return newInstance((AnalyticsUploadDatasource) this.analyticsUploadDatasourceProvider.get());
    }
}
