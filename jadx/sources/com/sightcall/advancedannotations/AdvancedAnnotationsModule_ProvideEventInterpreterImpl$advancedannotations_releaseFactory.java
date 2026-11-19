package com.sightcall.advancedannotations;

import android.view.ViewGroup;
import com.sightcall.advancedannotations.domain.drawingmode.DrawingModeSelector;
import com.sightcall.advancedannotations.domain.event.EventInterpreterImpl;
import com.sightcall.advancedannotations.domain.settings.SettingsInteractor;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import io.reactivex.rxjava3.core.Scheduler;

/* JADX INFO: loaded from: classes3.dex */
public final class AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory implements Factory<EventInterpreterImpl> {
    private final Provider<DrawingModeSelector> drawingModeSelectorProvider;
    private final Provider<Scheduler> mainSchedulerProvider;
    private final AdvancedAnnotationsModule module;
    private final Provider<SettingsInteractor> settingsInteractorProvider;
    private final Provider<ViewGroup> viewGroupProvider;

    private AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<ViewGroup> provider, Provider<DrawingModeSelector> provider2, Provider<SettingsInteractor> provider3, Provider<Scheduler> provider4) {
        this.module = advancedAnnotationsModule;
        this.viewGroupProvider = provider;
        this.drawingModeSelectorProvider = provider2;
        this.settingsInteractorProvider = provider3;
        this.mainSchedulerProvider = provider4;
    }

    public static AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory create(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<ViewGroup> provider, Provider<DrawingModeSelector> provider2, Provider<SettingsInteractor> provider3, Provider<Scheduler> provider4) {
        return new AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory(advancedAnnotationsModule, provider, provider2, provider3, provider4);
    }

    public static EventInterpreterImpl provideEventInterpreterImpl$advancedannotations_release(AdvancedAnnotationsModule advancedAnnotationsModule, ViewGroup viewGroup, DrawingModeSelector drawingModeSelector, SettingsInteractor settingsInteractor, Scheduler scheduler) {
        EventInterpreterImpl eventInterpreterImplProvideEventInterpreterImpl$advancedannotations_release = advancedAnnotationsModule.provideEventInterpreterImpl$advancedannotations_release(viewGroup, drawingModeSelector, settingsInteractor, scheduler);
        Preconditions.c(eventInterpreterImplProvideEventInterpreterImpl$advancedannotations_release);
        return eventInterpreterImplProvideEventInterpreterImpl$advancedannotations_release;
    }

    @Override // javax.inject.Provider
    public EventInterpreterImpl get() {
        return provideEventInterpreterImpl$advancedannotations_release(this.module, (ViewGroup) this.viewGroupProvider.get(), (DrawingModeSelector) this.drawingModeSelectorProvider.get(), (SettingsInteractor) this.settingsInteractorProvider.get(), (Scheduler) this.mainSchedulerProvider.get());
    }
}
