package com.sightcall.advancedannotations;

import com.sightcall.advancedannotations.domain.parser.AdvancedAnnotationsParser;
import com.sightcall.advancedannotations.domain.parser.AdvancedAnnotationsParserImpl;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class AdvancedAnnotationsModule_ProvideParserOut$advancedannotations_releaseFactory implements Factory<AdvancedAnnotationsParser.Out> {
    private final AdvancedAnnotationsModule module;
    private final Provider<AdvancedAnnotationsParserImpl> parserProvider;

    private AdvancedAnnotationsModule_ProvideParserOut$advancedannotations_releaseFactory(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<AdvancedAnnotationsParserImpl> provider) {
        this.module = advancedAnnotationsModule;
        this.parserProvider = provider;
    }

    public static AdvancedAnnotationsModule_ProvideParserOut$advancedannotations_releaseFactory create(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<AdvancedAnnotationsParserImpl> provider) {
        return new AdvancedAnnotationsModule_ProvideParserOut$advancedannotations_releaseFactory(advancedAnnotationsModule, provider);
    }

    public static AdvancedAnnotationsParser.Out provideParserOut$advancedannotations_release(AdvancedAnnotationsModule advancedAnnotationsModule, AdvancedAnnotationsParserImpl advancedAnnotationsParserImpl) {
        AdvancedAnnotationsParser.Out outProvideParserOut$advancedannotations_release = advancedAnnotationsModule.provideParserOut$advancedannotations_release(advancedAnnotationsParserImpl);
        Preconditions.c(outProvideParserOut$advancedannotations_release);
        return outProvideParserOut$advancedannotations_release;
    }

    @Override // javax.inject.Provider
    public AdvancedAnnotationsParser.Out get() {
        return provideParserOut$advancedannotations_release(this.module, (AdvancedAnnotationsParserImpl) this.parserProvider.get());
    }
}
