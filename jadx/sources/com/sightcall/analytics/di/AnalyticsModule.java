package com.sightcall.analytics.di;

import com.google.gson.Gson;
import com.sightcall.analytics.AnalyticsRepository;
import com.sightcall.analytics.AnalyticsRepositoryImpl;
import com.sightcall.analytics.datasource.AnalyticsUploadDatasource;
import com.sightcall.analytics.datasource.analyticsupload.AnalyticsUploadApi;
import com.sightcall.analytics.datasource.analyticsupload.AnalyticsUploadDatasourceImpl;
import com.sightcall.httpclient.interceptors.LocalForwardInterceptor;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H!¢\u0006\u0002\b\bJ\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH!¢\u0006\u0002\b\r¨\u0006\u000f"}, d2 = {"Lcom/sightcall/analytics/di/AnalyticsModule;", "", "<init>", "()V", "provideAnalyticsRepository", "Lcom/sightcall/analytics/AnalyticsRepository;", "analyticsRepositoryImpl", "Lcom/sightcall/analytics/AnalyticsRepositoryImpl;", "provideAnalyticsRepository$analytics_release", "provideAnalyticsUploadDatasource", "Lcom/sightcall/analytics/datasource/AnalyticsUploadDatasource;", "analyticsUploadDatasourceImpl", "Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadDatasourceImpl;", "provideAnalyticsUploadDatasource$analytics_release", "Companion", "analytics_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Module
public abstract class AnalyticsModule {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Binds
    public abstract AnalyticsRepository provideAnalyticsRepository$analytics_release(AnalyticsRepositoryImpl analyticsRepositoryImpl);

    @Binds
    public abstract AnalyticsUploadDatasource provideAnalyticsUploadDatasource$analytics_release(AnalyticsUploadDatasourceImpl analyticsUploadDatasourceImpl);

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0004\u001a\u00020\u0005H\u0001¢\u0006\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/sightcall/analytics/di/AnalyticsModule$Companion;", "", "<init>", "()V", "provideAnalyticsUploadApi", "Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadApi;", "provideAnalyticsUploadApi$analytics_release", "analytics_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Provides
        public final AnalyticsUploadApi provideAnalyticsUploadApi$analytics_release() {
            Retrofit.Builder builder = new Retrofit.Builder();
            builder.b("https://sightcall.com");
            builder.a(new GsonConverterFactory(new Gson()));
            OkHttpClient.Builder builder2 = new OkHttpClient.Builder();
            builder2.f76962c.add(new LocalForwardInterceptor());
            builder.f79461a = new OkHttpClient(builder2);
            Object objB = builder.d().b(AnalyticsUploadApi.class);
            objB.getClass();
            return (AnalyticsUploadApi) objB;
        }

        private Companion() {
        }
    }
}
