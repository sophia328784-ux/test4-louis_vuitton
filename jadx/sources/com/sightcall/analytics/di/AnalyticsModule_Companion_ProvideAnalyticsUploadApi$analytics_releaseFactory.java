package com.sightcall.analytics.di;

import com.sightcall.analytics.datasource.analyticsupload.AnalyticsUploadApi;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class AnalyticsModule_Companion_ProvideAnalyticsUploadApi$analytics_releaseFactory implements Factory<AnalyticsUploadApi> {

    public static final class InstanceHolder {
        static final AnalyticsModule_Companion_ProvideAnalyticsUploadApi$analytics_releaseFactory INSTANCE = new AnalyticsModule_Companion_ProvideAnalyticsUploadApi$analytics_releaseFactory();

        private InstanceHolder() {
        }
    }

    public static AnalyticsModule_Companion_ProvideAnalyticsUploadApi$analytics_releaseFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static AnalyticsUploadApi provideAnalyticsUploadApi$analytics_release() {
        AnalyticsUploadApi analyticsUploadApiProvideAnalyticsUploadApi$analytics_release = AnalyticsModule.INSTANCE.provideAnalyticsUploadApi$analytics_release();
        Preconditions.c(analyticsUploadApiProvideAnalyticsUploadApi$analytics_release);
        return analyticsUploadApiProvideAnalyticsUploadApi$analytics_release;
    }

    @Override // javax.inject.Provider
    public AnalyticsUploadApi get() {
        return provideAnalyticsUploadApi$analytics_release();
    }
}
