package com.sightcall.livetranslation.history;

import com.sightcall.libraries.archi.nucleus.NucleusInteractor;
import com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl;
import com.sightcall.livetranslation.domain.LiveTranslationInteractor;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class HistoryComponent_Module_ProvideInteractorImplFactory implements Factory<NucleusInteractorImpl<HistoryInteractor.State>> {
    private final Provider<HistoryCoordinator> coordinatorProvider;
    private final Provider<NucleusInteractor<LiveTranslationInteractor.State>> liveTranslationInteractorProvider;
    private final HistoryComponent.Module module;

    private HistoryComponent_Module_ProvideInteractorImplFactory(HistoryComponent.Module module, Provider<HistoryCoordinator> provider, Provider<NucleusInteractor<LiveTranslationInteractor.State>> provider2) {
        this.module = module;
        this.coordinatorProvider = provider;
        this.liveTranslationInteractorProvider = provider2;
    }

    public static HistoryComponent_Module_ProvideInteractorImplFactory create(HistoryComponent.Module module, Provider<HistoryCoordinator> provider, Provider<NucleusInteractor<LiveTranslationInteractor.State>> provider2) {
        return new HistoryComponent_Module_ProvideInteractorImplFactory(module, provider, provider2);
    }

    public static NucleusInteractorImpl<HistoryInteractor.State> provideInteractorImpl(HistoryComponent.Module module, HistoryCoordinator historyCoordinator, NucleusInteractor<LiveTranslationInteractor.State> nucleusInteractor) {
        NucleusInteractorImpl<HistoryInteractor.State> nucleusInteractorImplProvideInteractorImpl = module.provideInteractorImpl(historyCoordinator, nucleusInteractor);
        Preconditions.c(nucleusInteractorImplProvideInteractorImpl);
        return nucleusInteractorImplProvideInteractorImpl;
    }

    @Override // javax.inject.Provider
    public NucleusInteractorImpl<HistoryInteractor.State> get() {
        return provideInteractorImpl(this.module, (HistoryCoordinator) this.coordinatorProvider.get(), (NucleusInteractor) this.liveTranslationInteractorProvider.get());
    }
}
