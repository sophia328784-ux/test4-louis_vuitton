package com.sightcall.livetranslation;

import com.sightcall.livetranslation.domain.LiveTranslationSettings;
import com.sightcall.session.Reference;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class LiveTranslationComponent_Module_ProvideSettingsFactory implements Factory<LiveTranslationSettings> {
    private final Provider<LiveTranslationAPI.LocaleLanguage> localeLanguageProvider;
    private final LiveTranslationComponent.Module module;
    private final Provider<LiveTranslationAPI.Role> roleProvider;
    private final Provider<Reference.UseCase.LiveTranslation> useCaseSettingsProvider;

    private LiveTranslationComponent_Module_ProvideSettingsFactory(LiveTranslationComponent.Module module, Provider<Reference.UseCase.LiveTranslation> provider, Provider<LiveTranslationAPI.Role> provider2, Provider<LiveTranslationAPI.LocaleLanguage> provider3) {
        this.module = module;
        this.useCaseSettingsProvider = provider;
        this.roleProvider = provider2;
        this.localeLanguageProvider = provider3;
    }

    public static LiveTranslationComponent_Module_ProvideSettingsFactory create(LiveTranslationComponent.Module module, Provider<Reference.UseCase.LiveTranslation> provider, Provider<LiveTranslationAPI.Role> provider2, Provider<LiveTranslationAPI.LocaleLanguage> provider3) {
        return new LiveTranslationComponent_Module_ProvideSettingsFactory(module, provider, provider2, provider3);
    }

    public static LiveTranslationSettings provideSettings(LiveTranslationComponent.Module module, Reference.UseCase.LiveTranslation liveTranslation, LiveTranslationAPI.Role role, LiveTranslationAPI.LocaleLanguage localeLanguage) {
        LiveTranslationSettings liveTranslationSettingsProvideSettings = module.provideSettings(liveTranslation, role, localeLanguage);
        Preconditions.c(liveTranslationSettingsProvideSettings);
        return liveTranslationSettingsProvideSettings;
    }

    @Override // javax.inject.Provider
    public LiveTranslationSettings get() {
        return provideSettings(this.module, (Reference.UseCase.LiveTranslation) this.useCaseSettingsProvider.get(), (LiveTranslationAPI.Role) this.roleProvider.get(), (LiveTranslationAPI.LocaleLanguage) this.localeLanguageProvider.get());
    }
}
