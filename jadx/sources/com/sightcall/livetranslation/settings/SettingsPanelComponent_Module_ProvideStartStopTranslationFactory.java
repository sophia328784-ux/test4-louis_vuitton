package com.sightcall.livetranslation.settings;

import com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl;
import com.sightcall.livetranslation.domain.LiveTranslationInteractor;
import com.sightcall.livetranslation.domain.StartStopTranslation;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SettingsPanelComponent_Module_ProvideStartStopTranslationFactory implements Factory<StartStopTranslation> {
    private final Provider<NucleusInteractorImpl<LiveTranslationInteractor.State>> liveTranslationInteractorProvider;
    private final SettingsPanelComponent.Module module;

    private SettingsPanelComponent_Module_ProvideStartStopTranslationFactory(SettingsPanelComponent.Module module, Provider<NucleusInteractorImpl<LiveTranslationInteractor.State>> provider) {
        this.module = module;
        this.liveTranslationInteractorProvider = provider;
    }

    public static SettingsPanelComponent_Module_ProvideStartStopTranslationFactory create(SettingsPanelComponent.Module module, Provider<NucleusInteractorImpl<LiveTranslationInteractor.State>> provider) {
        return new SettingsPanelComponent_Module_ProvideStartStopTranslationFactory(module, provider);
    }

    public static StartStopTranslation provideStartStopTranslation(SettingsPanelComponent.Module module, NucleusInteractorImpl<LiveTranslationInteractor.State> nucleusInteractorImpl) {
        StartStopTranslation startStopTranslationProvideStartStopTranslation = module.provideStartStopTranslation(nucleusInteractorImpl);
        Preconditions.c(startStopTranslationProvideStartStopTranslation);
        return startStopTranslationProvideStartStopTranslation;
    }

    @Override // javax.inject.Provider
    public StartStopTranslation get() {
        return provideStartStopTranslation(this.module, (NucleusInteractorImpl) this.liveTranslationInteractorProvider.get());
    }
}
