package com.sightcall.livetranslation.live;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class LiveSentencesComponent_Module_ProvideCoordinatorImplFactory implements Factory<LiveSentencesCoordinatorImpl> {
    private final Provider<LiveSentencesComponent> componentProvider;
    private final LiveSentencesComponent.Module module;

    private LiveSentencesComponent_Module_ProvideCoordinatorImplFactory(LiveSentencesComponent.Module module, Provider<LiveSentencesComponent> provider) {
        this.module = module;
        this.componentProvider = provider;
    }

    public static LiveSentencesComponent_Module_ProvideCoordinatorImplFactory create(LiveSentencesComponent.Module module, Provider<LiveSentencesComponent> provider) {
        return new LiveSentencesComponent_Module_ProvideCoordinatorImplFactory(module, provider);
    }

    public static LiveSentencesCoordinatorImpl provideCoordinatorImpl(LiveSentencesComponent.Module module, LiveSentencesComponent liveSentencesComponent) {
        LiveSentencesCoordinatorImpl liveSentencesCoordinatorImplProvideCoordinatorImpl = module.provideCoordinatorImpl(liveSentencesComponent);
        Preconditions.c(liveSentencesCoordinatorImplProvideCoordinatorImpl);
        return liveSentencesCoordinatorImplProvideCoordinatorImpl;
    }

    @Override // javax.inject.Provider
    public LiveSentencesCoordinatorImpl get() {
        return provideCoordinatorImpl(this.module, (LiveSentencesComponent) this.componentProvider.get());
    }
}
