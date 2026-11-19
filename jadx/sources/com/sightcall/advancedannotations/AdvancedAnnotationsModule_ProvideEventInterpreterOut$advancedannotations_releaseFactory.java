package com.sightcall.advancedannotations;

import com.sightcall.advancedannotations.domain.event.EventInterpreter;
import com.sightcall.advancedannotations.domain.event.EventInterpreterImpl;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class AdvancedAnnotationsModule_ProvideEventInterpreterOut$advancedannotations_releaseFactory implements Factory<EventInterpreter.Out> {
    private final Provider<EventInterpreterImpl> interpreterProvider;
    private final AdvancedAnnotationsModule module;

    private AdvancedAnnotationsModule_ProvideEventInterpreterOut$advancedannotations_releaseFactory(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<EventInterpreterImpl> provider) {
        this.module = advancedAnnotationsModule;
        this.interpreterProvider = provider;
    }

    public static AdvancedAnnotationsModule_ProvideEventInterpreterOut$advancedannotations_releaseFactory create(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<EventInterpreterImpl> provider) {
        return new AdvancedAnnotationsModule_ProvideEventInterpreterOut$advancedannotations_releaseFactory(advancedAnnotationsModule, provider);
    }

    public static EventInterpreter.Out provideEventInterpreterOut$advancedannotations_release(AdvancedAnnotationsModule advancedAnnotationsModule, EventInterpreterImpl eventInterpreterImpl) {
        EventInterpreter.Out outProvideEventInterpreterOut$advancedannotations_release = advancedAnnotationsModule.provideEventInterpreterOut$advancedannotations_release(eventInterpreterImpl);
        Preconditions.c(outProvideEventInterpreterOut$advancedannotations_release);
        return outProvideEventInterpreterOut$advancedannotations_release;
    }

    @Override // javax.inject.Provider
    public EventInterpreter.Out get() {
        return provideEventInterpreterOut$advancedannotations_release(this.module, (EventInterpreterImpl) this.interpreterProvider.get());
    }
}
