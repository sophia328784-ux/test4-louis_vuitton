package com.sightcall.advancedannotations;

import com.sightcall.advancedannotations.domain.event.EventInterpreter;
import com.sightcall.advancedannotations.domain.event.EventInterpreterImpl;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class AdvancedAnnotationsModule_ProvideEventInterpreter$advancedannotations_releaseFactory implements Factory<EventInterpreter> {
    private final Provider<EventInterpreterImpl> interpreterProvider;
    private final AdvancedAnnotationsModule module;

    private AdvancedAnnotationsModule_ProvideEventInterpreter$advancedannotations_releaseFactory(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<EventInterpreterImpl> provider) {
        this.module = advancedAnnotationsModule;
        this.interpreterProvider = provider;
    }

    public static AdvancedAnnotationsModule_ProvideEventInterpreter$advancedannotations_releaseFactory create(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<EventInterpreterImpl> provider) {
        return new AdvancedAnnotationsModule_ProvideEventInterpreter$advancedannotations_releaseFactory(advancedAnnotationsModule, provider);
    }

    public static EventInterpreter provideEventInterpreter$advancedannotations_release(AdvancedAnnotationsModule advancedAnnotationsModule, EventInterpreterImpl eventInterpreterImpl) {
        EventInterpreter eventInterpreterProvideEventInterpreter$advancedannotations_release = advancedAnnotationsModule.provideEventInterpreter$advancedannotations_release(eventInterpreterImpl);
        Preconditions.c(eventInterpreterProvideEventInterpreter$advancedannotations_release);
        return eventInterpreterProvideEventInterpreter$advancedannotations_release;
    }

    @Override // javax.inject.Provider
    public EventInterpreter get() {
        return provideEventInterpreter$advancedannotations_release(this.module, (EventInterpreterImpl) this.interpreterProvider.get());
    }
}
