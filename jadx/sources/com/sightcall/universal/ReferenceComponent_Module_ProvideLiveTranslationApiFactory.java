package com.sightcall.universal;

import com.sightcall.libraries.network.NetworkConnector;
import com.sightcall.livetranslation.LiveTranslationAPI;
import com.sightcall.session.Reference;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ReferenceComponent_Module_ProvideLiveTranslationApiFactory implements Factory<LiveTranslationAPI> {
    private final Provider<LiveTranslationAPI.LiveTranslationLanguagesUrl> liveTranslationUrlProvider;
    private final Provider<LiveTranslationAPI.LocaleLanguage> localeLanguageProvider;
    private final ReferenceComponent.Module module;
    private final Provider<NetworkConnector> networkConnectorProvider;
    private final Provider<Reference.UseCase.LiveTranslation> useCaseSettingsProvider;
    private final Provider<LiveTranslationAPI.Role> userRoleProvider;

    private ReferenceComponent_Module_ProvideLiveTranslationApiFactory(ReferenceComponent.Module module, Provider<Reference.UseCase.LiveTranslation> provider, Provider<LiveTranslationAPI.Role> provider2, Provider<LiveTranslationAPI.LocaleLanguage> provider3, Provider<LiveTranslationAPI.LiveTranslationLanguagesUrl> provider4, Provider<NetworkConnector> provider5) {
        this.module = module;
        this.useCaseSettingsProvider = provider;
        this.userRoleProvider = provider2;
        this.localeLanguageProvider = provider3;
        this.liveTranslationUrlProvider = provider4;
        this.networkConnectorProvider = provider5;
    }

    public static ReferenceComponent_Module_ProvideLiveTranslationApiFactory create(ReferenceComponent.Module module, Provider<Reference.UseCase.LiveTranslation> provider, Provider<LiveTranslationAPI.Role> provider2, Provider<LiveTranslationAPI.LocaleLanguage> provider3, Provider<LiveTranslationAPI.LiveTranslationLanguagesUrl> provider4, Provider<NetworkConnector> provider5) {
        return new ReferenceComponent_Module_ProvideLiveTranslationApiFactory(module, provider, provider2, provider3, provider4, provider5);
    }

    public static LiveTranslationAPI provideLiveTranslationApi(ReferenceComponent.Module module, Reference.UseCase.LiveTranslation liveTranslation, LiveTranslationAPI.Role role, LiveTranslationAPI.LocaleLanguage localeLanguage, LiveTranslationAPI.LiveTranslationLanguagesUrl liveTranslationLanguagesUrl, NetworkConnector networkConnector) {
        LiveTranslationAPI liveTranslationAPIProvideLiveTranslationApi = module.provideLiveTranslationApi(liveTranslation, role, localeLanguage, liveTranslationLanguagesUrl, networkConnector);
        Preconditions.c(liveTranslationAPIProvideLiveTranslationApi);
        return liveTranslationAPIProvideLiveTranslationApi;
    }

    @Override // javax.inject.Provider
    public LiveTranslationAPI get() {
        return provideLiveTranslationApi(this.module, (Reference.UseCase.LiveTranslation) this.useCaseSettingsProvider.get(), (LiveTranslationAPI.Role) this.userRoleProvider.get(), (LiveTranslationAPI.LocaleLanguage) this.localeLanguageProvider.get(), (LiveTranslationAPI.LiveTranslationLanguagesUrl) this.liveTranslationUrlProvider.get(), (NetworkConnector) this.networkConnectorProvider.get());
    }
}
