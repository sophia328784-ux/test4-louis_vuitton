package com.sightcall.advancedannotations;

import android.content.Context;
import android.view.ViewGroup;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class AdvancedAnnotationsModule_ProvideContainer$advancedannotations_releaseFactory implements Factory<ViewGroup> {
    private final Provider<Context> contextProvider;
    private final AdvancedAnnotationsModule module;

    private AdvancedAnnotationsModule_ProvideContainer$advancedannotations_releaseFactory(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<Context> provider) {
        this.module = advancedAnnotationsModule;
        this.contextProvider = provider;
    }

    public static AdvancedAnnotationsModule_ProvideContainer$advancedannotations_releaseFactory create(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<Context> provider) {
        return new AdvancedAnnotationsModule_ProvideContainer$advancedannotations_releaseFactory(advancedAnnotationsModule, provider);
    }

    public static ViewGroup provideContainer$advancedannotations_release(AdvancedAnnotationsModule advancedAnnotationsModule, Context context) {
        ViewGroup viewGroupProvideContainer$advancedannotations_release = advancedAnnotationsModule.provideContainer$advancedannotations_release(context);
        Preconditions.c(viewGroupProvideContainer$advancedannotations_release);
        return viewGroupProvideContainer$advancedannotations_release;
    }

    @Override // javax.inject.Provider
    public ViewGroup get() {
        return provideContainer$advancedannotations_release(this.module, (Context) this.contextProvider.get());
    }
}
