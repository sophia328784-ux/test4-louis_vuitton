package com.sightcall.analyticsagentsession.di;

import com.sightcall.analyticsagentsession.AnalyticsAgentSessionRepository;
import com.sightcall.analyticsagentsession.AnalyticsAgentSessionRepositoryImpl;
import com.sightcall.analyticsagentsession.datasource.AgentSessionDataSource;
import com.sightcall.analyticsagentsession.datasource.agentsession.AgentSessionDataSourceV3Impl;
import com.sightcall.analyticsagentsession.datasource.agentsession.AgentSessionsApi;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H!¢\u0006\u0002\b\bJ\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH!¢\u0006\u0002\b\r¨\u0006\u000f"}, d2 = {"Lcom/sightcall/analyticsagentsession/di/AnalyticsAgentSessionModule;", "", "<init>", "()V", "provideAnalyticsAgentSessionRepository", "Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;", "analyticsRepositoryImpl", "Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepositoryImpl;", "provideAnalyticsAgentSessionRepository$analyticsagentsession_release", "provideAgentSessionDataSource", "Lcom/sightcall/analyticsagentsession/datasource/AgentSessionDataSource;", "agentSessionDataSourceV3Impl", "Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl;", "provideAgentSessionDataSource$analyticsagentsession_release", "Companion", "analyticsagentsession_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Module
public abstract class AnalyticsAgentSessionModule {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Binds
    public abstract AgentSessionDataSource provideAgentSessionDataSource$analyticsagentsession_release(AgentSessionDataSourceV3Impl agentSessionDataSourceV3Impl);

    @Binds
    public abstract AnalyticsAgentSessionRepository provideAnalyticsAgentSessionRepository$analyticsagentsession_release(AnalyticsAgentSessionRepositoryImpl analyticsRepositoryImpl);

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001¢\u0006\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/sightcall/analyticsagentsession/di/AnalyticsAgentSessionModule$Companion;", "", "<init>", "()V", "provideAgentSessionsApi", "Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;", "retrofit", "Lretrofit2/Retrofit;", "provideAgentSessionsApi$analyticsagentsession_release", "analyticsagentsession_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Provides
        public final AgentSessionsApi provideAgentSessionsApi$analyticsagentsession_release(Retrofit retrofit) {
            retrofit.getClass();
            Object objB = retrofit.b(AgentSessionsApi.class);
            objB.getClass();
            return (AgentSessionsApi) objB;
        }

        private Companion() {
        }
    }
}
