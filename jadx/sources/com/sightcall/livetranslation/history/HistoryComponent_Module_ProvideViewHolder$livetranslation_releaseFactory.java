package com.sightcall.livetranslation.history;

import android.view.ViewGroup;
import com.sightcall.libraries.archi.nucleus.NucleusInteractor;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class HistoryComponent_Module_ProvideViewHolder$livetranslation_releaseFactory implements Factory<HistoryViewHolder> {
    private final Provider<NucleusInteractor<HistoryInteractor.State>> interactorProvider;
    private final HistoryComponent.Module module;
    private final Provider<ViewGroup> rootViewProvider;

    private HistoryComponent_Module_ProvideViewHolder$livetranslation_releaseFactory(HistoryComponent.Module module, Provider<ViewGroup> provider, Provider<NucleusInteractor<HistoryInteractor.State>> provider2) {
        this.module = module;
        this.rootViewProvider = provider;
        this.interactorProvider = provider2;
    }

    public static HistoryComponent_Module_ProvideViewHolder$livetranslation_releaseFactory create(HistoryComponent.Module module, Provider<ViewGroup> provider, Provider<NucleusInteractor<HistoryInteractor.State>> provider2) {
        return new HistoryComponent_Module_ProvideViewHolder$livetranslation_releaseFactory(module, provider, provider2);
    }

    public static HistoryViewHolder provideViewHolder$livetranslation_release(HistoryComponent.Module module, ViewGroup viewGroup, NucleusInteractor<HistoryInteractor.State> nucleusInteractor) {
        HistoryViewHolder historyViewHolderProvideViewHolder$livetranslation_release = module.provideViewHolder$livetranslation_release(viewGroup, nucleusInteractor);
        Preconditions.c(historyViewHolderProvideViewHolder$livetranslation_release);
        return historyViewHolderProvideViewHolder$livetranslation_release;
    }

    @Override // javax.inject.Provider
    public HistoryViewHolder get() {
        return provideViewHolder$livetranslation_release(this.module, (ViewGroup) this.rootViewProvider.get(), (NucleusInteractor) this.interactorProvider.get());
    }
}
