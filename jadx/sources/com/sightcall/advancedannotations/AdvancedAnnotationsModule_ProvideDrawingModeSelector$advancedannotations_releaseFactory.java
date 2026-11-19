package com.sightcall.advancedannotations;

import com.sightcall.advancedannotations.domain.drawingmode.DrawingModeSelector;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class AdvancedAnnotationsModule_ProvideDrawingModeSelector$advancedannotations_releaseFactory implements Factory<DrawingModeSelector> {
    private final Provider<AdvancedAnnotationsAPI.InitialSenderColor> colorProvider;
    private final AdvancedAnnotationsModule module;

    private AdvancedAnnotationsModule_ProvideDrawingModeSelector$advancedannotations_releaseFactory(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<AdvancedAnnotationsAPI.InitialSenderColor> provider) {
        this.module = advancedAnnotationsModule;
        this.colorProvider = provider;
    }

    public static AdvancedAnnotationsModule_ProvideDrawingModeSelector$advancedannotations_releaseFactory create(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<AdvancedAnnotationsAPI.InitialSenderColor> provider) {
        return new AdvancedAnnotationsModule_ProvideDrawingModeSelector$advancedannotations_releaseFactory(advancedAnnotationsModule, provider);
    }

    public static DrawingModeSelector provideDrawingModeSelector$advancedannotations_release(AdvancedAnnotationsModule advancedAnnotationsModule, AdvancedAnnotationsAPI.InitialSenderColor initialSenderColor) {
        DrawingModeSelector drawingModeSelectorProvideDrawingModeSelector$advancedannotations_release = advancedAnnotationsModule.provideDrawingModeSelector$advancedannotations_release(initialSenderColor);
        Preconditions.c(drawingModeSelectorProvideDrawingModeSelector$advancedannotations_release);
        return drawingModeSelectorProvideDrawingModeSelector$advancedannotations_release;
    }

    @Override // javax.inject.Provider
    public DrawingModeSelector get() {
        return provideDrawingModeSelector$advancedannotations_release(this.module, (AdvancedAnnotationsAPI.InitialSenderColor) this.colorProvider.get());
    }
}
