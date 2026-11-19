package com.sightcall.livetranslation.settings;

import com.sightcall.libraries.archi.nucleus.NucleusInteractor;
import com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SettingsPanelComponent_Module_ProvideInteractorFactory implements Factory<NucleusInteractor<SettingsPanelInteractor.State>> {
    private final Provider<NucleusInteractorImpl<SettingsPanelInteractor.State>> interactorProvider;
    private final SettingsPanelComponent.Module module;

    private SettingsPanelComponent_Module_ProvideInteractorFactory(SettingsPanelComponent.Module module, Provider<NucleusInteractorImpl<SettingsPanelInteractor.State>> provider) {
        this.module = module;
        this.interactorProvider = provider;
    }

    public static SettingsPanelComponent_Module_ProvideInteractorFactory create(SettingsPanelComponent.Module module, Provider<NucleusInteractorImpl<SettingsPanelInteractor.State>> provider) {
        return new SettingsPanelComponent_Module_ProvideInteractorFactory(module, provider);
    }

    public static NucleusInteractor<SettingsPanelInteractor.State> provideInteractor(SettingsPanelComponent.Module module, NucleusInteractorImpl<SettingsPanelInteractor.State> nucleusInteractorImpl) {
        NucleusInteractor<SettingsPanelInteractor.State> nucleusInteractorProvideInteractor = module.provideInteractor(nucleusInteractorImpl);
        Preconditions.c(nucleusInteractorProvideInteractor);
        return nucleusInteractorProvideInteractor;
    }

    @Override // javax.inject.Provider
    public NucleusInteractor<SettingsPanelInteractor.State> get() {
        return provideInteractor(this.module, (NucleusInteractorImpl) this.interactorProvider.get());
    }
}
