package com.sightcall.livetranslation.settings;

import android.view.ViewGroup;
import com.sightcall.libraries.archi.nucleus.NucleusInteractor;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SettingsPanelComponent_Module_ProvideViewHolder$livetranslation_releaseFactory implements Factory<SettingsPanelViewHolder> {
    private final Provider<NucleusInteractor<SettingsPanelInteractor.State>> interactorProvider;
    private final SettingsPanelComponent.Module module;
    private final Provider<ViewGroup> rootViewProvider;

    private SettingsPanelComponent_Module_ProvideViewHolder$livetranslation_releaseFactory(SettingsPanelComponent.Module module, Provider<ViewGroup> provider, Provider<NucleusInteractor<SettingsPanelInteractor.State>> provider2) {
        this.module = module;
        this.rootViewProvider = provider;
        this.interactorProvider = provider2;
    }

    public static SettingsPanelComponent_Module_ProvideViewHolder$livetranslation_releaseFactory create(SettingsPanelComponent.Module module, Provider<ViewGroup> provider, Provider<NucleusInteractor<SettingsPanelInteractor.State>> provider2) {
        return new SettingsPanelComponent_Module_ProvideViewHolder$livetranslation_releaseFactory(module, provider, provider2);
    }

    public static SettingsPanelViewHolder provideViewHolder$livetranslation_release(SettingsPanelComponent.Module module, ViewGroup viewGroup, NucleusInteractor<SettingsPanelInteractor.State> nucleusInteractor) {
        SettingsPanelViewHolder settingsPanelViewHolderProvideViewHolder$livetranslation_release = module.provideViewHolder$livetranslation_release(viewGroup, nucleusInteractor);
        Preconditions.c(settingsPanelViewHolderProvideViewHolder$livetranslation_release);
        return settingsPanelViewHolderProvideViewHolder$livetranslation_release;
    }

    @Override // javax.inject.Provider
    public SettingsPanelViewHolder get() {
        return provideViewHolder$livetranslation_release(this.module, (ViewGroup) this.rootViewProvider.get(), (NucleusInteractor) this.interactorProvider.get());
    }
}
