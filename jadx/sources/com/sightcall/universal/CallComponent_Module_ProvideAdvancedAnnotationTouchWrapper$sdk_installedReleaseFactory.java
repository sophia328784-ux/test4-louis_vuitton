package com.sightcall.universal;

import com.sightcall.advancedannotations.AdvancedAnnotationsAPI;
import com.sightcall.advancedannotations.AdvancedAnnotationsWrapper;
import com.sightcall.universal.model.Config;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class CallComponent_Module_ProvideAdvancedAnnotationTouchWrapper$sdk_installedReleaseFactory implements Factory<AdvancedAnnotationsWrapper> {
    private final Provider<AdvancedAnnotationsAPI> advancedAnnotationsAPIProvider;
    private final CallComponent.Module module;
    private final Provider<Config> sessionConfigProvider;

    private CallComponent_Module_ProvideAdvancedAnnotationTouchWrapper$sdk_installedReleaseFactory(CallComponent.Module module, Provider<AdvancedAnnotationsAPI> provider, Provider<Config> provider2) {
        this.module = module;
        this.advancedAnnotationsAPIProvider = provider;
        this.sessionConfigProvider = provider2;
    }

    public static CallComponent_Module_ProvideAdvancedAnnotationTouchWrapper$sdk_installedReleaseFactory create(CallComponent.Module module, Provider<AdvancedAnnotationsAPI> provider, Provider<Config> provider2) {
        return new CallComponent_Module_ProvideAdvancedAnnotationTouchWrapper$sdk_installedReleaseFactory(module, provider, provider2);
    }

    public static AdvancedAnnotationsWrapper provideAdvancedAnnotationTouchWrapper$sdk_installedRelease(CallComponent.Module module, AdvancedAnnotationsAPI advancedAnnotationsAPI, Config config) {
        AdvancedAnnotationsWrapper advancedAnnotationsWrapperProvideAdvancedAnnotationTouchWrapper$sdk_installedRelease = module.provideAdvancedAnnotationTouchWrapper$sdk_installedRelease(advancedAnnotationsAPI, config);
        Preconditions.c(advancedAnnotationsWrapperProvideAdvancedAnnotationTouchWrapper$sdk_installedRelease);
        return advancedAnnotationsWrapperProvideAdvancedAnnotationTouchWrapper$sdk_installedRelease;
    }

    @Override // javax.inject.Provider
    public AdvancedAnnotationsWrapper get() {
        return provideAdvancedAnnotationTouchWrapper$sdk_installedRelease(this.module, (AdvancedAnnotationsAPI) this.advancedAnnotationsAPIProvider.get(), (Config) this.sessionConfigProvider.get());
    }
}
