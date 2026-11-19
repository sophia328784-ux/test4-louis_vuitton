package com.sightcall.livetranslation.history;

import com.sightcall.libraries.archi.nucleus.NucleusInteractor;
import com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class HistoryComponent_Module_ProvideInteractorFactory implements Factory<NucleusInteractor<HistoryInteractor.State>> {
    private final Provider<NucleusInteractorImpl<HistoryInteractor.State>> interactorProvider;
    private final HistoryComponent.Module module;

    private HistoryComponent_Module_ProvideInteractorFactory(HistoryComponent.Module module, Provider<NucleusInteractorImpl<HistoryInteractor.State>> provider) {
        this.module = module;
        this.interactorProvider = provider;
    }

    public static HistoryComponent_Module_ProvideInteractorFactory create(HistoryComponent.Module module, Provider<NucleusInteractorImpl<HistoryInteractor.State>> provider) {
        return new HistoryComponent_Module_ProvideInteractorFactory(module, provider);
    }

    public static NucleusInteractor<HistoryInteractor.State> provideInteractor(HistoryComponent.Module module, NucleusInteractorImpl<HistoryInteractor.State> nucleusInteractorImpl) {
        NucleusInteractor<HistoryInteractor.State> nucleusInteractorProvideInteractor = module.provideInteractor(nucleusInteractorImpl);
        Preconditions.c(nucleusInteractorProvideInteractor);
        return nucleusInteractorProvideInteractor;
    }

    @Override // javax.inject.Provider
    public NucleusInteractor<HistoryInteractor.State> get() {
        return provideInteractor(this.module, (NucleusInteractorImpl) this.interactorProvider.get());
    }
}
