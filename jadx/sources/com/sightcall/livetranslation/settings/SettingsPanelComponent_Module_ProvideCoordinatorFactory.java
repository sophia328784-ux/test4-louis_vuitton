package com.sightcall.livetranslation.settings;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SettingsPanelComponent_Module_ProvideCoordinatorFactory implements Factory<SettingsPanelCoordinator> {
    private final Provider<SettingsPanelCoordinatorImpl> coordinatorProvider;
    private final SettingsPanelComponent.Module module;

    private SettingsPanelComponent_Module_ProvideCoordinatorFactory(SettingsPanelComponent.Module module, Provider<SettingsPanelCoordinatorImpl> provider) {
        this.module = module;
        this.coordinatorProvider = provider;
    }

    public static SettingsPanelComponent_Module_ProvideCoordinatorFactory create(SettingsPanelComponent.Module module, Provider<SettingsPanelCoordinatorImpl> provider) {
        return new SettingsPanelComponent_Module_ProvideCoordinatorFactory(module, provider);
    }

    public static SettingsPanelCoordinator provideCoordinator(SettingsPanelComponent.Module module, SettingsPanelCoordinatorImpl settingsPanelCoordinatorImpl) {
        SettingsPanelCoordinator settingsPanelCoordinatorProvideCoordinator = module.provideCoordinator(settingsPanelCoordinatorImpl);
        Preconditions.c(settingsPanelCoordinatorProvideCoordinator);
        return settingsPanelCoordinatorProvideCoordinator;
    }

    @Override // javax.inject.Provider
    public SettingsPanelCoordinator get() {
        return provideCoordinator(this.module, (SettingsPanelCoordinatorImpl) this.coordinatorProvider.get());
    }
}
