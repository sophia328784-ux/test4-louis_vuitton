package com.sightcall.livetranslation.live;

import com.sightcall.libraries.archi.nucleus.NucleusInteractor;
import com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl;
import com.sightcall.livetranslation.domain.LiveTranslationInteractor;
import com.sightcall.livetranslation.domain.LiveTranslationSettings;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class LiveSentencesComponent_Module_ProvideInteractorImplFactory implements Factory<NucleusInteractorImpl<LiveSentencesInteractor.State>> {
    private final Provider<NucleusInteractor<LiveTranslationInteractor.State>> liveTranslationInteractorProvider;
    private final LiveSentencesComponent.Module module;
    private final Provider<LiveTranslationSettings.Enabled> settingsProvider;

    private LiveSentencesComponent_Module_ProvideInteractorImplFactory(LiveSentencesComponent.Module module, Provider<NucleusInteractor<LiveTranslationInteractor.State>> provider, Provider<LiveTranslationSettings.Enabled> provider2) {
        this.module = module;
        this.liveTranslationInteractorProvider = provider;
        this.settingsProvider = provider2;
    }

    public static LiveSentencesComponent_Module_ProvideInteractorImplFactory create(LiveSentencesComponent.Module module, Provider<NucleusInteractor<LiveTranslationInteractor.State>> provider, Provider<LiveTranslationSettings.Enabled> provider2) {
        return new LiveSentencesComponent_Module_ProvideInteractorImplFactory(module, provider, provider2);
    }

    public static NucleusInteractorImpl<LiveSentencesInteractor.State> provideInteractorImpl(LiveSentencesComponent.Module module, NucleusInteractor<LiveTranslationInteractor.State> nucleusInteractor, LiveTranslationSettings.Enabled enabled) {
        NucleusInteractorImpl<LiveSentencesInteractor.State> nucleusInteractorImplProvideInteractorImpl = module.provideInteractorImpl(nucleusInteractor, enabled);
        Preconditions.c(nucleusInteractorImplProvideInteractorImpl);
        return nucleusInteractorImplProvideInteractorImpl;
    }

    @Override // javax.inject.Provider
    public NucleusInteractorImpl<LiveSentencesInteractor.State> get() {
        return provideInteractorImpl(this.module, (NucleusInteractor) this.liveTranslationInteractorProvider.get(), (LiveTranslationSettings.Enabled) this.settingsProvider.get());
    }
}
