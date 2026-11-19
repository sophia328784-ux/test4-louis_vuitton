package com.sightcall.advancedannotations;

import com.sightcall.advancedannotations.data.API;
import com.sightcall.libraries.network.NetworkConnector;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class AdvancedAnnotationsModule_ProvideAPI$advancedannotations_releaseFactory implements Factory<API> {
    private final AdvancedAnnotationsModule module;
    private final Provider<NetworkConnector> networkConnectorProvider;

    private AdvancedAnnotationsModule_ProvideAPI$advancedannotations_releaseFactory(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<NetworkConnector> provider) {
        this.module = advancedAnnotationsModule;
        this.networkConnectorProvider = provider;
    }

    public static AdvancedAnnotationsModule_ProvideAPI$advancedannotations_releaseFactory create(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<NetworkConnector> provider) {
        return new AdvancedAnnotationsModule_ProvideAPI$advancedannotations_releaseFactory(advancedAnnotationsModule, provider);
    }

    public static API provideAPI$advancedannotations_release(AdvancedAnnotationsModule advancedAnnotationsModule, NetworkConnector networkConnector) {
        API apiProvideAPI$advancedannotations_release = advancedAnnotationsModule.provideAPI$advancedannotations_release(networkConnector);
        Preconditions.c(apiProvideAPI$advancedannotations_release);
        return apiProvideAPI$advancedannotations_release;
    }

    @Override // javax.inject.Provider
    public API get() {
        return provideAPI$advancedannotations_release(this.module, (NetworkConnector) this.networkConnectorProvider.get());
    }
}
