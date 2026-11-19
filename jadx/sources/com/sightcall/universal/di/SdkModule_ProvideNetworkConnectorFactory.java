package com.sightcall.universal.di;

import com.sightcall.libraries.network.NetworkConnector;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class SdkModule_ProvideNetworkConnectorFactory implements Factory<NetworkConnector> {
    private final SdkModule module;

    private SdkModule_ProvideNetworkConnectorFactory(SdkModule sdkModule) {
        this.module = sdkModule;
    }

    public static SdkModule_ProvideNetworkConnectorFactory create(SdkModule sdkModule) {
        return new SdkModule_ProvideNetworkConnectorFactory(sdkModule);
    }

    public static NetworkConnector provideNetworkConnector(SdkModule sdkModule) {
        NetworkConnector networkConnectorProvideNetworkConnector = sdkModule.provideNetworkConnector();
        Preconditions.c(networkConnectorProvideNetworkConnector);
        return networkConnectorProvideNetworkConnector;
    }

    @Override // javax.inject.Provider
    public NetworkConnector get() {
        return provideNetworkConnector(this.module);
    }
}
