package com.sightcall.livetranslation;

import com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl;
import com.sightcall.livetranslation.domain.LiveTranslationInteractor;
import com.sightcall.livetranslation.domain.LiveTranslationRepository;
import com.sightcall.livetranslation.domain.LiveTranslationSettings;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class LiveTranslationComponent_Module_ProvideInteractorImplFactory implements Factory<NucleusInteractorImpl<LiveTranslationInteractor.State>> {
    private final LiveTranslationComponent.Module module;
    private final Provider<LiveTranslationRepository> repositoryProvider;
    private final Provider<LiveTranslationSettings> settingsProvider;

    private LiveTranslationComponent_Module_ProvideInteractorImplFactory(LiveTranslationComponent.Module module, Provider<LiveTranslationSettings> provider, Provider<LiveTranslationRepository> provider2) {
        this.module = module;
        this.settingsProvider = provider;
        this.repositoryProvider = provider2;
    }

    public static LiveTranslationComponent_Module_ProvideInteractorImplFactory create(LiveTranslationComponent.Module module, Provider<LiveTranslationSettings> provider, Provider<LiveTranslationRepository> provider2) {
        return new LiveTranslationComponent_Module_ProvideInteractorImplFactory(module, provider, provider2);
    }

    public static NucleusInteractorImpl<LiveTranslationInteractor.State> provideInteractorImpl(LiveTranslationComponent.Module module, LiveTranslationSettings liveTranslationSettings, LiveTranslationRepository liveTranslationRepository) {
        NucleusInteractorImpl<LiveTranslationInteractor.State> nucleusInteractorImplProvideInteractorImpl = module.provideInteractorImpl(liveTranslationSettings, liveTranslationRepository);
        Preconditions.c(nucleusInteractorImplProvideInteractorImpl);
        return nucleusInteractorImplProvideInteractorImpl;
    }

    @Override // javax.inject.Provider
    public NucleusInteractorImpl<LiveTranslationInteractor.State> get() {
        return provideInteractorImpl(this.module, (LiveTranslationSettings) this.settingsProvider.get(), (LiveTranslationRepository) this.repositoryProvider.get());
    }
}
