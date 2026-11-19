package com.sightcall.advancedannotations;

import android.view.ViewGroup;
import com.sightcall.advancedannotations.domain.drawer.AnnotationDrawer;
import com.sightcall.advancedannotations.domain.drawingmode.DrawingModeSelector;
import com.sightcall.advancedannotations.domain.event.EventInterpreter;
import com.sightcall.advancedannotations.domain.parser.AdvancedAnnotationsParser;
import com.sightcall.advancedannotations.domain.settings.SettingsInteractor;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import io.reactivex.rxjava3.core.Scheduler;

/* JADX INFO: loaded from: classes3.dex */
public final class AdvancedAnnotationsModule_ProvideDrawer$advancedannotations_releaseFactory implements Factory<AnnotationDrawer> {
    private final Provider<DrawingModeSelector> drawingModeSelectorProvider;
    private final Provider<EventInterpreter.Out> eventInterpreterProvider;
    private final Provider<Scheduler> mainSchedulerProvider;
    private final AdvancedAnnotationsModule module;
    private final Provider<AdvancedAnnotationsParser.Out> parserProvider;
    private final Provider<SettingsInteractor> settingsInteractorProvider;
    private final Provider<ViewGroup> viewGroupProvider;

    private AdvancedAnnotationsModule_ProvideDrawer$advancedannotations_releaseFactory(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<ViewGroup> provider, Provider<SettingsInteractor> provider2, Provider<AdvancedAnnotationsParser.Out> provider3, Provider<EventInterpreter.Out> provider4, Provider<DrawingModeSelector> provider5, Provider<Scheduler> provider6) {
        this.module = advancedAnnotationsModule;
        this.viewGroupProvider = provider;
        this.settingsInteractorProvider = provider2;
        this.parserProvider = provider3;
        this.eventInterpreterProvider = provider4;
        this.drawingModeSelectorProvider = provider5;
        this.mainSchedulerProvider = provider6;
    }

    public static AdvancedAnnotationsModule_ProvideDrawer$advancedannotations_releaseFactory create(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<ViewGroup> provider, Provider<SettingsInteractor> provider2, Provider<AdvancedAnnotationsParser.Out> provider3, Provider<EventInterpreter.Out> provider4, Provider<DrawingModeSelector> provider5, Provider<Scheduler> provider6) {
        return new AdvancedAnnotationsModule_ProvideDrawer$advancedannotations_releaseFactory(advancedAnnotationsModule, provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static AnnotationDrawer provideDrawer$advancedannotations_release(AdvancedAnnotationsModule advancedAnnotationsModule, ViewGroup viewGroup, SettingsInteractor settingsInteractor, AdvancedAnnotationsParser.Out out, EventInterpreter.Out out2, DrawingModeSelector drawingModeSelector, Scheduler scheduler) {
        AnnotationDrawer annotationDrawerProvideDrawer$advancedannotations_release = advancedAnnotationsModule.provideDrawer$advancedannotations_release(viewGroup, settingsInteractor, out, out2, drawingModeSelector, scheduler);
        Preconditions.c(annotationDrawerProvideDrawer$advancedannotations_release);
        return annotationDrawerProvideDrawer$advancedannotations_release;
    }

    @Override // javax.inject.Provider
    public AnnotationDrawer get() {
        return provideDrawer$advancedannotations_release(this.module, (ViewGroup) this.viewGroupProvider.get(), (SettingsInteractor) this.settingsInteractorProvider.get(), (AdvancedAnnotationsParser.Out) this.parserProvider.get(), (EventInterpreter.Out) this.eventInterpreterProvider.get(), (DrawingModeSelector) this.drawingModeSelectorProvider.get(), (Scheduler) this.mainSchedulerProvider.get());
    }
}
