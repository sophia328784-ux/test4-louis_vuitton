package com.sightcall.livetranslation;

import com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl;
import com.sightcall.livetranslation.domain.LiveTranslationInteractor;
import com.sightcall.livetranslation.domain.LiveTranslationSettings;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class LiveTranslationComponent_Module_ProvideAPIFactory implements Factory<LiveTranslationAPI> {
    private final Provider<LiveTranslationComponent> componentProvider;
    private final Provider<NucleusInteractorImpl<LiveTranslationInteractor.State>> interactorProvider;
    private final LiveTranslationComponent.Module module;
    private final Provider<LiveTranslationSettings> settingsProvider;

    private LiveTranslationComponent_Module_ProvideAPIFactory(LiveTranslationComponent.Module module, Provider<NucleusInteractorImpl<LiveTranslationInteractor.State>> provider, Provider<LiveTranslationSettings> provider2, Provider<LiveTranslationComponent> provider3) {
        this.module = module;
        this.interactorProvider = provider;
        this.settingsProvider = provider2;
        this.componentProvider = provider3;
    }

    public static LiveTranslationComponent_Module_ProvideAPIFactory create(LiveTranslationComponent.Module module, Provider<NucleusInteractorImpl<LiveTranslationInteractor.State>> provider, Provider<LiveTranslationSettings> provider2, Provider<LiveTranslationComponent> provider3) {
        return new LiveTranslationComponent_Module_ProvideAPIFactory(module, provider, provider2, provider3);
    }

    public static LiveTranslationAPI provideAPI(LiveTranslationComponent.Module module, javax.inject.Provider<NucleusInteractorImpl<LiveTranslationInteractor.State>> provider, LiveTranslationSettings liveTranslationSettings, LiveTranslationComponent liveTranslationComponent) {
        LiveTranslationAPI liveTranslationAPIProvideAPI = module.provideAPI(provider, liveTranslationSettings, liveTranslationComponent);
        Preconditions.c(liveTranslationAPIProvideAPI);
        return liveTranslationAPIProvideAPI;
    }

    @Override // javax.inject.Provider
    public LiveTranslationAPI get() {
        return provideAPI(this.module, this.interactorProvider, (LiveTranslationSettings) this.settingsProvider.get(), (LiveTranslationComponent) this.componentProvider.get());
    }
}
