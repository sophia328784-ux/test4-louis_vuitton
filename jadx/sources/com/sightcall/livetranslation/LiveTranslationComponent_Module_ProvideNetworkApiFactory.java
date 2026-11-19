package com.sightcall.livetranslation;

import com.sightcall.libraries.network.NetworkConnector;
import com.sightcall.livetranslation.data.API;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class LiveTranslationComponent_Module_ProvideNetworkApiFactory implements Factory<API> {
    private final LiveTranslationComponent.Module module;
    private final Provider<NetworkConnector> networkConnectorProvider;

    private LiveTranslationComponent_Module_ProvideNetworkApiFactory(LiveTranslationComponent.Module module, Provider<NetworkConnector> provider) {
        this.module = module;
        this.networkConnectorProvider = provider;
    }

    public static LiveTranslationComponent_Module_ProvideNetworkApiFactory create(LiveTranslationComponent.Module module, Provider<NetworkConnector> provider) {
        return new LiveTranslationComponent_Module_ProvideNetworkApiFactory(module, provider);
    }

    public static API provideNetworkApi(LiveTranslationComponent.Module module, NetworkConnector networkConnector) {
        API apiProvideNetworkApi = module.provideNetworkApi(networkConnector);
        Preconditions.c(apiProvideNetworkApi);
        return apiProvideNetworkApi;
    }

    @Override // javax.inject.Provider
    public API get() {
        return provideNetworkApi(this.module, (NetworkConnector) this.networkConnectorProvider.get());
    }
}
