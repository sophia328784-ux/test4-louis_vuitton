package com.sightcall.livetranslation;

import com.sightcall.libraries.archi.nucleus.NucleusInteractor;
import com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl;
import com.sightcall.livetranslation.domain.LiveTranslationInteractor;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class LiveTranslationComponent_Module_ProvideInteractorFactory implements Factory<NucleusInteractor<LiveTranslationInteractor.State>> {
    private final Provider<NucleusInteractorImpl<LiveTranslationInteractor.State>> interactorProvider;
    private final LiveTranslationComponent.Module module;

    private LiveTranslationComponent_Module_ProvideInteractorFactory(LiveTranslationComponent.Module module, Provider<NucleusInteractorImpl<LiveTranslationInteractor.State>> provider) {
        this.module = module;
        this.interactorProvider = provider;
    }

    public static LiveTranslationComponent_Module_ProvideInteractorFactory create(LiveTranslationComponent.Module module, Provider<NucleusInteractorImpl<LiveTranslationInteractor.State>> provider) {
        return new LiveTranslationComponent_Module_ProvideInteractorFactory(module, provider);
    }

    public static NucleusInteractor<LiveTranslationInteractor.State> provideInteractor(LiveTranslationComponent.Module module, NucleusInteractorImpl<LiveTranslationInteractor.State> nucleusInteractorImpl) {
        NucleusInteractor<LiveTranslationInteractor.State> nucleusInteractorProvideInteractor = module.provideInteractor(nucleusInteractorImpl);
        Preconditions.c(nucleusInteractorProvideInteractor);
        return nucleusInteractorProvideInteractor;
    }

    @Override // javax.inject.Provider
    public NucleusInteractor<LiveTranslationInteractor.State> get() {
        return provideInteractor(this.module, (NucleusInteractorImpl) this.interactorProvider.get());
    }
}
