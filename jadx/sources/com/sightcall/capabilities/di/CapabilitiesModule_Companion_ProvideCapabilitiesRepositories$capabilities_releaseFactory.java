package com.sightcall.capabilities.di;

import android.content.Context;
import com.sightcall.capabilities.CapabilitiesRepository;
import com.sightcall.capabilities.datasource.rtcc.RtccDatasource;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class CapabilitiesModule_Companion_ProvideCapabilitiesRepositories$capabilities_releaseFactory implements Factory<CapabilitiesRepository> {
    private final Provider<Context> contextProvider;
    private final Provider<RtccDatasource> rtccDatasourceProvider;

    private CapabilitiesModule_Companion_ProvideCapabilitiesRepositories$capabilities_releaseFactory(Provider<Context> provider, Provider<RtccDatasource> provider2) {
        this.contextProvider = provider;
        this.rtccDatasourceProvider = provider2;
    }

    public static CapabilitiesModule_Companion_ProvideCapabilitiesRepositories$capabilities_releaseFactory create(Provider<Context> provider, Provider<RtccDatasource> provider2) {
        return new CapabilitiesModule_Companion_ProvideCapabilitiesRepositories$capabilities_releaseFactory(provider, provider2);
    }

    public static CapabilitiesRepository provideCapabilitiesRepositories$capabilities_release(Context context, RtccDatasource rtccDatasource) {
        CapabilitiesRepository capabilitiesRepositoryProvideCapabilitiesRepositories$capabilities_release = CapabilitiesModule.INSTANCE.provideCapabilitiesRepositories$capabilities_release(context, rtccDatasource);
        Preconditions.c(capabilitiesRepositoryProvideCapabilitiesRepositories$capabilities_release);
        return capabilitiesRepositoryProvideCapabilitiesRepositories$capabilities_release;
    }

    @Override // javax.inject.Provider
    public CapabilitiesRepository get() {
        return provideCapabilitiesRepositories$capabilities_release((Context) this.contextProvider.get(), (RtccDatasource) this.rtccDatasourceProvider.get());
    }
}
