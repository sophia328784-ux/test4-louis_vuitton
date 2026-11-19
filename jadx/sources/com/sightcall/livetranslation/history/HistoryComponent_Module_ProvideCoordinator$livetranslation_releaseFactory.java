package com.sightcall.livetranslation.history;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class HistoryComponent_Module_ProvideCoordinator$livetranslation_releaseFactory implements Factory<HistoryCoordinator> {
    private final Provider<HistoryCoordinatorImpl> coordinatorImplProvider;
    private final HistoryComponent.Module module;

    private HistoryComponent_Module_ProvideCoordinator$livetranslation_releaseFactory(HistoryComponent.Module module, Provider<HistoryCoordinatorImpl> provider) {
        this.module = module;
        this.coordinatorImplProvider = provider;
    }

    public static HistoryComponent_Module_ProvideCoordinator$livetranslation_releaseFactory create(HistoryComponent.Module module, Provider<HistoryCoordinatorImpl> provider) {
        return new HistoryComponent_Module_ProvideCoordinator$livetranslation_releaseFactory(module, provider);
    }

    public static HistoryCoordinator provideCoordinator$livetranslation_release(HistoryComponent.Module module, HistoryCoordinatorImpl historyCoordinatorImpl) {
        HistoryCoordinator historyCoordinatorProvideCoordinator$livetranslation_release = module.provideCoordinator$livetranslation_release(historyCoordinatorImpl);
        Preconditions.c(historyCoordinatorProvideCoordinator$livetranslation_release);
        return historyCoordinatorProvideCoordinator$livetranslation_release;
    }

    @Override // javax.inject.Provider
    public HistoryCoordinator get() {
        return provideCoordinator$livetranslation_release(this.module, (HistoryCoordinatorImpl) this.coordinatorImplProvider.get());
    }
}
