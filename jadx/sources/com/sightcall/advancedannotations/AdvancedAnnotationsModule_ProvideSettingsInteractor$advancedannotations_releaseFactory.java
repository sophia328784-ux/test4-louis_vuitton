package com.sightcall.advancedannotations;

import com.sightcall.advancedannotations.domain.AdvancedAnnotationsRepository;
import com.sightcall.advancedannotations.domain.settings.SettingsInteractor;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class AdvancedAnnotationsModule_ProvideSettingsInteractor$advancedannotations_releaseFactory implements Factory<SettingsInteractor> {
    private final AdvancedAnnotationsModule module;
    private final Provider<AdvancedAnnotationsRepository> repositoryProvider;

    private AdvancedAnnotationsModule_ProvideSettingsInteractor$advancedannotations_releaseFactory(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<AdvancedAnnotationsRepository> provider) {
        this.module = advancedAnnotationsModule;
        this.repositoryProvider = provider;
    }

    public static AdvancedAnnotationsModule_ProvideSettingsInteractor$advancedannotations_releaseFactory create(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<AdvancedAnnotationsRepository> provider) {
        return new AdvancedAnnotationsModule_ProvideSettingsInteractor$advancedannotations_releaseFactory(advancedAnnotationsModule, provider);
    }

    public static SettingsInteractor provideSettingsInteractor$advancedannotations_release(AdvancedAnnotationsModule advancedAnnotationsModule, AdvancedAnnotationsRepository advancedAnnotationsRepository) {
        SettingsInteractor settingsInteractorProvideSettingsInteractor$advancedannotations_release = advancedAnnotationsModule.provideSettingsInteractor$advancedannotations_release(advancedAnnotationsRepository);
        Preconditions.c(settingsInteractorProvideSettingsInteractor$advancedannotations_release);
        return settingsInteractorProvideSettingsInteractor$advancedannotations_release;
    }

    @Override // javax.inject.Provider
    public SettingsInteractor get() {
        return provideSettingsInteractor$advancedannotations_release(this.module, (AdvancedAnnotationsRepository) this.repositoryProvider.get());
    }
}
