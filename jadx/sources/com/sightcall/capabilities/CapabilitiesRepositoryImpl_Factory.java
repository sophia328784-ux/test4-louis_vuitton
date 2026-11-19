package com.sightcall.capabilities;

import com.sightcall.capabilities.datasource.rtcc.RtccDatasource;
import dagger.internal.Factory;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class CapabilitiesRepositoryImpl_Factory implements Factory<CapabilitiesRepositoryImpl> {
    private final Provider<Boolean> isInstantAppProvider;
    private final Provider<RtccDatasource> rtccDatasourceProvider;

    private CapabilitiesRepositoryImpl_Factory(Provider<Boolean> provider, Provider<RtccDatasource> provider2) {
        this.isInstantAppProvider = provider;
        this.rtccDatasourceProvider = provider2;
    }

    public static CapabilitiesRepositoryImpl_Factory create(Provider<Boolean> provider, Provider<RtccDatasource> provider2) {
        return new CapabilitiesRepositoryImpl_Factory(provider, provider2);
    }

    public static CapabilitiesRepositoryImpl newInstance(boolean z, RtccDatasource rtccDatasource) {
        return new CapabilitiesRepositoryImpl(z, rtccDatasource);
    }

    @Override // javax.inject.Provider
    public CapabilitiesRepositoryImpl get() {
        return newInstance(((Boolean) this.isInstantAppProvider.get()).booleanValue(), (RtccDatasource) this.rtccDatasourceProvider.get());
    }
}
