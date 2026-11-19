package com.sightcall.advancedannotations;

import android.content.Context;
import com.sightcall.advancedannotations.data.API;
import com.sightcall.advancedannotations.domain.AdvancedAnnotationsRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class AdvancedAnnotationsModule_ProvideRepository$advancedannotations_releaseFactory implements Factory<AdvancedAnnotationsRepository> {
    private final Provider<API> apiProvider;
    private final Provider<Context> contextProvider;
    private final AdvancedAnnotationsModule module;
    private final Provider<AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl> urlProvider;

    private AdvancedAnnotationsModule_ProvideRepository$advancedannotations_releaseFactory(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<API> provider, Provider<AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl> provider2, Provider<Context> provider3) {
        this.module = advancedAnnotationsModule;
        this.apiProvider = provider;
        this.urlProvider = provider2;
        this.contextProvider = provider3;
    }

    public static AdvancedAnnotationsModule_ProvideRepository$advancedannotations_releaseFactory create(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<API> provider, Provider<AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl> provider2, Provider<Context> provider3) {
        return new AdvancedAnnotationsModule_ProvideRepository$advancedannotations_releaseFactory(advancedAnnotationsModule, provider, provider2, provider3);
    }

    public static AdvancedAnnotationsRepository provideRepository$advancedannotations_release(AdvancedAnnotationsModule advancedAnnotationsModule, API api, AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl advancedAnnotationsSettingsUrl, Context context) {
        AdvancedAnnotationsRepository advancedAnnotationsRepositoryProvideRepository$advancedannotations_release = advancedAnnotationsModule.provideRepository$advancedannotations_release(api, advancedAnnotationsSettingsUrl, context);
        Preconditions.c(advancedAnnotationsRepositoryProvideRepository$advancedannotations_release);
        return advancedAnnotationsRepositoryProvideRepository$advancedannotations_release;
    }

    @Override // javax.inject.Provider
    public AdvancedAnnotationsRepository get() {
        return provideRepository$advancedannotations_release(this.module, (API) this.apiProvider.get(), (AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl) this.urlProvider.get(), (Context) this.contextProvider.get());
    }
}
