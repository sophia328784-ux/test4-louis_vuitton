package com.sightcall.livetranslation.settings;

import com.sightcall.libraries.archi.nucleus.NucleusInteractor;
import com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl;
import com.sightcall.livetranslation.domain.LiveTranslationInteractor;
import com.sightcall.livetranslation.domain.StartStopTranslation;
import com.sightcall.livetranslation.domain.TextSizeSelector;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SettingsPanelComponent_Module_ProvideInteractorImplFactory implements Factory<NucleusInteractorImpl<SettingsPanelInteractor.State>> {
    private final Provider<NucleusInteractor<LiveTranslationInteractor.State>> liveTranslationInteractorProvider;
    private final SettingsPanelComponent.Module module;
    private final Provider<SettingsPanelCoordinatorImpl> settingsPanelCoordinatorImplProvider;
    private final Provider<StartStopTranslation> startStopTranslationProvider;
    private final Provider<TextSizeSelector> textSizeSelectorProvider;

    private SettingsPanelComponent_Module_ProvideInteractorImplFactory(SettingsPanelComponent.Module module, Provider<NucleusInteractor<LiveTranslationInteractor.State>> provider, Provider<SettingsPanelCoordinatorImpl> provider2, Provider<StartStopTranslation> provider3, Provider<TextSizeSelector> provider4) {
        this.module = module;
        this.liveTranslationInteractorProvider = provider;
        this.settingsPanelCoordinatorImplProvider = provider2;
        this.startStopTranslationProvider = provider3;
        this.textSizeSelectorProvider = provider4;
    }

    public static SettingsPanelComponent_Module_ProvideInteractorImplFactory create(SettingsPanelComponent.Module module, Provider<NucleusInteractor<LiveTranslationInteractor.State>> provider, Provider<SettingsPanelCoordinatorImpl> provider2, Provider<StartStopTranslation> provider3, Provider<TextSizeSelector> provider4) {
        return new SettingsPanelComponent_Module_ProvideInteractorImplFactory(module, provider, provider2, provider3, provider4);
    }

    public static NucleusInteractorImpl<SettingsPanelInteractor.State> provideInteractorImpl(SettingsPanelComponent.Module module, NucleusInteractor<LiveTranslationInteractor.State> nucleusInteractor, SettingsPanelCoordinatorImpl settingsPanelCoordinatorImpl, StartStopTranslation startStopTranslation, TextSizeSelector textSizeSelector) {
        NucleusInteractorImpl<SettingsPanelInteractor.State> nucleusInteractorImplProvideInteractorImpl = module.provideInteractorImpl(nucleusInteractor, settingsPanelCoordinatorImpl, startStopTranslation, textSizeSelector);
        Preconditions.c(nucleusInteractorImplProvideInteractorImpl);
        return nucleusInteractorImplProvideInteractorImpl;
    }

    @Override // javax.inject.Provider
    public NucleusInteractorImpl<SettingsPanelInteractor.State> get() {
        return provideInteractorImpl(this.module, (NucleusInteractor) this.liveTranslationInteractorProvider.get(), (SettingsPanelCoordinatorImpl) this.settingsPanelCoordinatorImplProvider.get(), (StartStopTranslation) this.startStopTranslationProvider.get(), (TextSizeSelector) this.textSizeSelectorProvider.get());
    }
}
