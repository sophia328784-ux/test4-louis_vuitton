package com.sightcall.livetranslation;

import com.sightcall.livetranslation.data.API;
import com.sightcall.livetranslation.domain.LiveTranslationRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class LiveTranslationComponent_Module_ProvideRepositoryFactory implements Factory<LiveTranslationRepository> {
    private final Provider<LiveTranslationAPI.LiveTranslationLanguagesUrl> liveTranslationUrlProvider;
    private final LiveTranslationComponent.Module module;
    private final Provider<API> networkApiProvider;

    private LiveTranslationComponent_Module_ProvideRepositoryFactory(LiveTranslationComponent.Module module, Provider<API> provider, Provider<LiveTranslationAPI.LiveTranslationLanguagesUrl> provider2) {
        this.module = module;
        this.networkApiProvider = provider;
        this.liveTranslationUrlProvider = provider2;
    }

    public static LiveTranslationComponent_Module_ProvideRepositoryFactory create(LiveTranslationComponent.Module module, Provider<API> provider, Provider<LiveTranslationAPI.LiveTranslationLanguagesUrl> provider2) {
        return new LiveTranslationComponent_Module_ProvideRepositoryFactory(module, provider, provider2);
    }

    public static LiveTranslationRepository provideRepository(LiveTranslationComponent.Module module, API api, LiveTranslationAPI.LiveTranslationLanguagesUrl liveTranslationLanguagesUrl) {
        LiveTranslationRepository liveTranslationRepositoryProvideRepository = module.provideRepository(api, liveTranslationLanguagesUrl);
        Preconditions.c(liveTranslationRepositoryProvideRepository);
        return liveTranslationRepositoryProvideRepository;
    }

    @Override // javax.inject.Provider
    public LiveTranslationRepository get() {
        return provideRepository(this.module, (API) this.networkApiProvider.get(), (LiveTranslationAPI.LiveTranslationLanguagesUrl) this.liveTranslationUrlProvider.get());
    }
}
