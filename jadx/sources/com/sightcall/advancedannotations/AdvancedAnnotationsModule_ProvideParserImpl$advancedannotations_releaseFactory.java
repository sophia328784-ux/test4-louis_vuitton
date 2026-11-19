package com.sightcall.advancedannotations;

import com.sightcall.advancedannotations.domain.event.EventInterpreter;
import com.sightcall.advancedannotations.domain.parser.AdvancedAnnotationsParserImpl;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class AdvancedAnnotationsModule_ProvideParserImpl$advancedannotations_releaseFactory implements Factory<AdvancedAnnotationsParserImpl> {
    private final Provider<EventInterpreter.Out> eventInterpreterProvider;
    private final AdvancedAnnotationsModule module;
    private final Provider<AdvancedAnnotationsAPI.SenderIdGetter> senderIdGetterProvider;

    private AdvancedAnnotationsModule_ProvideParserImpl$advancedannotations_releaseFactory(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<EventInterpreter.Out> provider, Provider<AdvancedAnnotationsAPI.SenderIdGetter> provider2) {
        this.module = advancedAnnotationsModule;
        this.eventInterpreterProvider = provider;
        this.senderIdGetterProvider = provider2;
    }

    public static AdvancedAnnotationsModule_ProvideParserImpl$advancedannotations_releaseFactory create(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<EventInterpreter.Out> provider, Provider<AdvancedAnnotationsAPI.SenderIdGetter> provider2) {
        return new AdvancedAnnotationsModule_ProvideParserImpl$advancedannotations_releaseFactory(advancedAnnotationsModule, provider, provider2);
    }

    public static AdvancedAnnotationsParserImpl provideParserImpl$advancedannotations_release(AdvancedAnnotationsModule advancedAnnotationsModule, EventInterpreter.Out out, AdvancedAnnotationsAPI.SenderIdGetter senderIdGetter) {
        AdvancedAnnotationsParserImpl advancedAnnotationsParserImplProvideParserImpl$advancedannotations_release = advancedAnnotationsModule.provideParserImpl$advancedannotations_release(out, senderIdGetter);
        Preconditions.c(advancedAnnotationsParserImplProvideParserImpl$advancedannotations_release);
        return advancedAnnotationsParserImplProvideParserImpl$advancedannotations_release;
    }

    @Override // javax.inject.Provider
    public AdvancedAnnotationsParserImpl get() {
        return provideParserImpl$advancedannotations_release(this.module, (EventInterpreter.Out) this.eventInterpreterProvider.get(), (AdvancedAnnotationsAPI.SenderIdGetter) this.senderIdGetterProvider.get());
    }
}
