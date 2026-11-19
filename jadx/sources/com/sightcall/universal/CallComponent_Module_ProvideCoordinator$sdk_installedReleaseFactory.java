package com.sightcall.universal;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class CallComponent_Module_ProvideCoordinator$sdk_installedReleaseFactory implements Factory<CallCoordinator> {
    private final Provider<CallCoordinatorImpl> coordinatorProvider;
    private final CallComponent.Module module;

    private CallComponent_Module_ProvideCoordinator$sdk_installedReleaseFactory(CallComponent.Module module, Provider<CallCoordinatorImpl> provider) {
        this.module = module;
        this.coordinatorProvider = provider;
    }

    public static CallComponent_Module_ProvideCoordinator$sdk_installedReleaseFactory create(CallComponent.Module module, Provider<CallCoordinatorImpl> provider) {
        return new CallComponent_Module_ProvideCoordinator$sdk_installedReleaseFactory(module, provider);
    }

    public static CallCoordinator provideCoordinator$sdk_installedRelease(CallComponent.Module module, CallCoordinatorImpl callCoordinatorImpl) {
        CallCoordinator callCoordinatorProvideCoordinator$sdk_installedRelease = module.provideCoordinator$sdk_installedRelease(callCoordinatorImpl);
        Preconditions.c(callCoordinatorProvideCoordinator$sdk_installedRelease);
        return callCoordinatorProvideCoordinator$sdk_installedRelease;
    }

    @Override // javax.inject.Provider
    public CallCoordinator get() {
        return provideCoordinator$sdk_installedRelease(this.module, (CallCoordinatorImpl) this.coordinatorProvider.get());
    }
}
