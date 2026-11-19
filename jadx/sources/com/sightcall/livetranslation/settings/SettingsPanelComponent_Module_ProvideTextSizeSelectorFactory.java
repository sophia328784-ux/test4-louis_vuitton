package com.sightcall.livetranslation.settings;

import com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl;
import com.sightcall.livetranslation.domain.LiveTranslationInteractor;
import com.sightcall.livetranslation.domain.TextSizeSelector;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SettingsPanelComponent_Module_ProvideTextSizeSelectorFactory implements Factory<TextSizeSelector> {
    private final Provider<NucleusInteractorImpl<LiveTranslationInteractor.State>> liveTranslationInteractorProvider;
    private final SettingsPanelComponent.Module module;

    private SettingsPanelComponent_Module_ProvideTextSizeSelectorFactory(SettingsPanelComponent.Module module, Provider<NucleusInteractorImpl<LiveTranslationInteractor.State>> provider) {
        this.module = module;
        this.liveTranslationInteractorProvider = provider;
    }

    public static SettingsPanelComponent_Module_ProvideTextSizeSelectorFactory create(SettingsPanelComponent.Module module, Provider<NucleusInteractorImpl<LiveTranslationInteractor.State>> provider) {
        return new SettingsPanelComponent_Module_ProvideTextSizeSelectorFactory(module, provider);
    }

    public static TextSizeSelector provideTextSizeSelector(SettingsPanelComponent.Module module, NucleusInteractorImpl<LiveTranslationInteractor.State> nucleusInteractorImpl) {
        TextSizeSelector textSizeSelectorProvideTextSizeSelector = module.provideTextSizeSelector(nucleusInteractorImpl);
        Preconditions.c(textSizeSelectorProvideTextSizeSelector);
        return textSizeSelectorProvideTextSizeSelector;
    }

    @Override // javax.inject.Provider
    public TextSizeSelector get() {
        return provideTextSizeSelector(this.module, (NucleusInteractorImpl) this.liveTranslationInteractorProvider.get());
    }
}
