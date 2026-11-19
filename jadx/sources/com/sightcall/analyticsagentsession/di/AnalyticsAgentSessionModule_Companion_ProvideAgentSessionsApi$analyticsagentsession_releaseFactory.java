package com.sightcall.analyticsagentsession.di;

import com.sightcall.analyticsagentsession.datasource.agentsession.AgentSessionsApi;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes3.dex */
public final class AnalyticsAgentSessionModule_Companion_ProvideAgentSessionsApi$analyticsagentsession_releaseFactory implements Factory<AgentSessionsApi> {
    private final Provider<Retrofit> retrofitProvider;

    private AnalyticsAgentSessionModule_Companion_ProvideAgentSessionsApi$analyticsagentsession_releaseFactory(Provider<Retrofit> provider) {
        this.retrofitProvider = provider;
    }

    public static AnalyticsAgentSessionModule_Companion_ProvideAgentSessionsApi$analyticsagentsession_releaseFactory create(Provider<Retrofit> provider) {
        return new AnalyticsAgentSessionModule_Companion_ProvideAgentSessionsApi$analyticsagentsession_releaseFactory(provider);
    }

    public static AgentSessionsApi provideAgentSessionsApi$analyticsagentsession_release(Retrofit retrofit) {
        AgentSessionsApi agentSessionsApiProvideAgentSessionsApi$analyticsagentsession_release = AnalyticsAgentSessionModule.INSTANCE.provideAgentSessionsApi$analyticsagentsession_release(retrofit);
        Preconditions.c(agentSessionsApiProvideAgentSessionsApi$analyticsagentsession_release);
        return agentSessionsApiProvideAgentSessionsApi$analyticsagentsession_release;
    }

    @Override // javax.inject.Provider
    public AgentSessionsApi get() {
        return provideAgentSessionsApi$analyticsagentsession_release((Retrofit) this.retrofitProvider.get());
    }
}
