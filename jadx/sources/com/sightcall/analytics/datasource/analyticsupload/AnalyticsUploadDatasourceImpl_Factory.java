package com.sightcall.analytics.datasource.analyticsupload;

import dagger.internal.Factory;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class AnalyticsUploadDatasourceImpl_Factory implements Factory<AnalyticsUploadDatasourceImpl> {
    private final Provider<AnalyticsUploadApi> analyticsUploadApiProvider;

    private AnalyticsUploadDatasourceImpl_Factory(Provider<AnalyticsUploadApi> provider) {
        this.analyticsUploadApiProvider = provider;
    }

    public static AnalyticsUploadDatasourceImpl_Factory create(Provider<AnalyticsUploadApi> provider) {
        return new AnalyticsUploadDatasourceImpl_Factory(provider);
    }

    public static AnalyticsUploadDatasourceImpl newInstance(AnalyticsUploadApi analyticsUploadApi) {
        return new AnalyticsUploadDatasourceImpl(analyticsUploadApi);
    }

    @Override // javax.inject.Provider
    public AnalyticsUploadDatasourceImpl get() {
        return newInstance((AnalyticsUploadApi) this.analyticsUploadApiProvider.get());
    }
}
