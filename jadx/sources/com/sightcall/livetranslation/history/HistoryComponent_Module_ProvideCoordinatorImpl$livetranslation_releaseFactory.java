package com.sightcall.livetranslation.history;

import com.sightcall.livetranslation.LiveTranslationAPI;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class HistoryComponent_Module_ProvideCoordinatorImpl$livetranslation_releaseFactory implements Factory<HistoryCoordinatorImpl> {
    private final Provider<LiveTranslationAPI.CloseHistory> closeFeatureProvider;
    private final Provider<HistoryComponent> componentProvider;
    private final HistoryComponent.Module module;

    private HistoryComponent_Module_ProvideCoordinatorImpl$livetranslation_releaseFactory(HistoryComponent.Module module, Provider<HistoryComponent> provider, Provider<LiveTranslationAPI.CloseHistory> provider2) {
        this.module = module;
        this.componentProvider = provider;
        this.closeFeatureProvider = provider2;
    }

    public static HistoryComponent_Module_ProvideCoordinatorImpl$livetranslation_releaseFactory create(HistoryComponent.Module module, Provider<HistoryComponent> provider, Provider<LiveTranslationAPI.CloseHistory> provider2) {
        return new HistoryComponent_Module_ProvideCoordinatorImpl$livetranslation_releaseFactory(module, provider, provider2);
    }

    public static HistoryCoordinatorImpl provideCoordinatorImpl$livetranslation_release(HistoryComponent.Module module, HistoryComponent historyComponent, LiveTranslationAPI.CloseHistory closeHistory) {
        HistoryCoordinatorImpl historyCoordinatorImplProvideCoordinatorImpl$livetranslation_release = module.provideCoordinatorImpl$livetranslation_release(historyComponent, closeHistory);
        Preconditions.c(historyCoordinatorImplProvideCoordinatorImpl$livetranslation_release);
        return historyCoordinatorImplProvideCoordinatorImpl$livetranslation_release;
    }

    @Override // javax.inject.Provider
    public HistoryCoordinatorImpl get() {
        return provideCoordinatorImpl$livetranslation_release(this.module, (HistoryComponent) this.componentProvider.get(), (LiveTranslationAPI.CloseHistory) this.closeFeatureProvider.get());
    }
}
