package com.sightcall.universal;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class CallComponent_Module_ProvideCallCoordinator$sdk_installedReleaseFactory implements Factory<CallCoordinatorImpl> {
    private final Provider<CallComponent> componentProvider;
    private final CallComponent.Module module;

    private CallComponent_Module_ProvideCallCoordinator$sdk_installedReleaseFactory(CallComponent.Module module, Provider<CallComponent> provider) {
        this.module = module;
        this.componentProvider = provider;
    }

    public static CallComponent_Module_ProvideCallCoordinator$sdk_installedReleaseFactory create(CallComponent.Module module, Provider<CallComponent> provider) {
        return new CallComponent_Module_ProvideCallCoordinator$sdk_installedReleaseFactory(module, provider);
    }

    public static CallCoordinatorImpl provideCallCoordinator$sdk_installedRelease(CallComponent.Module module, CallComponent callComponent) {
        CallCoordinatorImpl callCoordinatorImplProvideCallCoordinator$sdk_installedRelease = module.provideCallCoordinator$sdk_installedRelease(callComponent);
        Preconditions.c(callCoordinatorImplProvideCallCoordinator$sdk_installedRelease);
        return callCoordinatorImplProvideCallCoordinator$sdk_installedRelease;
    }

    @Override // javax.inject.Provider
    public CallCoordinatorImpl get() {
        return provideCallCoordinator$sdk_installedRelease(this.module, (CallComponent) this.componentProvider.get());
    }
}
