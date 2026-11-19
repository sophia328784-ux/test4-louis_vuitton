package com.sightcall.livetranslation.live;

import android.view.ViewGroup;
import com.sightcall.libraries.archi.nucleus.NucleusInteractor;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class LiveSentencesComponent_Module_ProvideViewHolderFactory implements Factory<LiveSentencesViewHolder> {
    private final Provider<NucleusInteractor<LiveSentencesInteractor.State>> interactorProvider;
    private final LiveSentencesComponent.Module module;
    private final Provider<ViewGroup> rootViewProvider;

    private LiveSentencesComponent_Module_ProvideViewHolderFactory(LiveSentencesComponent.Module module, Provider<ViewGroup> provider, Provider<NucleusInteractor<LiveSentencesInteractor.State>> provider2) {
        this.module = module;
        this.rootViewProvider = provider;
        this.interactorProvider = provider2;
    }

    public static LiveSentencesComponent_Module_ProvideViewHolderFactory create(LiveSentencesComponent.Module module, Provider<ViewGroup> provider, Provider<NucleusInteractor<LiveSentencesInteractor.State>> provider2) {
        return new LiveSentencesComponent_Module_ProvideViewHolderFactory(module, provider, provider2);
    }

    public static LiveSentencesViewHolder provideViewHolder(LiveSentencesComponent.Module module, ViewGroup viewGroup, NucleusInteractor<LiveSentencesInteractor.State> nucleusInteractor) {
        LiveSentencesViewHolder liveSentencesViewHolderProvideViewHolder = module.provideViewHolder(viewGroup, nucleusInteractor);
        Preconditions.c(liveSentencesViewHolderProvideViewHolder);
        return liveSentencesViewHolderProvideViewHolder;
    }

    @Override // javax.inject.Provider
    public LiveSentencesViewHolder get() {
        return provideViewHolder(this.module, (ViewGroup) this.rootViewProvider.get(), (NucleusInteractor) this.interactorProvider.get());
    }
}
