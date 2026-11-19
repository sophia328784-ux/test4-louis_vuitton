package com.sightcall.livetranslation.live;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class LiveSentencesComponent_Module_ProvideCoordinatorFactory implements Factory<LiveSentencesCoordinator> {
    private final Provider<LiveSentencesCoordinatorImpl> coordinatorProvider;
    private final LiveSentencesComponent.Module module;

    private LiveSentencesComponent_Module_ProvideCoordinatorFactory(LiveSentencesComponent.Module module, Provider<LiveSentencesCoordinatorImpl> provider) {
        this.module = module;
        this.coordinatorProvider = provider;
    }

    public static LiveSentencesComponent_Module_ProvideCoordinatorFactory create(LiveSentencesComponent.Module module, Provider<LiveSentencesCoordinatorImpl> provider) {
        return new LiveSentencesComponent_Module_ProvideCoordinatorFactory(module, provider);
    }

    public static LiveSentencesCoordinator provideCoordinator(LiveSentencesComponent.Module module, LiveSentencesCoordinatorImpl liveSentencesCoordinatorImpl) {
        LiveSentencesCoordinator liveSentencesCoordinatorProvideCoordinator = module.provideCoordinator(liveSentencesCoordinatorImpl);
        Preconditions.c(liveSentencesCoordinatorProvideCoordinator);
        return liveSentencesCoordinatorProvideCoordinator;
    }

    @Override // javax.inject.Provider
    public LiveSentencesCoordinator get() {
        return provideCoordinator(this.module, (LiveSentencesCoordinatorImpl) this.coordinatorProvider.get());
    }
}
