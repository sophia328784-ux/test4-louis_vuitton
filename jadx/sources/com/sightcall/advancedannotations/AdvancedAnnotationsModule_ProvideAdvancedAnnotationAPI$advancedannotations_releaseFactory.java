package com.sightcall.advancedannotations;

import android.view.ViewGroup;
import com.sightcall.advancedannotations.domain.drawer.AnnotationDrawer;
import com.sightcall.advancedannotations.domain.drawingmode.DrawingModeSelector;
import com.sightcall.advancedannotations.domain.event.EventInterpreter;
import com.sightcall.advancedannotations.domain.parser.AdvancedAnnotationsParserImpl;
import com.sightcall.advancedannotations.domain.settings.SettingsInteractor;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory implements Factory<AdvancedAnnotationsAPI> {
    private final Provider<AnnotationDrawer> drawerProvider;
    private final Provider<DrawingModeSelector> drawingModeSelectorProvider;
    private final Provider<EventInterpreter> eventInterpreterProvider;
    private final Provider<SettingsInteractor> interactorProvider;
    private final Provider<AdvancedAnnotationsAPI.MessageSender> messageSenderProvider;
    private final AdvancedAnnotationsModule module;
    private final Provider<AdvancedAnnotationsParserImpl> parserProvider;
    private final Provider<AdvancedAnnotationsAPI.StateHandler> stateHandlerProvider;
    private final Provider<ViewGroup> viewGroupProvider;

    private AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<ViewGroup> provider, Provider<SettingsInteractor> provider2, Provider<DrawingModeSelector> provider3, Provider<AnnotationDrawer> provider4, Provider<EventInterpreter> provider5, Provider<AdvancedAnnotationsParserImpl> provider6, Provider<AdvancedAnnotationsAPI.MessageSender> provider7, Provider<AdvancedAnnotationsAPI.StateHandler> provider8) {
        this.module = advancedAnnotationsModule;
        this.viewGroupProvider = provider;
        this.interactorProvider = provider2;
        this.drawingModeSelectorProvider = provider3;
        this.drawerProvider = provider4;
        this.eventInterpreterProvider = provider5;
        this.parserProvider = provider6;
        this.messageSenderProvider = provider7;
        this.stateHandlerProvider = provider8;
    }

    public static AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory create(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<ViewGroup> provider, Provider<SettingsInteractor> provider2, Provider<DrawingModeSelector> provider3, Provider<AnnotationDrawer> provider4, Provider<EventInterpreter> provider5, Provider<AdvancedAnnotationsParserImpl> provider6, Provider<AdvancedAnnotationsAPI.MessageSender> provider7, Provider<AdvancedAnnotationsAPI.StateHandler> provider8) {
        return new AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory(advancedAnnotationsModule, provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8);
    }

    public static AdvancedAnnotationsAPI provideAdvancedAnnotationAPI$advancedannotations_release(AdvancedAnnotationsModule advancedAnnotationsModule, ViewGroup viewGroup, SettingsInteractor settingsInteractor, DrawingModeSelector drawingModeSelector, AnnotationDrawer annotationDrawer, EventInterpreter eventInterpreter, AdvancedAnnotationsParserImpl advancedAnnotationsParserImpl, AdvancedAnnotationsAPI.MessageSender messageSender, AdvancedAnnotationsAPI.StateHandler stateHandler) {
        AdvancedAnnotationsAPI advancedAnnotationsAPIProvideAdvancedAnnotationAPI$advancedannotations_release = advancedAnnotationsModule.provideAdvancedAnnotationAPI$advancedannotations_release(viewGroup, settingsInteractor, drawingModeSelector, annotationDrawer, eventInterpreter, advancedAnnotationsParserImpl, messageSender, stateHandler);
        Preconditions.c(advancedAnnotationsAPIProvideAdvancedAnnotationAPI$advancedannotations_release);
        return advancedAnnotationsAPIProvideAdvancedAnnotationAPI$advancedannotations_release;
    }

    @Override // javax.inject.Provider
    public AdvancedAnnotationsAPI get() {
        return provideAdvancedAnnotationAPI$advancedannotations_release(this.module, (ViewGroup) this.viewGroupProvider.get(), (SettingsInteractor) this.interactorProvider.get(), (DrawingModeSelector) this.drawingModeSelectorProvider.get(), (AnnotationDrawer) this.drawerProvider.get(), (EventInterpreter) this.eventInterpreterProvider.get(), (AdvancedAnnotationsParserImpl) this.parserProvider.get(), (AdvancedAnnotationsAPI.MessageSender) this.messageSenderProvider.get(), (AdvancedAnnotationsAPI.StateHandler) this.stateHandlerProvider.get());
    }
}
