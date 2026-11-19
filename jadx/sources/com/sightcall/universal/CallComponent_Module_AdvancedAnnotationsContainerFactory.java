package com.sightcall.universal;

import android.view.ViewGroup;
import com.sightcall.advancedannotations.AdvancedAnnotationsAPI;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class CallComponent_Module_AdvancedAnnotationsContainerFactory implements Factory<ViewGroup> {
    private final Provider<AdvancedAnnotationsAPI> advancedAnnotationsAPIProvider;
    private final CallComponent.Module module;

    private CallComponent_Module_AdvancedAnnotationsContainerFactory(CallComponent.Module module, Provider<AdvancedAnnotationsAPI> provider) {
        this.module = module;
        this.advancedAnnotationsAPIProvider = provider;
    }

    public static ViewGroup advancedAnnotationsContainer(CallComponent.Module module, AdvancedAnnotationsAPI advancedAnnotationsAPI) {
        ViewGroup viewGroupAdvancedAnnotationsContainer = module.advancedAnnotationsContainer(advancedAnnotationsAPI);
        Preconditions.c(viewGroupAdvancedAnnotationsContainer);
        return viewGroupAdvancedAnnotationsContainer;
    }

    public static CallComponent_Module_AdvancedAnnotationsContainerFactory create(CallComponent.Module module, Provider<AdvancedAnnotationsAPI> provider) {
        return new CallComponent_Module_AdvancedAnnotationsContainerFactory(module, provider);
    }

    @Override // javax.inject.Provider
    public ViewGroup get() {
        return advancedAnnotationsContainer(this.module, (AdvancedAnnotationsAPI) this.advancedAnnotationsAPIProvider.get());
    }
}
