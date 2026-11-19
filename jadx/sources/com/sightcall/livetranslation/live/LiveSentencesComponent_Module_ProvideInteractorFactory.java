package com.sightcall.livetranslation.live;

import com.sightcall.libraries.archi.nucleus.NucleusInteractor;
import com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class LiveSentencesComponent_Module_ProvideInteractorFactory implements Factory<NucleusInteractor<LiveSentencesInteractor.State>> {
    private final Provider<NucleusInteractorImpl<LiveSentencesInteractor.State>> liveSentencesInteractorProvider;
    private final LiveSentencesComponent.Module module;

    private LiveSentencesComponent_Module_ProvideInteractorFactory(LiveSentencesComponent.Module module, Provider<NucleusInteractorImpl<LiveSentencesInteractor.State>> provider) {
        this.module = module;
        this.liveSentencesInteractorProvider = provider;
    }

    public static LiveSentencesComponent_Module_ProvideInteractorFactory create(LiveSentencesComponent.Module module, Provider<NucleusInteractorImpl<LiveSentencesInteractor.State>> provider) {
        return new LiveSentencesComponent_Module_ProvideInteractorFactory(module, provider);
    }

    public static NucleusInteractor<LiveSentencesInteractor.State> provideInteractor(LiveSentencesComponent.Module module, NucleusInteractorImpl<LiveSentencesInteractor.State> nucleusInteractorImpl) {
        NucleusInteractor<LiveSentencesInteractor.State> nucleusInteractorProvideInteractor = module.provideInteractor(nucleusInteractorImpl);
        Preconditions.c(nucleusInteractorProvideInteractor);
        return nucleusInteractorProvideInteractor;
    }

    @Override // javax.inject.Provider
    public NucleusInteractor<LiveSentencesInteractor.State> get() {
        return provideInteractor(this.module, (NucleusInteractorImpl) this.liveSentencesInteractorProvider.get());
    }
}
