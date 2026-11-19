package com.sightcall.livetranslation.settings;

import com.sightcall.livetranslation.LiveTranslationAPI;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SettingsPanelComponent_Module_ProvideCoordinatorImpl$livetranslation_releaseFactory implements Factory<SettingsPanelCoordinatorImpl> {
    private final Provider<LiveTranslationAPI.CloseSettings> closeFeatureProvider;
    private final Provider<SettingsPanelComponent> componentProvider;
    private final SettingsPanelComponent.Module module;
    private final Provider<LiveTranslationAPI.OpenHistory> openHistoryProvider;

    private SettingsPanelComponent_Module_ProvideCoordinatorImpl$livetranslation_releaseFactory(SettingsPanelComponent.Module module, Provider<SettingsPanelComponent> provider, Provider<LiveTranslationAPI.CloseSettings> provider2, Provider<LiveTranslationAPI.OpenHistory> provider3) {
        this.module = module;
        this.componentProvider = provider;
        this.closeFeatureProvider = provider2;
        this.openHistoryProvider = provider3;
    }

    public static SettingsPanelComponent_Module_ProvideCoordinatorImpl$livetranslation_releaseFactory create(SettingsPanelComponent.Module module, Provider<SettingsPanelComponent> provider, Provider<LiveTranslationAPI.CloseSettings> provider2, Provider<LiveTranslationAPI.OpenHistory> provider3) {
        return new SettingsPanelComponent_Module_ProvideCoordinatorImpl$livetranslation_releaseFactory(module, provider, provider2, provider3);
    }

    public static SettingsPanelCoordinatorImpl provideCoordinatorImpl$livetranslation_release(SettingsPanelComponent.Module module, SettingsPanelComponent settingsPanelComponent, LiveTranslationAPI.CloseSettings closeSettings, LiveTranslationAPI.OpenHistory openHistory) {
        SettingsPanelCoordinatorImpl settingsPanelCoordinatorImplProvideCoordinatorImpl$livetranslation_release = module.provideCoordinatorImpl$livetranslation_release(settingsPanelComponent, closeSettings, openHistory);
        Preconditions.c(settingsPanelCoordinatorImplProvideCoordinatorImpl$livetranslation_release);
        return settingsPanelCoordinatorImplProvideCoordinatorImpl$livetranslation_release;
    }

    @Override // javax.inject.Provider
    public SettingsPanelCoordinatorImpl get() {
        return provideCoordinatorImpl$livetranslation_release(this.module, (SettingsPanelComponent) this.componentProvider.get(), (LiveTranslationAPI.CloseSettings) this.closeFeatureProvider.get(), (LiveTranslationAPI.OpenHistory) this.openHistoryProvider.get());
    }
}
